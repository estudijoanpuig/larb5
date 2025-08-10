<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\ProductoController;

Route::get('/productes', [ProductoController::class, 'galeria'])->name('productes.galeria');
Route::get('/productes/{id}', [ProductoController::class, 'detall'])->name('productes.detall');

Route::post('/import-clients', [ClienteController::class, 'import'])->name('clients.import');

Route::get('/començemlanostrabasededades', function () {
    return view('comptabilitat.començemlanostrabasededades');
});


Route::get('/', [PortfolioController::class, 'index'])->name('portfolio.index');
Route::get('/portfolio', [PortfolioController::class, 'index'])->name('portfolio.index');