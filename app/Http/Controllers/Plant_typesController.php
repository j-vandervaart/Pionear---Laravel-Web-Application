<?php

namespace Pionear\Http\Controllers;

use Illuminate\Http\Request;

use Pionear\Plant_type;
use Pionear\Plant;

class Plant_typesController extends Controller
{
    public function index() {
    	$types = Plant_type::orderBy('name', 'DESC')->get();
    	// return $types;
    	return view('loggedInRoutes.plantGuide', ['types' => $types]);
    }

    public function getAll($name) {
    	$oneType = Plant_type::where('name', $name)->with('plant')->first();
    	// return $oneType;
    	return view('loggedInRoutes.plantList', ['oneType' => $oneType]);
        // return $oneType;
    }
}
