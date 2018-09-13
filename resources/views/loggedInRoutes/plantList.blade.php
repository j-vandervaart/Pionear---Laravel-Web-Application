@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="plantTypes">
		<div class="indHeader">
				<a href="{{ url('plants') }}">
					<img src="{{ asset('images/back.svg') }}" alt="">
				</a>
				<h1>{{ $oneType->name }}</h1>
		</div>
		<div class="containerList">	
			@foreach($oneType->plant as $two)
				<a href="{{ url('plants/') }}/{{ $oneType->name }}/{{ $two->id }}">
					<div class="typeDiv">
						<div class="indOne">
							<img src='{{ asset("images/".$two->name) }}.svg' alt="{{ $two->name }}">
						</div>
						<h3>{{ $two->name }}</h3>
					</div>
				</a>
			@endforeach
		</div>
	</section>
@endsection