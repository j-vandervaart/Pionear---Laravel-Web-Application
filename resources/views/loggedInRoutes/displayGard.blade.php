@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="oneGarden">
		<div id=shade2>
		</div>
		<div id="gardenHeader">
			<h3>{{ $oneGard->name }}</h3>
			<div id="headOne">
				<a href="{{ url('garden') }}/{{ $oneGard->id }}/listview"><img src="{{ asset('images/listview.svg') }}"></a>
			</div>
			<div id="headTwo">
				<button id="submitIt">Save</button>
			</div>
		</div>
		<div id="scrollWork">
			<div id="gardenPlot">		
			</div>
		</div>
		<div id="plusMinus">
			<img src="{{ asset('images/minus.svg') }}" id="minus">
			<input type="range" min="9" max="75" class="slider">
			<img src="{{ asset('images/plus.svg') }}" id="plus">
			
		</div>
		<div class="options">
			<h2>Plant Types</h2>
			<p id="optionsPrompt">Choose a plant to place in this square.</p>
			<hr>
			<div id="optionsContainer">
				<img id="close" src="{{ asset('images/exit.svg') }}" alt="Exit">
					<div>
						<div class="veg">
							<div id="removePlant"></div>
							<p class="vegTitle">Remove Plant</p>
						</div>
					</div>
				@foreach($plants as $plant1)
					<div>
						<h4>{{ $plant1->name }}</h4>
						<div class="indOptionsCont">
							@foreach($plant1->plant as $p)
								<div class="veg" id="{{ $p->id }}">
									<div class="eventFix"></div>
									<img src="{{ asset('images') }}/{{ $p->name }}.svg" alt="">
									<p class="vegTitle">{{ $p->name }}</p>
								</div>
							@endforeach
						</div>
					</div>
				@endforeach
			</div>
		</div>	
		{{ csrf_field() }}
		<div id="feedback"></div>
	</section>
@endsection

