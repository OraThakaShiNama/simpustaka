@extends('frontend.templates.default')

@section('content')
<div class="row">
    <h2>Buku yang sedang di pinjam</h2>

    @foreach ($books as $book)
    {{-- card horizontal --}}
    <div class="card horizontal hoverable">
        {{-- <div class="card-image"> --}}
        <img src="{{ $book->getCover() }}">
        {{-- </div> --}}
        <div class="card-stacked">
            <div class="card-content">
                <h3 class="red-text accent-2">
                    {{ $book->title }}
                </h3>
                <blockquote>
                    <p>{{ $book->description }}</p>
                </blockquote>
                <p><i class="material-icons">person</i> : {{ $book->author->name }}</p>
            </div>
        </div>
        {{-- card horizontal --}}
    </div>
    @endforeach
</div>
@endsection