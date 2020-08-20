@extends('frontend.templates.default')

@section('content')
<div class="container">
    <h3>Register</h3>
    <form action="{{ route('register') }}" method="POST" class="col s12">
        @csrf

        <div class="row">
            <div class="input-field col s12">
                <i class="material-icons prefix">person</i>
                <input type="text" name="name" class="@error('name') invalid @enderror" id="name"
                    value="{{ old('name') }}" autocomplete="name" autofocus>
                <label for="name">Name</label>
                @error('name')
                <span class="helper-text" data-error="{{ $message }}"></span>
                @enderror
            </div>
            <div class="input-field col s12">
                <i class="material-icons prefix">email</i>
                <input type="email" name="email" class="validate @error('email') invalid @enderror" id="email"
                    value="{{ old('email') }}">
                <label for="email">email</label>
                @error('email')
                <span class="helper-text" data-error="{{ $message }}"></span>
                @enderror
            </div>
            <div class="input-field col s12">
                <i class="material-icons prefix">lock</i>
                <input type="password" class="@error('password') invalid @enderror" name="password" id="password"
                    value="">
                <label for="password">Password</label>
                @error('password')
                <span class="helper-text" data-error="{{ $message }}"></span>
                @enderror
            </div>
            <div class="input-field col s12">
                <i class="material-icons prefix">lock</i>
                <input type="password" name="password_confirmation"
                    class="@error('password_confirmation') invalid @enderror" id="password" value="">
                <label for="password">Password Confirmation</label>
                @error('password_confirmation')
                <span class="helper-text" data-error="{{ $message }}"></span>
                @enderror
            </div>
            <div class="input-field right">
                <button type="submit" class="vawes-effect vawes-light btn red accent-1">Register</button>
            </div>
        </div>
    </form>
</div>
@endsection