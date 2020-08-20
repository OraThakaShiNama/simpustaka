<!DOCTYPE html>
<html lang="en">

@include('frontend.templates.partials.head')

<body>
    {{-- navbar frontend --}}
    @include('frontend.templates.partials.navbar')
    {{-- container --}}
    <div class="container">
        {{-- isi content --}}
        @yield('content')

        {{-- container --}}
    </div>

    @include('frontend.templates.partials.scripts')
    @include('frontend.templates.partials.toast')
</body>

</html>