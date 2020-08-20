@extends('frontend.templates.default')

@section('content')
<h3>Koleksi Buku</h3>
<blockquote>
    <p class="text-flow ">Koleksi buku yang bisa di pinjam & baca</p>
</blockquote>
{{-- row card --}}
<div class="row">
    @foreach ($books as $book)
    @include('frontend.templates.components.card-books', ['book' => $book])
    @endforeach
    {{-- row --}}
</div>
{{-- pagination --}}
{{ $books->links('vendor.pagination.materialize') }}
{{-- end pagination --}}
@endsection