@extends('layouts.app')
@section('title', 'Guia: Començar una Base de Dades')
@section('content')

<style>
/* Capçaleres de cards amb colors pastel */
.card-header.bg-primary {
    background: #a3c9f7 !important;
    color: #2c3e50 !important;
}
.card-header.bg-success {
    background: #b7e4c7 !important;
    color: #2c3e50 !important;
}
.card-header.bg-info {
    background: #b5e6f7 !important;
    color: #2c3e50 !important;
}
.card-header.bg-warning {
    background: #ffe5b4 !important;
    color: #2c3e50 !important;
}
.card-header.bg-secondary {
    background: #e2e2e2 !important;
    color: #2c3e50 !important;
}
.card-header.bg-dark {
    background: #bdbdbd !important;
    color: #2c3e50 !important;
}

/* Text més clar dins els cards */
.card-body {
    color: #444 !important;
}
</style>

<div class="container py-5">
    <div class="row mb-4">
        <div class="col-lg-8 mx-auto">
            <div class="card shadow-lg border-0">
                <div class="card-body p-5">
                    <h1 class="mb-3 text-primary"><i class="bi bi-database me-2"></i>Començar una Base de Dades</h1>
                    <p class="lead">Guia pràctica per a principiants que només han treballat amb Google Sheets i volen crear una base de dades real. Inclou consells d'intel·ligència artificial per automatitzar i millorar el manteniment.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Pas 1: Què és una base de dades? -->
    <div class="row mb-5">
        <div class="col-lg-10 mx-auto">
            <div class="card border-primary">
                <div class="card-header bg-primary text-white">
                    <h3 class="mb-0">1. Què és una base de dades?</h3>
                </div>
                <div class="card-body">
                    <ul>
                        <li><strong>Definició:</strong> Un sistema organitzat per guardar, consultar i modificar dades (clients, productes, factures, etc.)</li>
                        <li><strong>Exemples:</strong> Google Sheets (fulls de càlcul), MySQL, SQLite, PostgreSQL</li>
                        <li><strong>Avantatges vs Sheets:</strong> Més seguretat, relacions entre taules, consultes avançades, automatització</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Pas 2: Passos per crear una BBDD -->
    <div class="row mb-5">
        <div class="col-lg-10 mx-auto">
            <div class="card border-success">
                <div class="card-header bg-success text-white">
                    <h3 class="mb-0">2. Passos per crear una base de dades</h3>
                </div>
                <div class="card-body">
                    <ol>
                        <li><strong>Defineix què vols guardar:</strong> Ex: clients, productes, factures, moviments</li>
                        <li><strong>Dissenya les taules:</strong> Cada taula és com una "llista" (ex: taula clients, taula productes)</li>
                        <li><strong>Defineix les columnes:</strong> Ex: clients (nom, email, telèfon), productes (nom, preu, stock)</li>
                        <li><strong>Tria el sistema:</strong> Per començar, SQLite (fitxer local) o MySQL (servidor)</li>
                        <li><strong>Crea la base de dades:</strong> Pots fer-ho amb eines gràfiques (DBeaver, phpMyAdmin) o amb codi (Laravel, Python, etc.)</li>
                        <li><strong>Introdueix dades:</strong> Pots importar des de Google Sheets (CSV) o afegir manualment</li>
                        <li><strong>Consulta i modifica:</strong> Aprèn a fer consultes (buscar, filtrar, ordenar) i actualitzacions</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <!-- Pas 3: Eines recomanades -->
    <div class="row mb-5">
        <div class="col-lg-10 mx-auto">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h3 class="mb-0">3. Eines recomanades</h3>
                </div>
                <div class="card-body">
                    <ul>
                        <li><strong>DBeaver:</strong> Editor visual per crear i gestionar BBDD (gratuït)</li>
                        <li><strong>phpMyAdmin:</strong> Gestió de MySQL des del navegador</li>
                        <li><strong>Laravel:</strong> Framework PHP per crear aplicacions amb base de dades</li>
                        <li><strong>Google Sheets:</strong> Exporta a CSV per importar fàcilment</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Pas 4: Com pot ajudar la IA? -->
    <div class="row mb-5">
        <div class="col-lg-10 mx-auto">
            <div class="card border-warning">
                <div class="card-header bg-warning text-dark">
                    <h3 class="mb-0">4. Com pot ajudar la intel·ligència artificial?</h3>
                </div>
                <div class="card-body">
                    <ul>
                        <li><strong>Importació automàtica:</strong> La IA pot transformar dades de Google Sheets a format base de dades (CSV, SQL)</li>
                        <li><strong>Validació de dades:</strong> Detecta errors, duplicats, formats incorrectes</li>
                        <li><strong>Generació de consultes:</strong> Pots demanar a la IA "Fes-me una consulta per trobar tots els clients amb saldo negatiu"</li>
                        <li><strong>Documentació automàtica:</strong> Explica el model de dades, genera diagrames</li>
                        <li><strong>Refactorització:</strong> Si canvies l'estructura, la IA pot ajudar a migrar i adaptar el codi</li>
                        <li><strong>Automatització de processos:</strong> Ex: enviar emails, generar informes, actualitzar preus</li>
                        <li><strong>Suport en modificacions:</strong> Quan vulguis afegir una columna, una relació o una taula, la IA pot suggerir el millor disseny</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Pas 5: Exemple visual -->
    <div class="row mb-5">
        <div class="col-lg-10 mx-auto">
            <div class="card border-secondary">
                <div class="card-header bg-secondary text-white">
                    <h3 class="mb-0">5. Exemple visual: Disseny d'una BBDD simple</h3>
                </div>
                <div class="card-body">
                    <img src="{{ asset('assets/img/exemple_bbdd.png') }}" alt="Exemple BBDD" class="img-fluid mb-3" style="max-width: 500px;">
                    <ul>
                        <li><strong>Taula clients:</strong> id, nom, email, telèfon</li>
                        <li><strong>Taula productes:</strong> id, nom, preu, stock</li>
                        <li><strong>Taula factures:</strong> id, client_id, data, total</li>
                        <li><strong>Relacions:</strong> factures → client_id (relació amb clients)</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Pas 6: Recursos útils -->
    <div class="row mb-5">
        <div class="col-lg-10 mx-auto">
            <div class="card border-dark">
                <div class="card-header bg-dark text-white">
                    <h3 class="mb-0">6. Recursos útils</h3>
                </div>
                <div class="card-body">
                    <ul>
                        <li><a href="https://dbeaver.io/" target="_blank">DBeaver</a> - Editor visual de BBDD</li>
                        <li><a href="https://laravel.com/docs/12.x/migrations" target="_blank">Laravel Migrations</a> - Crear i modificar taules amb codi</li>
                        <li><a href="https://www.sqltutorial.org/" target="_blank">SQL Tutorial</a> - Aprendre consultes SQL</li>
                        <li><a href="https://chat.openai.com/" target="_blank">ChatGPT</a> - Generar consultes, migracions, scripts</li>
                        <li><a href="https://www.youtube.com/watch?v=7S_tz1z_5bA" target="_blank">Vídeo: Disseny de BBDD per a principiants</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- CTA Final -->
    <div class="row mb-5">
        <div class="col-lg-8 mx-auto">
            <div class="card border-0 shadow-lg">
                <div class="card-body text-center p-4">
                    <h2 class="mb-3 text-success">Comença la teva base de dades avui!</h2>
                    <p class="mb-3">Amb una base de dades, podràs gestionar millor la teva informació, automatitzar processos i aprofitar la intel·ligència artificial per fer créixer el teu projecte.</p>
                    <a href="https://dbeaver.io/" target="_blank" class="btn btn-primary btn-lg">
                        <i class="bi bi-arrow-right-circle me-2"></i>Comunitat DBeaver:Eina gratuïta de gestió de bases de dades de codi obert
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
