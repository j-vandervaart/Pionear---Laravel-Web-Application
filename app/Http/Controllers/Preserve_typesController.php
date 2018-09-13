<?php

namespace Pionear\Http\Controllers;

use Illuminate\Http\Request;

use Pionear\Preserve_type;
use Pioner\Preserve;
use Pionear\Plant;

class Preserve_typesController extends Controller
{
    public function index() {
    	$types = Preserve_type::get();
    	// return $types;
    	return view('loggedInRoutes.preserveGuide', ['types' => $types]);
    }

    public function getAll($name) {
    	$oneType = Preserve_type::where('name', $name)->with('preserve')->first();
    	// return $oneType;
    	return view('loggedInRoutes.preserveList', ['oneType' => $oneType]);
    }
}
