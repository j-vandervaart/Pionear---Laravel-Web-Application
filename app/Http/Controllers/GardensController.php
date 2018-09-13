<?php

namespace Pionear\Http\Controllers;

use Illuminate\Http\Request;

use Pionear\Garden;
use Pionear\Square;
use Pionear\Plant;
use Pionear\Plant_type;
use Illuminate\Support\Facades\Auth;

class GardensController extends Controller
{
    private $currentGarden;

    public function index() {
        $id = auth()->user()->id;
    	$gardens = Garden::where([
            ['user_id', $id],
            ['archive', 1]
        ])->orderBy('created_at', 'DESC')->get();
    	return view('loggedInRoutes.home', ['gardens' => $gardens]);
        // return $gardens[0]->user_id;
    }

    public function makeGard(Request $request) {
        $data = $request->json()->all();
        $name = htmlspecialchars($data['name']);
        $namelen = strlen($name);
        $height = htmlspecialchars($data['height']);
        $height = intval($height);
        $width = htmlspecialchars($data['width']);
        $width =intval($width);
        $user_id = $data['user_id'];

        if(!empty($name) && isset($height) && isset($width)) {
            if($namelen >= 28) {
                return "Garden name must be less than 28 characters";
            }
            if($height < 1) {
                return "Garden height and width must be a number greater than 0 ft";
            }else if($height > 50) {
                return "Garden height and width must be a number greater than 0 ft";
            }else if($width < 1) {
                return "Garden height and width must be a number greater than 0 ft";
            }else if($width > 50) {
                return "Garden height and width must be a number greater than 0 ft";
            }else {
                $garden = new Garden([
                    'name' => $name,
                    'h_size' => $height,
                    'w_size' => $width,
                    'archive' => 1,
                    'user_id' => $user_id
                ]);
                $garden->save();
                return 'All good';
            }
        }else {
            return "Please fill in all fields";
        }
    }

    public function displayGard($id) {
        $oneGard = Garden::find($id);
        $currentGarden = $id;
        $plants = Plant_type::with('plant')->get();
        return view('loggedInRoutes.displayGard', [
            'oneGard' => $oneGard,
            'plants' => $plants
        ]);
    }

    public function ajaxReq() {
        $param = $_GET['id'];
        $resArr = array();
        $res = Garden::where('id', $param)->get();
        $res2 = Square::where('garden_id', $param)->with('plants2')->orderBy('htmlId', 'ASC')->get();
        array_push($resArr, $res, $res2);
        return $resArr;
    }

    public function saveGard(Request $request, $id) { 
        Square::where('garden_id', $id)->delete();

        $data = $request->json()->all();
        // return $data;
        $a = array();
        // $cat = Plant::where('name', $data['values'][0]['name'])->get();
        // return $cat[0]['id'];
        for($x = 0; $x < count($data['values']); $x++) {
            $square = [
                'plant_id' => $data['values'][$x]['plant_id'],
                'htmlId' => $data['values'][$x]['htmlId'],
                'name' => $data['values'][$x]['name'],
                'garden_id' => $data['values'][$x]['garden_id']
            ];
            // $square->save();
            array_push($a, $square);
        }
        Square::insert($a);

        // for($x = 0; $x < count($data['values']); $x++) {
        //     $dontDeleteThisRow = Square::where([
        //         ['garden_id', $data['values'][0]['garden_id']],
        //         ['htmlId', $data['values'][$x]['htmlId']]
        //     ])->first();

        //     $cats = Square::where([
        //         ['garden_id', $data['values'][0]['garden_id']],
        //         ['htmlId', $dontDeleteThisRow->htmlId],
        //         ['id', '!=', $dontDeleteThisRow->id]
        //     ])->delete();
        // }
        return 'Saved';
    }

    public function deleteGard($id) {
        $deletedGard = Garden::find($id);
        $deletedGard->delete();
        $deleteSquares = Square::where('garden_id', $id);
        $deleteSquares->delete();
        return back();   
    }

    public function listGard($id) {
        $list = Garden::find($id);
        return view('loggedInRoutes.listView', ['list' => $list]);
    }

    public function ajaxList($id) {
        $list = Square::where('garden_id', $id)->with('plants2')->orderBy('htmlId', 'ASC')->get();
        return $list;
    }

    public function test() {
        $res = Square::where('garden_id', 20)->with('plants2')->get();
        return $res;
    }

    public function ajaxRepop() {
        $test = $_GET['id'];
        $res = Garden::where('id', $test)->with('squares')->get();
        return $res;
    }

    public function updateArc($id) {
        $update = Garden::find($id);
        $update->archive = '2';
        $update->save();
        return back();
    }

    public function archiveGard() {
        $id = auth()->user()->id;
        $gardens = Garden::where([
            ['user_id', $id],
            ['archive', 2]
        ])->get();
        return view('loggedInRoutes.archive', ['gardens' => $gardens]);
        // return $gardens;
    }

    public function restoreGard($id) {
        $restore = Garden::find($id);
        $restore->archive = "1";
        $restore->save();
        return back();
    }
}
