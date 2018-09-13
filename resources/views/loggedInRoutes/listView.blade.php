@extends('loggedInRoutes.logged_in_shell')

@section('logged_in')
	<section id="listView">
		<div id="gardenHeader">
			<h3>{{ $list->name }}</h3>
			<div id="headOne">
				<a href="{{ url('garden') }}/{{ $list->id }}"><img src="{{ asset('images/gridview.svg') }}"></a>
			</div>
		</div>
		<div id="listCont">
			<div id="listHeader">
				<h4>Garden List</h4>
				<hr>
			</div>
			<table id="list">
				<tr>
					<th>Plant</th>
					<th>Number of Plants</th>
					<th><span>~</span> Yield</th>
				</tr>
			</table>
		</div>
	</section>
@endsection