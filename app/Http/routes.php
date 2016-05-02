<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Static Pages Routes
Route::get('/', 'PagesController@getIndex');
Route::get('about', 'PagesController@getAbout');
Route::get('contact', 'PagesController@getContact');
Route::get('blog/{slug}', ['as' => 'blog.single', 'uses' => 'BlogController@getSingle'])->where('slug', '[\w\d\_]+');

//Blog Post Route
Route::resource('post', 'PostController' );
Route::get('blog', ['uses' =>'BlogController@getIndex', 'as' => 'blog.index']);

//Product Route
Route::resource('product', 'ProductController');

//Auth Route
Route::auth();


