<?php

use App\Http\Controllers\Api\AdhesionController;
use App\Http\Controllers\Api\AvisController;
use App\Http\Controllers\Api\CercleController;
use App\Http\Controllers\Api\CommuneController;
use App\Http\Controllers\Api\PostController;
use App\Http\Controllers\Api\EnqUserController;
use App\Http\Controllers\Api\CoorBaseController;
use App\Http\Controllers\Api\CoorCercleController;
use App\Http\Controllers\Api\CoorComController;
use App\Http\Controllers\Api\CoorRegionController;
use App\Http\Controllers\Api\MembreController;
use App\Http\Controllers\Api\RegionController;
use App\Http\Controllers\Api\CalendarController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('posts', PostController::class);
Route::apiResource('avis', AvisController::class);

Route::apiResource('events', CalendarController::class);

Route::apiResource('adhesion', AdhesionController::class);
Route::apiResource('combase', CoorBaseController::class);
Route::apiResource('coorcom', CoorComController::class);
Route::apiResource('coorcercle', CoorCercleController::class);
Route::apiResource('coorregion', CoorRegionController::class);

Route::get('regions', [RegionController::class, 'index']);
Route::get('cercles/{id}', [CercleController::class, 'show']);
Route::get('communes/{id}', [CommuneController::class, 'show']);

Route::get('check-email/{email}', [AdhesionController::class, 'checkEmail']);
Route::get('check-number/{number}', [AdhesionController::class, 'checkNumber']);

Route::post('enquser', [EnquserController::class, 'login']);
Route::post('membre-{type}', [MembreController::class, 'login']);
