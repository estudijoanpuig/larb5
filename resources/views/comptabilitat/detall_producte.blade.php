@extends('layouts.app')

@section('content')
<main class="main">
    <!-- Page Title -->
    <div class="page-title light-background">
        <div class="container">
            <h1>{{ $producto->nombre }}</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="{{ route('productes.galeria') }}">Galeria</a></li>
                    <li class="current">Detalls del Producte</li>
                </ol>
            </nav>
        </div>
    </div><!-- End Page Title -->

    <!-- Portfolio Details Section -->
    <section id="portfolio-details" class="portfolio-details section">
        <div class="container">
            <div class="project-hero">
                <div class="project-meta-grid">
                    @if ($producto->categoriaProducto)
                        <div class="meta-column">
                            <div class="meta-label">Categoria</div>
                            <div class="meta-value">{{ $producto->categoriaProducto->nombre_categoria }}</div>
                        </div>
                    @endif
                    <div class="meta-column">
                        <div class="meta-label">Preu</div>
                        <div class="meta-value">{{ $producto->precio ? number_format($producto->precio, 2) . ' €' : 'No especificat' }}</div>
                    </div>
                    <div class="meta-column">
                        <div class="meta-label">Stock</div>
                        <div class="meta-value">{{ $producto->stock }}</div>
                    </div>
                </div>
            </div>

            <div class="visual-showcase">
                <div class="main-visual">
                    <div class="portfolio-details-slider swiper init-swiper">
                        <script type="application/json" class="swiper-config">
                            {
                                "loop": true,
                                "speed": 600,
                                "autoplay": {
                                    "delay": 4000
                                },
                                "effect": "creative",
                                "creativeEffect": {
                                    "prev": {
                                        "shadow": false,
                                        "translate": ["-120%", 0, -500]
                                    },
                                    "next": {
                                        "shadow": false,
                                        "translate": ["120%", 0, -500]
                                    }
                                },
                                "slidesPerView": 1,
                                "navigation": {
                                    "nextEl": ".swiper-button-next",
                                    "prevEl": ".swiper-button-prev"
                                }
                            }
                        </script>
                        <div class="swiper-wrapper">
                            @if ($producto->img)
                                <div class="swiper-slide">
                                    <img src="{{ asset('storage/' . $producto->img) }}" alt="{{ $producto->nombre }}" class="img-fluid" loading="lazy">
                                </div>
                            @else
                                <div class="swiper-slide">
                                    <img src="{{ asset('assets/img/portfolio/placeholder.jpg') }}" alt="Sense imatge" class="img-fluid" loading="lazy">
                                </div>
                            @endif
                            @if ($producto->video)
                                <div class="swiper-slide">
                                    <video controls class="img-fluid">
                                        <source src="{{ asset('storage/' . $producto->video) }}" type="video/mp4">
                                        El teu navegador no suporta la reproducció de vídeos.
                                    </video>
                                </div>
                            @endif
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>

            <div class="content-section">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="project-overview">
                            <h2>Descripció del Producte</h2>
                            <p class="overview-text">{!! $producto->descripcion !!}</p>
                            @if ($producto->protocol)
                                <div class="challenge-solution">
                                    <div class="challenge-block">
                                        <h3>Protocol</h3>
                                        <p>{!! $producto->protocol !!}</p>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>

            <div class="project-footer">
                <div class="footer-navigation">
                    @if ($previous)
                        <a href="{{ route('productes.detall', $previous->id) }}" class="nav-link prev-project">
                            <span class="nav-direction">Anterior</span>
                            <span class="nav-title">{{ $previous->nombre }}</span>
                        </a>
                    @endif
                    <a href="{{ route('productes.galeria') }}" class="nav-link all-projects">
                        <i class="bi bi-grid-3x3-gap"></i>
                        <span>Tots els Productes</span>
                    </a>
                    @if ($next)
                        <a href="{{ route('productes.detall', $next->id) }}" class="nav-link next-project">
                            <span class="nav-direction">Següent</span>
                            <span class="nav-title">{{ $next->nombre }}</span>
                        </a>
                    @endif
                </div>
            </div>
        </div>
    </section><!-- /Portfolio Details Section -->
</main>
@endsection