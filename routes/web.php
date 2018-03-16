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



// Routes para paginas
	Route::get('/', 'PagesController@index')->name('pages.index');

	Route::get('/sobre-nos', 'PagesController@sobreNos')->name('pages.sobre-nos');

	Route::get('/contacto', 'PagesController@contacto')->name('pages.contacto');

	Route::get('/info', 'PagesController@info')->name('pages.info');


// Routes para productos
	// Index
	Route::get('/productos', 'ProductoController@index')->name('productos.index');

	//Producto - Page
	Route::get('/productos/{slug}', 'ProductoController@findSlug')->name('productos.producto');

	// Galeria
	Route::get('/galeria', 'ProductoController@galeria')->name('pages.galeria');



// Voyager
	Route::group(['prefix' => 'admin'], function () {
	    Voyager::routes();
	});
