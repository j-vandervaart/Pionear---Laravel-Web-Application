@extends('layouts.main_shell')

@section('content')
<div class="gradBody">
    <img class="loginLogoMain" src="{{ asset('images/logo_borderless.svg') }}" alt="Pionear Logo">
    <h1 class="loginTitleMain">Pionear</h1>
    <div class="loginDiv">
        <div>
            <div>
                <div>
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="formCont">
                            <div>
                                <div>
                                    @if ($errors->has('email'))
                                        <span class="errors">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                    <input class="loginInput" id="email" name="email" value="{{ old('email') }}" autofocus>
                                </div>
                            </div>

                            <div>
                                <div>
                                    <input class="loginInput" id="password" type="password" name="password">

                                    @if ($errors->has('password'))
                                        <span class="errors">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>


                            <button class="mainSubmit" type="submit">
                                        {{ __('Login') }}
                            </button>

                            <div>
                                <div>
                                    <div>
                                        <label id="remember">
                                            <input  type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div id="passDiv">
                                <div>
                                    <a id="passForgot" href="{{ route('password.request') }}">
                                        {{ __('Forgot details?') }}
                                    </a>
                                </div>
                            </div>

                            <!-- <div id="createPromptDiv"> -->
                                <a id="createPrompt" href="{{ route('register') }}">Don't have an account? <span>Create one</span></a>
                            <!-- </div> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
