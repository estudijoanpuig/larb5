@section('meta_keywords', 'base de dades, manteniment, creació, laravel, filament, gestió')
@extends('layouts.app')

@section('title', 'bbdd-Crud')
@section('meta_description', 'Servei de creació i manteniment de bases de dades amb Laravel i Filament. Optimitza la gestió de dades.')

@section('content')
<main class="main">
    <!-- Page Title -->
    <div class="page-title light-background">
        <div class="container">
            <h1>Creació i Manteniment de Bases de Dades</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="{{ route('productes.galeria') }}">Galeria</a></li>
                    <li class="current">Creació i Manteniment BBDD</li>
                </ol>
            </nav>
        </div>
    </div><!-- End Page Title -->

    <!-- Service Details Section -->
    <section id="service-details" class="service-details section">
        <div class="container">
            <div class="row">
                <!-- Main Content Area -->
                <div class="col-lg-7">
                    <!-- Main Service Introduction -->
                    <div class="service-hero">
                        <div class="service-meta">
                            <span class="service-category">Gestió de Bases de Dades</span>
                            <span class="reading-time">5 min read</span>
                        </div>
                        <h1>Creació i Manteniment de Bases de Dades</h1>
                        <p class="service-description">Oferim serveis complets per a la creació, configuració i manteniment de bases de dades, amb eines com Laravel i Filament per gestionar taules com wp_contabilidad_productos, wp_contabilidad_empleados i wp_contabilidad_proveedores.</p>
                    </div>
                    <!-- Service Visual -->
                    <div class="service-visual">
                        <img src="{{ asset('assets/img/database-creation.jpg') }}" alt="Creació de Bases de Dades" class="img-fluid" loading="lazy">
                    </div>
                    <!-- Service Content -->
                    <div class="service-narrative">
                        <h3>Optimització de Bases de Dades</h3>
                        <p>Hem desenvolupat migracions per crear taules amb estructures robustes, models per interactuar amb les dades, i recursos de Filament per a una gestió eficient. Aquest procés inclou la creació de taules, la configuració de relacions i l’ús d’icones com <code>bi-database</code> per a una navegació intuïtiva.</p>
                        <p>Utilitzem ordres com <code>php artisan make:migration</code> i <code>php artisan make:filament-resource</code> per automatitzar i estandarditzar el desenvolupament.</p>
                        <!-- Key Benefits Grid -->
                        <div class="benefits-grid">
                            <div class="benefit-card">
                                <div class="benefit-icon">
                                    <i class="bi bi-lightning-charge"></i>
                                </div>
                                <h4>Eficiència</h4>
                                <p>Creació ràpida de taules amb Laravel migrations.</p>
                            </div>
                            <div class="benefit-card">
                                <div class="benefit-icon">
                                    <i class="bi bi-shield-check"></i>
                                </div>
                                <h4>Fiabilitat</h4>
                                <p>Models ben configurats amb camps fillable.</p>
                            </div>
                            <div class="benefit-card">
                                <div class="benefit-icon">
                                    <i class="bi bi-graph-up"></i>
                                </div>
                                <h4>Escalabilitat</h4>
                                <p>Filament permet una gestió fàcil i escalable.</p>
                            </div>
                            <div class="benefit-card">
                                <div class="benefit-icon">
                                    <i class="bi bi-person"></i>
                                </div>
                                <h4>Interfície Intuïtiva</h4>
                                <p>Icones com bi-person i bi-truck per a una millor experiència.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Implementation Timeline -->
                    <div class="timeline-section">
                        <h3>Procés de Desenvolupament</h3>
                        <div class="timeline">
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>1</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Definició de l’Esquema</h4>
                                    <p>Anàlisi de les taules necessàries (productes, empleats, proveïdors).</p>
                                    <small>Setmana 1</small>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>2</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Creació de Migracions</h4>
                                    <p>Ús de <code>php artisan make:migration</code> per crear taules.</p>
                                    <small>Setmana 1-2</small>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>3</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Configuració de Models</h4>
                                    <p>Creació de models com Empleat i Proveidor amb fillable.</p>
                                    <small>Setmana 2</small>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>4</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Recursos de Filament</h4>
                                    <p>Generació amb <code>php artisan make:filament-resource</code>.</p>
                                    <small>Setmana 3</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Main Content -->
                <!-- Service Sidebar -->
                <div class="col-lg-5">
                    <div class="service-sidebar">
                        <!-- Service Overview Card -->
                        <div class="overview-card">
                            <div class="overview-header">
                                <h4>Resum del Servei</h4>
                            </div>
                            <div class="overview-stats">
                                <div class="stat-item">
                                    <div class="stat-number">4</div>
                                    <div class="stat-label">Taules Creades</div>
                                </div>
                                <div class="stat-item">
                                    <div class="stat-number">3</div>
                                    <div class="stat-label">Recursos Filament</div>
                                </div>
                                <div class="stat-item">
                                    <div class="stat-number">100%</div>
                                    <div class="stat-label">Compatibilitat</div>
                                </div>
                            </div>
                            <div class="overview-details">
                                <div class="detail-row">
                                    <span class="detail-label">Tecnologies</span>
                                    <span class="detail-value">Laravel, Filament, MySQL</span>
                                </div>
                                <div class="detail-row">
                                    <span class="detail-label">Icones Utilitzades</span>
                                    <span class="detail-value">bi-person, bi-truck, bi-database</span>
                                </div>
                                <div class="detail-row">
                                    <span class="detail-label">Temps Estimat</span>
                                    <span class="detail-value">3-4 setmanes</span>
                                </div>
                            </div>
                        </div>
                        <!-- Success Story -->
                        <div class="success-story">
                            <div class="story-quote">
                                <p>"La configuració de la base de dades amb Laravel i Filament ha estat un èxit total, amb una gestió intuïtiva i eficient."</p>
                            </div>
                            <div class="story-author">
                                <img src="{{ asset('assets/img/joan.jpg') }}" alt="Joan Puig" class="author-avatar">
                                <div class="author-details">
                                    <h5>Joan Puig</h5>
                                    <span>Desenvolupador</span>
                                    <small>Estudi Joan Puig</small>
                                </div>
                            </div>
                            <div class="story-metrics">
                                <div class="metric">
                                    <span class="metric-value">100%</span>
                                    <span class="metric-label">Satisfacció</span>
                                </div>
                                <div class="metric">
                                    <span class="metric-value">5x</span>
                                    <span class="metric-label">Eficiència</span>
                                </div>
                            </div>
                        </div>
                        <!-- Consultation Form -->
                        <div class="consultation-form">
                            <div class="form-header">
                                <h4>Contacta'ns</h4>
                                <p>Si tens dubtes sobre la creació o manteniment de bases de dades, envia'ns un missatge.</p>
                            </div>
                            <form action="{{ route('contact.submit') }}" method="post" class="php-email-form">
                                @csrf
                                <div class="form-group">
                                    <input type="text" name="name" class="form-input" placeholder="Nom complet" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-input" placeholder="Correu electrònic" required>
                                </div>
                                <div class="form-group">
                                    <input type="tel" name="phone" class="form-input" placeholder="Telèfon">
                                </div>
                                <input type="hidden" name="subject" value="Consulta sobre Creació i Manteniment BBDD">
                                <div class="form-group">
                                    <textarea name="message" class="form-input" rows="4" placeholder="Explica el teu dubte..." required></textarea>
                                </div>
                                <div class="loading">Carregant</div>
                                <div class="error-message"></div>
                                <div class="sent-message">Missatge enviat. Gràcies!</div>
                                <button type="submit" class="btn-consultation">
                                    <span>Envia Consulta</span>
                                    <i class="bi bi-arrow-right"></i>
                                </button>
                            </form>
                        </div>
						
						<!-- Implementation Timeline -->
                    <div class="timeline-section">
                        <h3>Ordres Artisan per al CRUD de Clients</h3>
                        <div class="timeline">
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>1</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Creació de la migració</h4>
                                    <p>Genera la migració per crear la taula wp_contabilidad_clients.</p>
                                    <code>php artisan make:migration create_wp_contabilidad_clients_table</code>
                                    <button class="copy-btn" data-clipboard-text="php artisan make:migration create_wp_contabilidad_clients_table">Copia</button>
                                    <small>Defineix l’estructura de la taula a la base de dades.</small>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>2</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Creació del model</h4>
                                    <p>Genera el model Client per interactuar amb la taula.</p>
                                    <code>php artisan make:model Client</code>
                                    <button class="copy-btn" data-clipboard-text="php artisan make:model Client">Copia</button>
                                    <small>Representa els registres de clients amb mètodes Eloquent.</small>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>3</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Creació del recurs Filament</h4>
                                    <p>Genera el recurs Filament per al CRUD de clients.</p>
                                    <code>php artisan make:filament-resource Client --generate</code>
                                    <button class="copy-btn" data-clipboard-text="php artisan make:filament-resource Client --generate">Copia</button>
                                    <small>Crea formularis i taules per gestionar clients a Filament.</small>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-marker">
                                    <span>4</span>
                                </div>
                                <div class="timeline-content">
                                    <h4>Execució de migracions</h4>
                                    <p>Aplica les migracions per crear la taula a la base de dades.</p>
                                    <code>php artisan migrate</code>
                                    <button class="copy-btn" data-clipboard-text="php artisan migrate">Copia</button>
                                    <small>Crea la taula wp_contabilidad_clients a la BBDD.</small>
                                </div>
                            </div>
                        </div>
						
                    </div>
                </div><!-- End Sidebar -->
            </div>
        </div>
    </section><!-- /Service Details Section -->

    <!-- Incloure Clipboard.js per copiar codi -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.8/clipboard.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            new ClipboardJS('.copy-btn');
        });
    </script>
</main>
@endsection