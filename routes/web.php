<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\VentaController;
use App\Http\Controllers\InformeController;
use App\Http\Controllers\WebDevelopmentController;
use App\Http\Controllers\CompraController;

Route::get('/web_development', [WebDevelopmentController::class, 'index'])->name('web_development.index');
Route::get('/detall-post/{id}', [WebDevelopmentController::class, 'show'])->name('detall_post.show');
// Stocks
Route::get('/stocks/index', function () {
    return view('stocks');
})->name('stocks');

// Guies d'IA
Route::get('/guies/copilot', function () {
    return view('copilot');
})->name('copilot');

Route::get('/guies/chatgpt', function () {
    return view('chatgpt');
})->name('chatgpt');

Route::get('/guies/grok', function () {
    return view('grok');
})->name('grok');

Route::get('/guies/deepseek', function () {
    return view('deepseek');
})->name('deepseek');

Route::get('/guies/gemini', function () {
    return view('gemini');
})->name('gemini');

Route::get('/guies/claude', function () {
    return view('claude');
})->name('claude');

Route::get('/guies/comparativa', function () {
    return view('comparativa');
})->name('comparativa');

Route::get('/guies/notebooklm', function () {
    return view('notebooklm');
})->name('notebooklm');

Route::get('/guies/google-ai-studio', function () {
    return view('google_ai_studio');
})->name('google-ai-studio');

Route::get('/sistema-usuaris', function () {
    return view('sistema_usuaris');
})->name('sistema_usuaris');

// Informes
Route::get('/informes', [InformeController::class, 'index'])->name('informes.index');
Route::get('/informes/compras', [InformeController::class, 'compras'])->name('informes.compras');
Route::get('/informes/resultats', [InformeController::class, 'resultats'])->name('informes.resultats');

//Vendes
Route::get('/comptabilitat/vendes/diari_vendes', [VentaController::class, 'index'])->name('ventas.index');
Route::get('/comptabilitat/vendes/create', [VentaController::class, 'create'])->name('ventas.create');
Route::post('/comptabilitat/vendes', [VentaController::class, 'store'])->name('ventas.store');
Route::get('/comptabilitat/vendes/{id}/edit', [VentaController::class, 'edit'])->name('ventas.edit');
Route::put('/comptabilitat/vendes/{id}', [VentaController::class, 'update'])->name('ventas.update');
Route::delete('/comptabilitat/vendes/{id}', [VentaController::class, 'destroy'])->name('ventas.destroy');

// Compres
Route::get('/comptabilitat/compres/diari_compres', [CompraController::class, 'index'])->name('compras.index');
Route::get('/comptabilitat/compres/create', [CompraController::class, 'create'])->name('compras.create');
Route::post('/comptabilitat/compres', [CompraController::class, 'store'])->name('compras.store');
Route::get('/comptabilitat/compres/{id}/edit', [CompraController::class, 'edit'])->name('compras.edit');
Route::put('/comptabilitat/compres/{id}', [CompraController::class, 'update'])->name('compras.update');
Route::delete('/comptabilitat/compres/{id}', [CompraController::class, 'destroy'])->name('compras.destroy');

Route::get('/documentacio', function () {
    return view('comptabilitat.documentacio');
})->name('documentacio');

// Guia BBDD
Route::get('/guia-bbdd', function () {
    return view('guia_bbdd');
})->name('guia.bbdd');


Route::get('/eines', function () {
    return view('eines');
});

Route::get('/framework', function () {
    return view('framework');
});

Route::get('/cerca', function () {
    return view('cerca');
});





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

// Registre Filament
Route::get('/admin/register', [\App\Http\Controllers\Auth\RegisterController::class, 'show'])->name('filament.register');
Route::post('/admin/register', [\App\Http\Controllers\Auth\RegisterController::class, 'register']);

Route::get('/', [PortfolioController::class, 'index'])->name('portfolio.index');  // Mantén aquesta com a root
Route::get('/portfolio', [PortfolioController::class, 'index'])->name('portfolio.page');  // Canvia el nom a un d'únic