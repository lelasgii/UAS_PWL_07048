@extends('layouts.app')

@section('content')
    <x-admin-navbar></x-admin-navbar>

    <div class="beranda mt-5">
        <div class="header d-flex align-items-center justify-content-between">
            <p class="fw-medium fs-2 ms-5 p-2">
                @yield('page-title', 'Dashboard Admin')
            </p>
            @if(View::hasSection('is-dashboard'))
@endif

        </div>

        <div class="body w-100 mt-4 d-flex" style="min-height:500px">
            <x-admin-sidebar />
            <div class="data-main w-100 bg-light rounded-3 p-4" style="min-height:500px">
                <div class="data-body rounded-3 p-4" style="background-color: #ffff; min-height:100%">
                    @yield('admin-contents')
                </div>
            </div>
        </div>
    </div>

    <x-footer />
@endsection
