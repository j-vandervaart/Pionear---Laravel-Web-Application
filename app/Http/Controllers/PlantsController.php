<?php

namespace Pionear\Http\Controllers;

use Illuminate\Http\Request;
use Pionear\Plant;

class PlantsController extends Controller
{
    public function getOne($name, $id) {
    	$onePlant = Plant::where('id', $id)->first();
    	$back = $name;
    	return view('loggedInRoutes.plantInd', [
    		'onePlant' => $onePlant,
    		'back' => $back
    	]);
    }
}
