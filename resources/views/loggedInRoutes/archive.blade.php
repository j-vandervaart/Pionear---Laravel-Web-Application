@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="gardens">
		<div class=shade>
		</div>
		<div id="homeTitleDiv">
			<h1>Archived Gardens</h1>
			{{-- <div id="addGarden">
				<img id="add" src="{{ asset('images/add.svg') }}" alt="Add">
			</div>
 --}}		</div>
		<div id="gardenDiv">
			@foreach($gardens as $garden)
					<div class="arcGard" id="{{ $garden->id }}">
						{{-- <div class="indOne">
							<img src="{{ asset('images/pickles.svg') }}" alt="">
						</div> --}}
						<div class="indTwo">
							<h1>{{ $garden->name }}</h1>
							<p>{{ $garden->h_size }} ft x {{ $garden->w_size }} ft</p>
						</div>
						<div class="indThree">
							<p>Planted on:</p>
							<p id="indDate">{{ $garden->created_at or "2018-04-02 19:51:13"}}</p>
						</div>
						<img class="deleteGard" src="{{ asset('images/deleteGard.svg') }}" alt="">
						<div class="deleteForm" id="restoreFix">
							<button class="buttons restoreButton" id="restoreButtonFix">Restore</button>
						</div>
					</div>

			@endforeach
		</div>
	</section>
@endsection