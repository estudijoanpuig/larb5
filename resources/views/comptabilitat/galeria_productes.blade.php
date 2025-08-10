@extends('layouts.app')

@section('content')

 <!-- Page Title -->
    <div class="page-title light-background">
        <div class="container">
            <h1>Galeria de Producte</h1>
			 <p>Explora els nostres productes, organitzats per categories</p>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="{{ route('productes.galeria') }}">Galeria</a></li>
                    <li class="current">Detalls del Producte</li>
                </ol>
            </nav>
        </div>
    </div><!-- End Page Title -->

<!-- Portfolio Section -->
<section id="portfolio" class="portfolio section">
   

    <div class="container">
        <div class="isotope-layout" data-default-filter="*" data-layout="fitRows" data-sort="original-order">
            <!-- Portfolio Filters -->
            <div class="portfolio-filters-wrapper">
                <ul class="portfolio-filters isotope-filters">
                    <li data-filter="*" class="filter-active">Tots</li>
                    @foreach ($categories as $categoria)
                        <li data-filter=".filter-{{ Str::slug($categoria->nombre_categoria) }}">{{ $categoria->nombre_categoria }}</li>
                    @endforeach
                </ul>
            </div>

            <!-- Portfolio Grid -->
            <div class="row gy-4 portfolio-grid isotope-container">
                @foreach ($productes as $producto)
                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-{{ $producto->categoriaProducto ? Str::slug($producto->categoriaProducto->nombre_categoria) : 'sense-categoria' }}">
                        <div class="portfolio-card">
                            <div class="image-container">
                                <img src="{{ asset('storage/' . $producto->img) }}" class="img-fluid" alt="{{ $producto->nombre }}" loading="lazy">
                                <div class="overlay">
                                    <div class="overlay-content">
                                        <a href="{{ asset('storage/' . $producto->img) }}" class="glightbox zoom-link" title="{{ $producto->nombre }}">
                                            <i class="bi bi-zoom-in"></i>
                                        </a>
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
                                    <p class="text-muted">Preu: {{ number_format($producto->precio, 2) }} €</p>
                                @endif
                                
                                @if ($producto->categoriaProducto)
                                    <p class="text-muted">Categoria: {{ $producto->categoriaProducto->nombre_categoria }}</p>
                                @endif
                                @if ($producto->video)
                                    <p><a href="{{ asset('storage/' . $producto->video) }}" class="glightbox">Veure vídeo</a></p>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
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