@section('meta_keywords', 'base de dades, clients, importació, gestió, google contacts, comptabilitat')
@extends('layouts.app')

@section('title', 'Portfolio')
@section('meta_description', 'Guia per començar la base de dades de clients, amb passos per importar i gestionar contactes.')

@section('content')
 
 <!-- Page Title -->
    <div class="page-title light-background">
      <div class="container">
        <h1>Començem la nostra Base de dades per els Clients</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="/">Home</a></li>
            <li class="current">Començem la nostra Base de dades</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Portfolio Details Section -->
    <section id="portfolio-details" class="portfolio-details section">

      <div class="container">

        <div class="project-hero">
          <div class="project-meta-grid">
            <div class="meta-column">
              <div class="meta-label">1-origen de les dades</div>
              <div class="meta-value"><a href="https://contacts.google.com/">Google contactes </a></div>
            </div>
            <div class="meta-column">
              <div class="meta-label">2-exporta</div>
              <div class="meta-value">CSV per a Google</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">3-importa</div>
              <div class="meta-value"><a href="#importar-clients">Aqui </a></div>
            </div>
            <div class="meta-column">
              <div class="meta-label">4-miracle </div>
              <div class="meta-value">ja tens els clients a la bbdd</div>
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
                <div class="swiper-slide">
                  <img src="{{ asset('assets/img/googlecontactes.jpg') }}" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
                <div class="swiper-slide">
                  <img src="{{ asset('assets/img/portfolio/portfolio-7.webp') }}" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
                <div class="swiper-slide">
                  <img src="{{ asset('assets/img/csv-to-sql.png') }}" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
              </div>
              <div class="swiper-button-next"></div>
              <div class="swiper-button-prev"></div>
            </div>
          </div>
        </div>

        <div id="importar-clients" class="content-section">
          <div class="row">
            <div class="col-lg-8 offset-lg-2">
              <div class="project-overview">
               
                <div class="container">
        <h1>Posem fil a l'agulla: </h1>

        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('clients.import') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group mb-3">
                <label for="csv_file" class="form-label">Selecciona el fitxer CSV (contacts.csv):Importar Clients des de CSV</label>
                <input type="file" name="csv_file" id="csv_file" class="form-control" accept=".csv" required>
            </div>
            <button type="submit" class="btn btn-primary">Importar Clients</button>
        </form>  
              </div>
            </div>
          </div>
        </div>

        <div class="key-features-section">
          <div class="row">
            <div class="col-lg-4">
              <div class="features-intro">
                <h3>Estem en un porcentatge d'exit 80%</h3>
                <p>Seguire treballant cap a l'exel.lencia del 100%.</p>
              </div>
            </div>
            <div class="col-lg-8">
              <div class="features-list">
                <div class="feature-row">
                  <div class="feature-icon">
                    <i class="bi bi-search"></i>
                  </div>
                  <div class="feature-content">
                    <h4>1</h4>
                    <p>El CSV ha de tenir capçaleres com 'First Name', 'Last Name', 'E-mail 1 - Value', etc.</p>
                  </div>
                </div>
                <div class="feature-row">
                  <div class="feature-icon">
                    <i class="bi bi-heart"></i>
                  </div>
                  <div class="feature-content">
                    <h4>2</h4>
                    <p>El camp 'nombre' combina 'First Name', 'Middle Name' i 'Last Name'.</p>
                  </div>
                </div>
                <div class="feature-row">
                  <div class="feature-icon">
                    <i class="bi bi-people"></i>
                  </div>
                  <div class="feature-content">
                    <h4>3</h4>
                    <p>Les categories es creen automàticament a partir de 'Labels' (per exemple, 'BATLLONADA').</p>
                  </div>
                </div>
				<div class="feature-row">
                  <div class="feature-icon">
                    <i class="bi bi-search"></i>
                  </div>
                  <div class="feature-content">
                    <h4>4</h4>
                    <p>Les imatges es descarreguen des de l'URL del camp 'Photo' i es guarden a 'storage/app/public/clientes' amb noms únics.</p>
                  </div>
                </div>
                <div class="feature-row">
                  <div class="feature-icon">
                    <i class="bi bi-heart"></i>
                  </div>
                  <div class="feature-content">
                    <h4>5</h4>
                    <p>Les files sense nom es saltaran.</p>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
        </div>

       

      </div>

    </section><!-- /Portfolio Details Section -->


@endsection