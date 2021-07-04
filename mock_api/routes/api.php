<?php

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

//users

Route::post('/user/login','api\LoginController@login');
Route::post('/user/login/google','api\LoginController@login_google');
Route::post('/user/register','api\LoginController@register');
Route::middleware('auth:api')->get('/user/all','api\LoginController@all');
Route::middleware('auth:api')->put('/user/update/profile','api\LoginController@update_profile');
Route::middleware('auth:api')->delete('/user/delete/profile','api\LoginController@delete_profile');
