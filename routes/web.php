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

Route::get('/', 'frontcontroller@home');

Route::get('/about', 'frontcontroller@about');

Route::get('/work', 'frontcontroller@work');

Route::get('/work/{id}', 'frontcontroller@details');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
