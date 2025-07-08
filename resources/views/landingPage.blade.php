@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div id="landingContent" class="landingPage d-flex justify-content-center align-items-center">
            <h1 class="brandTitle fw-bold">Ruwang Kayu<span class="sansita">e</span></h1>
        </div>
    </div>

    <style>
        .fade-out {
            opacity: 0;
            transition: opacity 1s ease;
        }
    </style>

    <script>
        setTimeout(() => {
            const content = document.getElementById('landingContent');
            if (content) {
                content.classList.add('fade-out');

                setTimeout(() => {
                    window.location.href = "{{ route('login') }}";
                }, 1000);
            }
        }, 2000);
    </script>
@endsection