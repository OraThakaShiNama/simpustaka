{{-- colomn card --}}
<div class="col s12 m6">
    {{-- card horizontal --}}
    <div class="card horizontal hoverable">
        <div class="card-image">
            <img src="{{ $book->getCover() }}" height="200px">
        </div>
        <div class="card-stacked">
            <div class="card-content">
                <h5>
                    <a href="{{ route('book.show', $book) }}">{{ Str::limit($book->title, 20) }}</a>
                </h5>
                <p>{{ Str::limit($book->description, 65) }}</p>
            </div>
            <div class="card-action">
                <form action="{{ route('book.borrow', $book) }}" method="POST">
                    @csrf

                    <button type="submit" class="btn gren accent-1 right waves-effect waves-light">Pimjam
                        Buku</button>
                </form>
            </div>
        </div>
        {{-- card horizontal --}}
    </div>
    {{-- end column --}}
</div>