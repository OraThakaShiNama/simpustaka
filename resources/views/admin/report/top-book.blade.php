@extends('admin.templates.app')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm">
                        <h3 class="card-title"><b>Top Koleksi Buku</b></h3>
                    </div>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="bookDataTable" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>JUDUL</th>
                            <th>DESKRIPSI</th>
                            <th>JUMLAH BUKU</th>
                            <th>TOTAL DIPINJAM</th>
                            <th>PENULIS</th>
                            <th>SAMPUL</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                        $page = 1;
                        if(request()->has('page')){
                        $page = request('page');
                        }
                        $no = (env('PAGINATION_ADMIN') * $page ) - (env('PAGINATION_ADMIN')-1);
                        @endphp
                        @foreach ($books as $book)
                        <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $book->title }}</td>
                            <td>{{ $book->description }}</td>
                            <td>{{ $book->qty }}</td>
                            <td>{{ $book->borrowed_count }}</td>
                            <td>{{ $book->author->name }}</td>
                            <td>
                                <img src="{{ $book->getCover() }}" height="150px" alt="{{ $book->title }}">
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>NO</th>
                            <th>JUDUL</th>
                            <th>DESKRIPSI</th>
                            <th>JUMLAH BUKU</th>
                            <th>TOTAL DIPINJAM</th>
                            <th>PENULIS</th>
                            <th>SAMPUL</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            {{ $books->links() }}
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->
@endsection