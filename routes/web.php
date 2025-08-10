<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\ProductoController;

Route::get('/documentacio', function () {
    return view('comptabilitat.documentacio');
})->name('documentacio');


Route::post('/contact', [App\Http\Controllers\ContactController::class, 'submit'])->name('contact.submit');

Route::get('/comptabilitat/bbdd', function () {
    return view('comptabilitat.creacio_manteniment_bbdd');
})->name('comptabilitat.bbdd');

Route::get('/productes', [ProductoController::class, 'galeria'])->name('productes.galeria');
Route::get('/productes/{id}', [ProductoController::class, 'detall'])->name('productes.detall');

Route::post('/import-clients', [ClienteController::class, 'import'])->name('clients.import');

Route::get('/començemlanostrabasededades', function () {
    return view('comptabilitat.començemlanostrabasededades');
});


Route::get('/', [PortfolioController::class, 'index'])->name('portfolio.index');
Route::get('/portfolio', [PortfolioController::class, 'index'])->name('portfolio.index');