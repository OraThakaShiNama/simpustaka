@extends('admin.templates.app')

@section('content')
<div class="row justify-content-center">
    <!-- left column -->
    <div class="col-md-6">
        <!-- jquery validation -->
        <div class="card card-dark">
            <div class="card-header">
                <h3 class="card-title">Edit Data Buku</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="{{ route('admin.book.update', $book) }}" enctype="multipart/form-data" method="post">
                @csrf
                @method("PUT")

                <div class="card-body">
                    <div class="form-group @error('title') has-error @enderror">
                        <label for="title">Judul</label>
                        <input type="text" name="title" class="form-control" id="title"
                            value="{{ $book->title ?? old('title') }}" placeholder=" Masukkan Judul Buku...">
                        @error('title')
                        <span class="help-block">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group @error('description') has-error @enderror">
                        <label for="description">Deskripsi</label>
                        <textarea name="description" id="" rows="3" class="form-control"
                            placeholder="Deskripsi singkat">{{ $book->description ?? old('description') }}</textarea>
                        @error('description')
                        <span class="help-block">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group @error('author_id') has-error @enderror">
                        <label for="author_id">Penulis</label>
                        <select name="author_id" id="author_id" class="form-control select2">
                            @foreach ($authors as $author)
                            <option value="{{ $author->id }}" @if ($author->id === $book->author_id)
                                selected
                                @endif
                                >
                                {{ $author->name }}
                            </option>
                            @endforeach
                        </select>
                        @error('author_id')
                        <span class="help-block">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="form-group @error('cover') has-error @enderror">
                        <label for="cover">Sampul</label>
                        <input type="file" class="form-control-file" name="cover" id="cover">
                        @error('cover')
                        <span class="help-block">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group @error('qty') has-error @enderror">
                        <label for="qty">Jumlah</label>
                        <input type="text" name="qty" class="form-control" id="qty"
                            value="{{ $book->qty ?? old('qty') }}" placeholder=" Masukkan Jumlah Buku...">
                        @error('qty')
                        <span class="help-block">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <!-- /.card-body -->
                <div class=" card-footer">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
        <!-- /.card -->
    </div>
    <!--/.col (left) -->
</div>
<!-- /.row -->
@endsection

@push('script')

@push('select2css')
<!-- Select2 -->
<link rel="stylesheet" href="{{ asset('assets/plugins/select2/css/select2.min.css') }}">
@endpush
<!-- Select2 -->
<script src="{{ asset('assets/plugins/select2/js/select2.full.min.js') }}"></script>
<script>
    $('.select2').select2();
</script>
@endpush