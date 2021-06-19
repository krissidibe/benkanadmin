<?php

use App\Http\Controllers\EnquserController;
use App\Http\Controllers\PostController;
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
});