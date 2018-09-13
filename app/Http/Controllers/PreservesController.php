<?php

namespace Pionear\Http\Controllers;

use Illuminate\Http\Request;
use Pionear\Preserve;

class PreservesController extends Controller
{
    public function getOne($name, $id) {
    	$onePres = Preserve::where('id', $id)->with('ingredients')->first();
    	$back = $name;
    	return view('loggedInRoutes.preserveInd', [
    		'onePres' => $onePres,
    		'back' => $back
    	]); 
    	// return $onePres;
    }
}
