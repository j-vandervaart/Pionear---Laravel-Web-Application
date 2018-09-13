@extends('layouts.main_shell')

@section('content')
<header id="header">
	<p>Pionear</p>
	<div id="hamburg">
		<div id="itemOne" class="navItem"></div>
		<div id="itemTwo" class="navItem"></div>
		<div id="itemThree" class="navItem"></div>
	</div>
</header>
<nav class="mainNav">
		<div class="navList">
			<a href="{{ route('home') }}">
                {{ __('Home') }}
            </a>
            <img src="{{ asset('images/rake.svg') }}" alt="Rake">
		</div>


		<div class="navList">
			<a href="{{ url('plants') }}">
                {{ __('Plant Guide') }}
            </a>
            <img src="{{ asset('images/leaf.svg') }}" alt="Rake">
		</div>

		<div class="navList">
			<a href="{{ url('preserves') }}">
                {{ __('Preservation Guide') }}
            </a>
            <img src="{{ asset('images/pickles.svg') }}" alt="Rake">
		</div>

		<div class="navList">
			<a href="{{ url('archive') }}">
                {{ __('Archived Gardens') }}
            </a>
            <img src="{{ asset('images/sprout.svg') }}" alt="Rake">
		</div>

		<hr>

		<div class="navList">
            <a href="{{ route('logout') }}">
                {{ __('Logout') }}
            </a>
            <img src="{{ asset('images/rake.svg') }}" alt="Rake">
		</div>
</nav>

<div>
	<div id="load">
		
	</div>
</div>
@yield('logged_in')

@endsection