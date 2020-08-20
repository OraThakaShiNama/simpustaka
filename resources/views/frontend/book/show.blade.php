@extends('frontend.templates.default')

@section('content')
<h4>Detail buku</h4>
{{-- colomn card --}}
<div class="col s12 m6">
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
                <p><i class="material-icons">book</i> : {{ $book->qty }}</p>
            </div>
            <div class="card-action">
                <form action="{{ route('book.borrow', $book) }}" method="POST">
                    @csrf

                    <button type="submit" class="btn red accent-1 right waves-effect waves-light">Pimjam
                        Buku</button>
                </form>
            </div>
        </div>
        {{-- card horizontal --}}
    </div>
    {{-- end column --}}
</div>

<h5>Buku lainnya dari penulis {{ $book->author->name }}...</h5>

{{-- row card --}}
<div class="row">
    @foreach ($book->author->books->shuffle()->take(4) as $book)
    @include('frontend.templates.components.card-books', ['book' => $book])
    @endforeach
    {{-- row --}}
</div>
@endsection