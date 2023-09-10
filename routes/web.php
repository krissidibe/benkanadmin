<?php

use App\Http\Controllers\AdhesionController;
use App\Http\Controllers\CoorCercleController;
use App\Http\Controllers\AvisController;
use App\Http\Controllers\CalendarController;
use App\Http\Controllers\CercleController;
use App\Http\Controllers\CoorBaseController;
use App\Http\Controllers\CoorComController;
use App\Http\Controllers\CoorRegionController;
use App\Http\Controllers\EnquserController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\TableauController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

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

 Route::get('/confidentialite', function (){
       return View("pages.confidentialite");
 }  )->name("confidentialite");





Route::get('/updateapp', function()
{

  $dd =  Artisan::call();

    echo 'dump-autoload complete';
});
 Route::get('/', function (){
       return View("login");
 }  )->name("login");

Route::name('admin.')->group(function () {
      Route::get('enquser-create', [EnquserController::class,"create"])->name("enquser.create");
      Route::get('enquser-index', [EnquserController::class,"index"])->name("enquser.index");
      Route::get('enquser-show/{id}', [EnquserController::class,"show"])->name("enquser.show");
      Route::post('enquser-store', [EnquserController::class,"store"])->name("enquser.store");

      Route::get('post-create', [PostController::class,"create"])->name("post.create");
      Route::get('post-index', [PostController::class,"index"])->name("post.index");
      Route::get('post-show/{id}', [postController::class,"show"])->name("post.show");
      Route::post('post-store', [PostController::class,"store"])->name("post.store");

      Route::get('avis-create', [AvisController::class,"create"])->name("avis.create");
      Route::get('avis-index', [AvisController::class,"index"])->name("avis.index");
      Route::get('avis-show/{id}', [AvisController::class,"show"])->name("avis.show");
      Route::post('avis-store', [AvisController::class,"store"])->name("avis.store");

      Route::get('adhesion-index', [AdhesionController::class,"index"])->name("adhesion.index");
      Route::get('adhesion-show/{adhesion}', [AdhesionController::class,"show"])->name("adhesion.show");
      Route::post('adhesion-store', [AdhesionController::class,"store"])->name("adhesion.store");

      Route::post('adhesion-update', [AdhesionController::class,"update"])->name("adhesion.update");
      Route::get('adhesion-delete/{data}', [AdhesionController::class,"destroy"])->name("adhesion.delete");

      Route::get('coorbase-index', [CoorBaseController::class,"index"])->name("coorbase.index");
      Route::get('coorbase-show/{coorbase}', [CoorBaseController::class,"show"])->name("coorbase.show");

      Route::get('coorcom-index', [CoorComController::class,"index"])->name("coorcom.index");
      Route::get('coorcom-show/{coorcom}', [CoorComController::class,"show"])->name("coorcom.show");

      Route::get('coorcercle-index', [CoorCercleController::class,"index"])->name("coorcercle.index");
      Route::get('coorcercle-show/{coorcercle}', [CoorCercleController::class,"show"])->name("coorcercle.show");




      Route::get('coorregion-index', [CoorRegionController::class,"index"])->name("coorregion.index");
      Route::get('coorregion-show/{coorregion}', [CoorRegionController::class,"show"])->name("coorregion.show");

      Route::get('tableau-index', [TableauController::class,"index"])->name("tableau.index");
      Route::get('tableau-info/{link}', [TableauController::class,"info"])->name("tableau.info");
      Route::get('cercles/{id}', [CercleController::class,"show"])->name("tableau.cercles.show");
      Route::get('communes/{region}-{id}', [CercleController::class,"showCommune"])->name("tableau.commune.show");








      Route::get('calendar-index/{day}', [CalendarController::class,"index"])->name("calendar.index");
      Route::post('calendar-store', [CalendarController::class,"store"])->name("calendar.store");
     /*  Route::get('post-create', [PostController::class,"create"])->name("post.create");
      Route::get('post-show/{id}', [postController::class,"show"])->name("post.show");
      */
});
