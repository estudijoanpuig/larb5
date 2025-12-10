@section('meta_keywords', 'galeria, productes, categories, visualització, filtres, empresa')
@extends('layouts.app')
@section('meta_robots', 'noindex, nofollow')
@section('meta_description', 'Explora la galeria de productes per categories. Visualitza detalls i filtres.')

@section('content')

 <!-- Page Title -->
    <div class="page-title light-background">
        <div class="container">
            <h1>Galeria de Productes</h1>
            <p>Explora els nostres productes, organitzats per categories</p>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="/">Inici</a></li>
                    <li><a href="{{ route('productes.galeria') }}">Galeria</a></li>
                    <li class="current">Productes</li>
                </ol>
            </nav>
        </div>
    </div><!-- End Page Title -->

<!-- Portfolio Section -->
<section id="portfolio" class="portfolio section">
    <div class="container">
        <!-- Filtre per categoria (select) -->
        <div class="row mb-4">
            <div class="col-md-6 offset-md-3">
                <form method="GET" action="{{ route('productes.galeria') }}" class="d-flex gap-2">
                    <select name="categoria" class="form-select" onchange="this.form.submit()">
                        <option value="">🔍 Totes les categories</option>
                        @foreach ($categories as $categoria)
                            <option value="{{ $categoria->id }}" {{ request('categoria') == $categoria->id ? 'selected' : '' }}>
                                {{ $categoria->nombre_categoria }}
                            </option>
                        @endforeach
                    </select>
                    @if(request('categoria'))
                        <a href="{{ route('productes.galeria') }}" class="btn btn-outline-secondary">
                            <i class="bi bi-x-circle"></i> Netejar
                        </a>
                    @endif
                </form>
            </div>
        </div>

        <div class="isotope-layout" data-default-filter="*" data-layout="fitRows" data-sort="original-order">
            <!-- Portfolio Filters (Pills) -->
            <div class="portfolio-filters-wrapper">
                <ul class="portfolio-filters isotope-filters">
                    <li data-filter="*" class="{{ !request('categoria') ? 'filter-active' : '' }}">
                        <a href="{{ route('productes.galeria') }}" style="text-decoration: none; color: inherit;">Tots</a>
                    </li>
                    @foreach ($categories as $categoria)
                        <li data-filter=".filter-{{ Str::slug($categoria->nombre_categoria) }}" 
                            class="{{ request('categoria') == $categoria->id ? 'filter-active' : '' }}">
                            <a href="{{ route('productes.galeria', ['categoria' => $categoria->id]) }}" 
                               style="text-decoration: none; color: inherit;">
                                {{ $categoria->nombre_categoria }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>

            <!-- Portfolio Grid -->
            <div class="row gy-4 portfolio-grid isotope-container">
                @forelse ($productes as $producto)
                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-{{ $producto->categoriaProducto ? Str::slug($producto->categoriaProducto->nombre_categoria) : 'sense-categoria' }}">
                        <div class="portfolio-card">
                            <div class="image-container">
                                @if($producto->img)
                                    <img src="{{ asset('storage/' . $producto->img) }}" class="img-fluid" alt="{{ $producto->nombre }}" loading="lazy">
                                @else
                                    <img src="{{ asset('assets/img/placeholder.png') }}" class="img-fluid" alt="{{ $producto->nombre }}" loading="lazy">
                                @endif
                                <div class="overlay">
                                    <div class="overlay-content">
                                        @if($producto->img)
                                            <a href="{{ asset('storage/' . $producto->img) }}" class="glightbox zoom-link" title="{{ $producto->nombre }}">
                                                <i class="bi bi-zoom-in"></i>
                                            </a>
                                        @endif
                                        <a href="{{ route('productes.detall', $producto->id) }}" class="details-link" title="Veure detalls del producte">
                                            <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="content">
                                <h3>{{ $producto->nombre }}</h3>
                                <p>{{ Str::limit(strip_tags($producto->descripcion), 100, '...') }}</p>
                                @if ($producto->precio)
                                    <p class="text-primary fw-bold">Preu: {{ number_format($producto->precio, 2) }} €</p>
                                @endif
                                
                                @if ($producto->categoriaProducto)
                                    <span class="badge bg-secondary">{{ $producto->categoriaProducto->nombre_categoria }}</span>
                                @endif
                                @if ($producto->video)
                                    <p class="mt-2"><a href="{{ asset('storage/' . $producto->video) }}" class="glightbox btn btn-sm btn-outline-primary">
                                        <i class="bi bi-play-circle"></i> Veure vídeo
                                    </a></p>
                                @endif
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-12">
                        <div class="alert alert-info text-center">
                            <i class="bi bi-info-circle"></i> No s'han trobat productes en aquesta categoria.
                        </div>
                    </div>
                @endforelse
            </div><!-- End Portfolio Grid -->
        </div>
    </div>
</section><!-- /Portfolio Section -->

<script>
    // Inicialitzar GLightbox
    const lightbox = GLightbox({
        selector: '.glightbox'
    });

    // Inicialitzar Isotope
    document.addEventListener('DOMContentLoaded', function () {
        var elem = document.querySelector('.isotope-container');
        var iso = new Isotope(elem, {
            itemSelector: '.isotope-item',
            layoutMode: 'fitRows'
        });

        // Filtratge amb clics
        var filters = document.querySelectorAll('.isotope-filters li');
        filters.forEach(function (filter) {
            filter.addEventListener('click', function () {
                filters.forEach(function (f) { f.classList.remove('filter-active'); });
                this.classList.add('filter-active');
                var filterValue = this.getAttribute('data-filter');
                iso.arrange({ filter: filterValue });
            });
        });
    });
</script>
@endsection