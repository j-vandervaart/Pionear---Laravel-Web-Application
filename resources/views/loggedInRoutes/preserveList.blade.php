@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="plantTypes">
		<div class="indHeader">
				<a href="{{ url('preserves') }}">
					<img src="{{ asset('images/back.svg') }}" alt="">
				</a>
				<h1>{{ $oneType->name }}</h1>
		</div>
		<div class="containerList">	
			@foreach($oneType->preserve as $two)
			<a href="{{ url('preserves/') }}/{{ $oneType->name }}/{{ $two->id }}">
				<div class="typeDiv">
					<h3 id="typePaddingFix">{{ $two->name }}</h3>
				</div>
			</a>
			@endforeach
		</div>
	</section>
@endsection