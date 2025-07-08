@extends('layouts.admin')

@section('content')
    <h2 class="text-xl font-bold mb-4">Komentar Pembeli</h2>

    <table class="table-auto w-full border">
        <thead class="bg-gray-100">
            <tr>
                <th class="px-4 py-2 border">Produk</th>
                <th class="px-4 py-2 border">Pembeli</th>
                <th class="px-4 py-2 border">Komentar</th>
                <th class="px-4 py-2 border">Tanggal</th>
            </tr>
        </thead>
        <tbody>
            @forelse($comments as $comment)
                <tr>
                    <td class="px-4 py-2 border">{{ $comment->feedback->product->name ?? '-' }}</td>
                    <td class="px-4 py-2 border">{{ $comment->user->name }}</td>
                    <td class="px-4 py-2 border">{{ $comment->comment }}</td>
                    <td class="px-4 py-2 border">{{ $comment->created_at->format('d M Y') }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="4" class="text-center py-4 text-gray-500">Belum ada komentar dari pembeli.</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <div class="mt-4">
        {{ $comments->links() }}
    </div>
@endsection