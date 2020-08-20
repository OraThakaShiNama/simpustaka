@extends('admin.templates.app')

@section('content')
<div class="card text-center">
    <div class="card-header">
        Information Login User
    </div>
    <div class="card-body">
        <p class="card-text">{{ auth()->user()->name }}</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
    </div>
    <div class="card-footer text-muted">
        2 days ago
    </div>
</div>
@endsection