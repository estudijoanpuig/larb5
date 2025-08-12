@extends('layouts.app')
@section('title', 'Documentacio')
@section('content')

 <!-- Page Title -->
    <div class="page-title light-background">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <h1>@yield('title')</h1>
                    <nav class="breadcrumbs">
                        <ol>
                            <li><a href="/">Inici</a></li>
                            <li><a href="/comptabilitat/vendes/diari_vendes">gestio vendas</a></li>
                            <li class="current">@yield('title')</li>
                        </ol>
                    </nav>
                </div>

                <nav id="sub" class="navmenu">
                    <ul>

                        <li class="dropdown extended-dropdown-2"><a href="#"><span>COMPTABILITAT</span> <i
                                    class="bi bi-chevron-down toggle-dropdown"></i></a>
                            <ul>
                                <li>
                                    <a href="/comptabilitat/vendes/diari_vendes">
                                        <div class="menu-item-content">
                                            <div class="menu-icon">
                                                <i class="bi bi-cart"></i>
                                            </div>
                                            <div class="menu-text">
                                                <span class="menu-title">Diari de vendes </span>
                                                <span class="menu-description">gestio de les vendes</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="/comptabilitat/vendes/diari_vendes">
                                        <div class="menu-item-content">
                                            <div class="menu-icon">
                                                <i class="bi bi-truck"></i>
                                            </div>
                                            <div class="menu-text">
                                                <span class="menu-title">Diari de Compres</span>
                                                <span class="menu-description">gestio de compres i despesses</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="/informes">
                                        <div class="menu-item-content">
                                            <div class="menu-icon">
                                                <i class="bi bi-file-earmark-bar-graph"></i>
                                            </div>
                                            <div class="menu-text">
                                                <span class="menu-title">Informe de vendes </span>
                                                <span class="menu-description">A traves del filtre podem veure l'evolucio
                                                    per anys</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <div class="d-grid gap-2 d-md-block">
                            <button type="button" class="btn btn-warning"><a href="/admin/clientes/create">Crear Client
                                </a></button>
                            <button type="button" class="btn btn-warning"><a href="/admin/productos/create">Crear Producte
                                </a></button>
                        </div>

                        </li><!-- End Mega Menu 2 -->

                    </ul>
                </nav>

            </div>
        </div>
    </div>
    <!-- End Page Title -->
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; line-height: 1.6; color: #333; }
        h1 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 10px; }
        h2 { color: #34495e; margin-top: 20px; }
        pre { background: #f4f4f4; padding: 15px; border-radius: 5px; border: 1px solid #ddd; overflow-x: auto; }
        p { margin: 10px 0; }
        .note { background: #e8f4f8; padding: 10px; border-left: 4px solid #3498db; margin-bottom: 20px; }
    </style>

    <h1>Actualitzar canvis de GitHub i solucionar error KitLoong al VPS</h1>
    <p class="note">Aquest document explica com actualitzar un projecte Laravel (12.22.1, PHP 8.2.29, Filament 3.3.0) al VPS de Hostinger des de GitHub i resoldre l'error <code>Class "KitLoong\MigrationsGenerator\MigrationsGeneratorServiceProvider" not found</code>. Projecte a <code>estudijoanpuig.com</code>.</p>

    <h2>1. Verificar i netejar memòria cau</h2>
    <p>Accedeix al VPS via SSH i navega al projecte:</p>
    <pre>ssh -p 65002 usuari@ip_del_vps
cd /var/www/html/larb5</pre>
    <p>Comprova i elimina fitxers de cache:</p>
    <pre>ls -l /var/www/html/larb5/bootstrap/cache
rm -f /var/www/html/larb5/bootstrap/cache/*.php</pre>
    <p>Prova una comanda senzilla:</p>
    <pre>php artisan --version</pre>

    <h2>2. Corregir composer.json</h2>
    <p>Edita <code>composer.json</code> per eliminar scripts problemàtics:</p>
    <pre>nano /var/www/html/larb5/composer.json</pre>
    <p>Comenta o elimina <code>"@php artisan config:clear"</code> o <code>"@php artisan clear-compiled"</code> a <code>scripts</code>:</p>
    <pre>"scripts": {
    "post-autoload-dump": [
        "@php artisan package:discover --ansi"
    ]
}</pre>
    <p>Guarda amb Ctrl+O, Enter, Ctrl+X.</p>

    <h2>3. Regenerar l'autoloader</h2>
    <p>Executa:</p>
    <pre>composer dump-autoload --no-scripts</pre>
    <p>Neteja la memòria cau:</p>
    <pre>php artisan config:clear
php artisan cache:clear</pre>

    <h2>4. Actualitzar canvis de GitHub</h2>
    <p>Verifica el remot:</p>
    <pre>git remote -v</pre>
    <p>Treu els canvis:</p>
    <pre>git pull origin main</pre>
    <p>Instal·la dependències i optimitza:</p>
    <pre>composer install --no-dev --optimize-autoloader
php artisan config:cache
php artisan cache:clear
php artisan migrate --seed</pre>
    <p>Reinicia el servidor:</p>
    <pre>systemctl restart apache2</pre>

    <h2>5. Configurar permisos</h2>
    <p>Assegura permisos correctes:</p>
    <pre>chown -R www-data:www-data /var/www/html/larb5
chmod -R 755 /var/www/html/larb5
chmod -R 775 /var/www/html/larb5/storage /var/www/html/larb5/bootstrap/cache</pre>

    <h2>6. Comprovació</h2>
    <p>Prova accedir al lloc:</p>
    <pre>https://estudijoanpuig.com</pre>
    <p>Verifica la base de dades amb phpMyAdmin:</p>
    <pre>SELECT * FROM wp_contabilidad_clientes;
SELECT * FROM wp_contabilidad_empleados;</pre>

    <h2>7. Notes addicionals</h2>
    <p class="note">
        - Si <code>composer.json</code> conté errors de JSON, verifica que no hi hagi comentaris (//).<br>
        - Si el paquet <code>kitloong/laravel-migrations-generator</code> és necessari, instal·la'l amb: <code>composer require kitloong/laravel-migrations-generator</code>.<br>
        - Cerca referències residuals amb: <code>grep -r "KitLoong" /var/www/html/larb5</code>.<br>
        - Data: 11 d'agost de 2025.
    </p>


@endsection