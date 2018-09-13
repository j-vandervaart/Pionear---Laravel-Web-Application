@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="plantTypes">
		<div class="indHeader">
				<a href="{{ URL::previous() }}">
					<img src="{{ asset('images/back.svg') }}" alt="">
				</a>
				<h1>{{ $onePlant->name }}</h1>
		</div>
		<div class="indPlantCont">
			<img src="{{ asset('images/') }}/{{ $onePlant->name }}.jpg" alt="">
			<p>{{ $onePlant->desc }}</p>
			<div class="indPlantFlex">
				<div>
					<h2>Planting</h2>
					<p>{{ $onePlant->planting }}</p>
				</div>
				<div>
					<h2>Care</h2>
					<p>{{ $onePlant->care }}</p>
				</div>
				<div>
					<h2>Harvesting</h2>
					<p>{{ $onePlant->harvest }}</p>
				</div>
			</div>
		</div>
	</section>
@endsection