@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="plantTypes">
		<div class="indHeader">
				<a href="{{ url('preserves') }}/{{$back}}">
					<img src="{{ asset('images/back.svg') }}" alt="">
				</a>
				<h1>{{ $onePres->name }}</h1>
		</div>
		<div class="indPlantCont">
			<img src="{{ asset('images/') }}/{{ $onePres->img }}" alt="">
			<p>{{ $onePres->desc }}</p>
			<h2>Ingredients</h2>
			@foreach($onePres->ingredients as $one)
				<p>- {{ $one->name }}</p>
			@endforeach
			<h2>Directions</h2>
			<div class="directions">
				@foreach($onePres->directions as $key=>$one)
					<p><span>{{$key+1}}.</span> {{ $one->name }}</p>
				@endforeach
			</div>
		</div>
	</section>
@endsection