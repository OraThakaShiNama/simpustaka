@extends('admin.templates.app')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm">
                        <h3 class="card-title"><b>Data Peminjam Buku</b></h3>
                    </div>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="peminjamDataTable" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>JUDUL BUKU</th>
                            <th>AKSI</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>.....</td>
                            <td>.....</td>
                            <td>.....</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
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
<form action="" method="POST" id="returnForm">
    @csrf
    @method("PUT")

    <button type="submit" style="display: none">return</button>
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
        $('#peminjamDataTable').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{{ route('admin.borrow.data') }}',
        columns: [
        { data: 'DT_RowIndex', orderable: false, searchable : false},
        { data: 'user'},
        { data: 'book_title'},
        { data: 'action'}
        ]
        });
        });
</script>
@endpush