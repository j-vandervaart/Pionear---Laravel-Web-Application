@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="gardens">
		<div class=shade>
		</div>
		<div id="gardenForm">
			<img id="exit" src="{{ asset('images/exit2.svg') }}" alt="Exit">
			<div>
                    {{ csrf_field() }} <!-- //grabs auto generated session token */ -->
                    <div id="gardenNameDiv">
                        <input type="text" name="gardenName" id="gardenName" value="{{ old('gardenName') }}" placeholder="Garden Name">
                    </div>
                    {{-- <div id="gardenIconDiv">
                    	<select name="gardenIcon" id="gardenIcon">
                    		<option value="pickle.svg">Pickle Jar</option>
                    		<option value="crate.svg">Harvest Crate</option>
                    		<option value="strawberry.svg">Strawberry</option>
                    		<option value="cucumber.svg">Cucumber</option>
                    		<option value="pepper.svg">Pepper</option>
                    	</select>
                    </div> --}}
                    <div id="handw">
                    	<div id="h">
                    		<label for="height">Height</label>
                    		<input id="height" name="height" type="text" value="{{ old('height') }}">
                    	</div>
                    	<div id="w">
                    		<label for="width">Width</label>
                    		<input id="width" name="width" type="text" value="{{ old('width') }}">
                    	</div>
                    </div>
                    <button class="{{ $gardens[0]->user_id }}" id="gardenSub">Create Garden</button>
                    <div id="errorId"></div>
            </div>
		</div>
		<div id="homeTitleDiv">
			<h1>My Gardens</h1>
			<div id="addGarden">
				<img id="add" src="{{ asset('images/add.svg') }}" alt="Add">
			</div>
		</div>
		<div id="gardenDiv">
			@foreach($gardens as $garden)
				{{-- <a href=""> --}}
				<div class="indGarden" id="{{ $garden->id }}">
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
					<div class="deleteForm">
						<button class="buttons deleteButton">Delete Garden</button>
						<button class="buttons archiveButton">Archive Garden</button>
					</div>
				</div>
				{{-- </a> --}}
			@endforeach
			<div class="verify">
				<h3>Garden's will be deleted permanently</h3>
				<p>Do you wish to delete?</p>
				<div id="buttonCont">
					<button class="yes">Yes</button>
					<button class="no">No</button>
				</div>
			</div>
		</div>
	</section>
@endsection
