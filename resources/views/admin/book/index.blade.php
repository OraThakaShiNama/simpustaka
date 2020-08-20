@extends('admin.templates.app')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm">
                        <h3 class="card-title"><b>Data Buku</b></h3>
                    </div>
                </div>
                <a href="{{ route('admin.book.create') }}" class="btn btn-primary btn-sm mt-2">Tambah data</a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="bookDataTable" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>JUDUL</th>
                            <th>DESKRIPSI</th>
                            <th>JUMLAH BUKU</th>
                            <th>PENULIS</th>
                            <th>SAMPUL</th>
                            <th>AKSI</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>.....</td>
                            <td>.....</td>
                            <td>.....</td>
                            <td>.....</td>
                            <td>.....</td>
                            <td>.....</td>
                            <td>.....</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>JUDUL</th>
                            <th>DESKRIPSI</th>
                            <th>JUMLAH BUKU</th>
                            <th>PENULIS</th>
                            <th>SAMPUL</th>
                            <th>AKSI</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->

{{-- form delete --}}
<form action="" method="POST" id="deleteForm">
    @csrf
    @method("DELETE")

    <button type="submit" style="display: none">DELETE</button>
</form>
@endsection

@push('style')
<!-- DataTables -->
<link rel="stylesheet" href="{{ asset('assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
@endpush

@push('script')
<!-- DataTables -->
<script src="{{ asset('assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
{{-- bootstrap notify --}}
<script src="{{ asset('assets/plugins/bs-notify.min.js') }}"></script>
{{-- include alert notif --}}
@include('admin.templates.partials.alerts')
{{-- jquery tampil datatable --}}
<script>
    $(function () {
        $('#bookDataTable').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{{ route('admin.book.data') }}',
        columns: [
        { data: 'DT_RowIndex', orderable: false, searchable : false},
        { data: 'title'},
        { data: 'description'},
        { data: 'qty'},
        { data: 'author'},
        { data: 'cover'},
        { data: 'action'},
        ]
        });
        });
</script>
@endpush