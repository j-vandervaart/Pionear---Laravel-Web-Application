@extends('layouts.main_shell')

@section('content')
<div class="gradBody">
    <a href="{{ url("login") }}"><img class="loginLogo" src="{{ asset('images/logo_borderless.svg') }}" alt="Pionear Logo"></a>
    <h1 class="loginTitle">Pionear</h1>
    <div id="registerDiv">
        <form method="POST" action="{{ route('register') }}">
                        @csrf

            <div>
                <label class="regLabel" for="name">{{ __('Name') }}</label>

                <div>
                    <input class="regInput" id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                    @if ($errors->has('name'))
                        <span class="errors">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div>
                <label class="regLabel" for="email">{{ __('E-Mail Address') }}</label>

                <div>
                    <input class="regInput" id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                    @if ($errors->has('email'))
                        <span class="errors">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div>
                <label class="regLabel" for="password">{{ __('Password') }}</label>

                <div>
                    <input class="regInput" id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                    @if ($errors->has('password'))
                        <span class="errors">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div>
                <label class="regLabel" for="password-confirm">{{ __('Confirm Password') }}</label>

                <div>
                    <input class="regInput" id="password-confirm" type="password" name="password_confirmation" required>
                </div>
            </div>

            <div>
                <div>
                   <button class="mainSubmit" id="submitFix" type="submit">
                        {{ __('Register') }}
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
