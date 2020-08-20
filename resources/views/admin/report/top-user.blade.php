@extends('admin.templates.app')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm">
                        <h3 class="card-title"><b>User teraktif</b></h3>
                    </div>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="bookDataTable" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>NAMA</th>
                            <th>EMAIL</th>
                            <th>JUMLAH PEMINJAMAN</th>
                            <th>JOIN</th>
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

                        @foreach ($users as $user)
                        <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>{{ $user->borrow_count }}</td>
                            <td>{{ $user->created_at->diffForHumans() }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>NO</th>
                            <th>NAMA</th>
                            <th>EMAIL</th>
                            <th>JUMLAH PEMINJAMAN</th>
                            <th>JOIN</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            {{ $users->links() }}
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->
@endsection