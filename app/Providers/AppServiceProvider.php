<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Compartir informació de la vista PRINCIPAL (no layouts)
        View::composer('*', function ($view) {
            $viewName = $view->getName();
            
            // Si NO és un layout, guardem la informació de la vista real
            if (!str_starts_with($viewName, 'layouts.')) {
                // Extreure parts de la vista (ex: comptabilitat.vendes.create)
                $parts = explode('.', $viewName);
                $fileName = end($parts); // create
                
                // Path sense el fitxer (ex: comptabilitat/vendes)
                $pathParts = $parts;
                array_pop($pathParts);
                $viewPath = !empty($pathParts) ? implode('/', $pathParts) : 'arrel';
                
                $view->with([
                    'realViewName' => $viewName,           // Ex: comptabilitat.vendes.create
                    'realViewFile' => $fileName,           // Ex: create
                    'realViewPath' => $viewPath,           // Ex: comptabilitat/vendes
                ]);
            }
        });
    }
}
