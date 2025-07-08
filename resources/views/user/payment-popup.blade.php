@extends('layouts.app')

@section('content')
    <script src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="{{ env('MIDTRANS_CLIENT_KEY') }}"></script>

    <script>
        window.onload = function() {
            snap.pay('{{ $snapToken }}', {
                onSuccess: function(result) {
                    console.log(result);
                    window.location.href = "{{ route('checkout.success') }}";
                },
                onPending: function(result) {
                    console.log(result);
                    alert('Menunggu pembayaran!');
                },
                onError: function(result) {
                    console.log(result);
                    alert('Pembayaran gagal!');
                }
            });
        };
    </script>
@endsection