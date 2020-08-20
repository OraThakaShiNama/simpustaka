@extends('admin.templates.app')

@section('content')
<div class="row justify-content-center">
    <!-- left column -->
    <div class="col-md-6">
        <!-- jquery validation -->
        <div class="card card-dark">
            <div class="card-header">
                <h3 class="card-title">Tambah Data Penulis</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="{{ route('admin.author.store') }}" enctype="multipart/form-data" method="POST">
                @csrf

                <div class="card-body">
                    <div class="form-group @error('name') has-error @enderror">
                        <label for="name">Name</label>
                        <input type="text" name="name" class="form-control" id="name" value="{{ old('name') }}"
                            placeholder=" Enter name...">
                        @error('name')
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