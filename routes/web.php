<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\VentaController;



Route::get('/comptabilitat/vendes/diari_vendes', [VentaController::class, 'index'])->name('ventas.index');
Route::get('/comptabilitat/vendes/create', [VentaController::class, 'create'])->name('ventas.create');
Route::post('/comptabilitat/vendes', [VentaController::class, 'store'])->name('ventas.store');
Route::get('/comptabilitat/vendes/{id}/edit', [VentaController::class, 'edit'])->name('ventas.edit');
Route::put('/comptabilitat/vendes/{id}', [VentaController::class, 'update'])->name('ventas.update');
Route::delete('/comptabilitat/vendes/{id}', [VentaController::class, 'destroy'])->name('ventas.destroy');

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