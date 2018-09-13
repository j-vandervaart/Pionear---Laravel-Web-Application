<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	if(Auth::check()){
		return Redirect::to('home');
	}
    return view('auth.login');
});

Auth::routes();

Route::group(['middleware' => ['auth']], function () {
    //

Route::get('home', 'GardensController@index')->name('home');

Route::get('garden/req', 'GardensController@ajaxReq');
Route::get('garden/repop', 'GardensController@ajaxRepop');
Route::get('archive', 'GardensController@archiveGard');
Route::get('garden/update/{id}', 'GardensController@updateArc');
Route::get('garden/{id}', 'GardensController@displayGard');
Route::post('garden/test/save/{id}', 'GardensController@saveGard');
Route::post('home/newgarden', 'GardensController@makeGard');

Route::get('garden/delete/{id}', 'GardensController@deleteGard');
Route::get('garden/restore/{id}', 'GardensController@restoreGard');
Route::get('garden/{id}/listview', 'GardensController@listGard');
Route::get('garden/{id}/listview/ajaxlist', 'GardensController@ajaxList');

Route::get('api/test', 'GardensController@test');

Route::get('plants', 'Plant_typesController@index');
Route::get('plants/{name}', 'Plant_typesController@getAll');

Route::get('plants/{name}/{id}', 'PlantsController@getOne');

Route::get('preserves', 'Preserve_typesController@index');
Route::get('preserves/{name}', 'Preserve_typesController@getAll');

Route::get('preserves/{name}/{id}', 'PreservesController@getOne');

});

Route::get('logout', 'Auth\LoginController@logout');
