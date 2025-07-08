<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Http;
use Midtrans\Config;
use Midtrans\Snap;

class CheckoutController extends Controller
{
    public function index()
    {
        $user = Auth::user();

        if (!$user) {
            return redirect()->route('login')->with('error', 'Silakan login terlebih dahulu.');
        }

        $cartItems = Cart::with('product')
            ->where('user_id', $user->id)
            ->get();

        $apiKey = '92fe18cb91d81b605393db36e45a5ed7ef24cf0cd557ba1b9d8552c1e27a4907';

        $provinces = Cache::remember('provinces', now()->addHours(6), function () use ($apiKey) {
            $response = Http::get('https://api.binderbyte.com/wilayah/provinsi', [
                'api_key' => $apiKey
            ]);

            return $response->successful() ? $response->json()['value'] : [];
        });

        $couriers = Cache::remember('popular_couriers', now()->addHours(6), function () use ($apiKey) {
            $response = Http::get('https://api.binderbyte.com/v1/list_courier', [
                'api_key' => $apiKey
            ]);

            if ($response->successful()) {
                $popularCodes = ['jne', 'jnt', 'sicepat', 'anteraja', 'tiki', 'pos'];
                return array_filter($response->json(), fn($c) => in_array($c['code'], $popularCodes));
            }

            return [];
        });

        $totalProduk = $cartItems->sum(fn($item) => $item->price * $item->quantity);
        $biayaKemasan = 20000;
        $biayaPengiriman = 25000;
        $biayaLayanan = 5000;
        $diskon = 20000;

        $totalHarga = $totalProduk + $biayaKemasan + $biayaPengiriman + $biayaLayanan - $diskon;

        // Konfigurasi Midtrans
        Config::$serverKey = config('midtrans.server_key');
        Config::$isProduction = config('midtrans.is_production');
        Config::$isSanitized = config('midtrans.is_sanitized');
        Config::$is3ds = config('midtrans.is_3ds');

        $params = [
            'transaction_details' => [
                'order_id' => 'RWK-' . rand(100000, 999999),
                'gross_amount' => $totalHarga,
            ],
            'customer_details' => [
                'first_name' => $user->name,
                'email' => $user->email,
            ]
        ];

        $snapToken = Snap::getSnapToken($params);

        return view('user.checkout', compact('cartItems', 'provinces', 'couriers', 'totalHarga', 'snapToken'));
    }

    public function getKabupaten(Request $request)
    {
        $apiKey = '92fe18cb91d81b605393db36e45a5ed7ef24cf0cd557ba1b9d8552c1e27a4907';

        if (!$request->has('provinsi_id')) {
            return response()->json(['error' => 'provinsi_id tidak dikirim'], 400);
        }

        $response = Http::get('https://api.binderbyte.com/wilayah/kabupaten', [
            'api_key' => $apiKey,
            'id_provinsi' => $request->provinsi_id
        ]);

        return $response->successful()
            ? response()->json($response->json()['value'])
            : response()->json(['error' => 'Gagal mengambil kabupaten'], 500);
    }

    public function getKecamatan(Request $request)
    {
        $apiKey = '92fe18cb91d81b605393db36e45a5ed7ef24cf0cd557ba1b9d8552c1e27a4907';

        $response = Http::get('https://api.binderbyte.com/wilayah/kecamatan', [
            'api_key' => $apiKey,
            'id_kabupaten' => $request->kabupaten_id,
        ]);

        return $response->successful()
            ? response()->json($response->json()['value'])
            : response()->json(['error' => 'Gagal mengambil kecamatan'], 500);
    }

    public function getKelurahan(Request $request)
    {
        $apiKey = '92fe18cb91d81b605393db36e45a5ed7ef24cf0cd557ba1b9d8552c1e27a4907';

        $response = Http::get('https://api.binderbyte.com/wilayah/kelurahan', [
            'api_key' => $apiKey,
            'id_kecamatan' => $request->kecamatan_id,
        ]);

        return $response->successful()
            ? response()->json($response->json()['value'])
            : response()->json(['error' => 'Gagal mengambil kelurahan'], 500);
    }

    public function store(Request $request)
    {
        $user = Auth::user();

        $customerName = $request->input('person_name');
        $email = $user->email;
        $totalHarga = (int) $request->input('total_price');
        $products = $request->input('products');
        $orderId = 'RWK-' . rand(100000, 999999);

        $order = Order::create([
            'order_id'        => $orderId,
            'user_id'         => $user->id,
            'person_name'     => $customerName,
            'phone'           => $request->phone,
            'address'         => $request->address,
            'province'        => $request->province,
            'city'            => $request->city,
            'subdistrict'     => $request->subdistrict,
            'village'         => $request->village,
            'postal_code'     => $request->postal_code,
            'delivery_method' => $request->pengiriman,
            'courier'         => $request->courier,
            'payment_method'  => 'midtrans',
            'total_price'     => $totalHarga,
            'status'          => 'paid',
        ]);

        foreach ($products as $product) {
            OrderDetail::create([
                'order_id'     => $order->id,
                'product_id'   => $product['product_id'],
                'product_name' => $product['name'],
                'quantity'     => $product['quantity'],
                'price'        => $product['price'],
                'size'         => $product['size'],
            ]);
        }

        $itemDetails = collect($products)->map(function ($product) {
            return [
                'id' => $product['product_id'],
                'price' => (int) $product['price'],
                'quantity' => (int) $product['quantity'],
                'name' => $product['name'] . ' (' . $product['size'] . ')',
            ];
        })->toArray();

        $itemDetails[] = ['id' => 'biaya_kemasan', 'price' => 20000, 'quantity' => 1, 'name' => 'Biaya Kemasan'];
        $itemDetails[] = ['id' => 'biaya_pengiriman', 'price' => 25000, 'quantity' => 1, 'name' => 'Biaya Pengiriman'];
        $itemDetails[] = ['id' => 'biaya_layanan', 'price' => 5000, 'quantity' => 1, 'name' => 'Biaya Layanan'];
        $itemDetails[] = ['id' => 'diskon', 'price' => -20000, 'quantity' => 1, 'name' => 'Diskon'];

        // Konfigurasi Midtrans
        Config::$serverKey = config('midtrans.server_key');
        Config::$isProduction = config('midtrans.is_production');
        Config::$isSanitized = config('midtrans.is_sanitized');
        Config::$is3ds = config('midtrans.is_3ds');

        $params = [
            'transaction_details' => [
                'order_id' => $orderId,
                'gross_amount' => $totalHarga,
            ],
            'item_details' => $itemDetails,
            'customer_details' => [
                'first_name' => $customerName ?? 'Customer',
                'email' => $email,
                'billing_address' => [
                    'address' => $request->address ?? '-',
                    'city' => $request->city ?? '-',
                    'postal_code' => $request->postal_code ?? '-',
                ],
            ],
            'callbacks' => [
                'finish' => route('checkout.success'),
                'unfinish' => route('checkout.cancel'),
                'error' => route('checkout.failed'),
            ],
            'notification_url' => 'https://984e-118-96-101-192.ngrok-free.app/midtrans/callback',
        ];

        $snapToken = Snap::getSnapToken($params);

        Cart::where('user_id', $user->id)->delete();

        return view('user.payment-popup', compact('snapToken'));
    }
}