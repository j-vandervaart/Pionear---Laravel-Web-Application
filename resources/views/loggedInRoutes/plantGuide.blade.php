@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="plantTypes">
		<div class="container">
			<h1 class="guideTitle">Plant Guide</h1>
			<div class="typeCont">
				@foreach($types as $type)
				<a href="{{ url('plants/') }}/{{ $type->name }}">
					<div class="typeDiv">
						<div class="indOne">
							<img src='{{ asset("images/".$type->img) }}' alt="{{ $type->name }}">
						</div>
						<h3>{{ $type->name }}</h3>
					</div>
				</a>
				@endforeach
			</div>
		</div>
	</section>
@endsection