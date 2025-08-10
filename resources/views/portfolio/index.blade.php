@extends('layouts.app')
@section('title', 'Portfolio')
@section('content')

 <!-- Hero Section -->
    <section id="hero" class="hero section">

      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="hero-content">
              <h1>Enfocats <span>cap un futur digital</span></h1>
              <p>A partir l'ara farem us extensiu de la intel.ligencia artifical.</p>
              <div class="hero-actions justify-content-center justify-content-lg-start">
                <a href="https://grok.com/chat" class="btn-primary scrollto">començem ara</a>
                <a href="https://youtu.be/wRpDhmVns5w?si=8fTMIGvhlt4zOsqP" class="glightbox btn-video d-flex align-items-center">
                  <i class="bi bi-play-fill"></i>
                  <span>Watch Demo</span>
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="hero-image">
              <img src="{{ asset('assets/img/1.webp') }}" class="img-fluid floating" alt="">
            </div>
          </div>
        </div>
      </div>

    </section><!-- /Hero Section -->


<!-- Inici Secció Portfolio -->
<section id="portfolio" class="portfolio section">
    <!-- Section Title -->
    <div class="container section-title">
        <h2>en un vps amb ubuntu 24.04 hostejo diferents projectes</h2>
       
    </div><!-- End Section Title -->

    <div class="container">
        <div class="isotope-layout" data-default-filter="*" data-layout="fitRows" data-sort="original-order">
            <div class="portfolio-filters-wrapper">
                <ul class="portfolio-filters isotope-filters">
                    <li data-filter="*" class="filter-active">All Projects</li>
                    @if(isset($categories) && $categories->count() > 0)
                        @foreach($categories as $category)
                            <li data-filter=".{{ str_replace(' ', '-', strtolower($category->name)) }}">{{ $category->name }}</li>
                        @endforeach
                    @endif
                </ul>
            </div>

            <div class="row gy-4 portfolio-grid isotope-container">
                @if(isset($projects) && $projects->count() > 0)
                    @foreach($projects as $project)
                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item {{ $project->category ? str_replace(' ', '-', strtolower($project->category->name)) : '' }} {{ $project->tags->map(fn($tag) => str_replace(' ', '-', strtolower($tag->name)))->implode(' ') }}">
                            <div class="portfolio-card">
                                <div class="image-container">
                                    @if($project->image)
                                        <img src="{{ asset('storage/' . $project->image) }}" class="img-fluid" alt="{{ $project->name }}" loading="lazy">
                                    @else
                                        <img src="{{ asset('images/placeholder.jpg') }}" class="img-fluid" alt="{{ $project->name }}" loading="lazy">
                                    @endif
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <a href="{{ $project->image ? asset('storage/' . $project->image) : asset('images/placeholder.jpg') }}" class="glightbox zoom-link" title="{{ $project->name }}">
                                                <i class="bi bi-zoom-in"></i>
                                            </a>
                                            <a href="{{ $project->url }}" class="details-link" title="View Project Details">
                                                <i class="bi bi-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="content">
                                    <h3>{{ $project->name }}</h3>
                                    <p>{!! $project->description !!}</p>
                                    @if($project->tags->count() > 0)
                                        <div class="tags">
                                            <strong>Etiquetes:</strong>
                                            @foreach($project->tags as $tag)
                                                <span class="badge bg-primary tag-filter" data-filter=".{{ str_replace(' ', '-', strtolower($tag->name)) }}">{!! $tag->name !!}</span>
                                            @endforeach
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div><!-- End Portfolio Item -->
                    @endforeach
                @else
                    <p>No hi ha projectes disponibles.</p>
                @endif
            </div><!-- End Portfolio Grid -->
        </div>
    </div>
</section><!-- Fi Secció Portfolio -->

<!-- About Section -->
    <section id="about" class="about section">
	
      <div class="container">

        <div class="row align-items-center">

          <!-- Image Column -->
          <div class="col-lg-6">
            <div class="about-image">
              <img src="{{ asset('assets/img/joan.jpg') }}" alt="About" class="img-fluid">
            </div>
          </div>

          <!-- Content Column -->
          <div class="col-lg-6">
            <div class="content">
              <h2>Creant excel·lència a través de la innovació i la dedicació</h2>
              <p class="lead">Sempre actiu , ara m'interesa donar una imatge mes seria. Buscare en el mon de les finances.</p>

              <p>En aquest projecte em centrare en una base de Dades per a portar la comptabilitat d'un treballador autonom.</p>

              <!-- Stats Row -->
              <div class="stats-row">
                <div class="stat-item">
                  <h3><span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>+</h3>
                  <p>Projects Completed</p>
                </div>
                <div class="stat-item">
                  <h3><span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1" class="purecounter"></span>+</h3>
                  <p>Years Experience</p>
                </div>
                <div class="stat-item">
                  <h3><span data-purecounter-start="0" data-purecounter-end="98" data-purecounter-duration="1" class="purecounter"></span>%</h3>
                  <p>Client Satisfaction</p>
                </div>
              </div><!-- End Stats Row -->

              <!-- CTA Button -->
              <div class="cta-wrapper">
                <a href="començemlanostrabasededades" class="btn-cta">
                  <span>Començem la nostra Base de dades.</span>
                  <i class="bi bi-arrow-right"></i>
                </a>
              </div>

            </div>
          </div>

        </div>

      </div>

    </section><!-- /About Section -->
	
	<!-- Services Section -->
    <section id="services" class="services section">

      <!-- Section Title -->
      <div class="container section-title">
        <h2>Services</h2>
        <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-4 col-md-6">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-palette"></i>
              </div>
              <h3>Creative Design</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-4 col-md-6">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-code-slash"></i>
              </div>
              <h3>Web Development</h3>
              <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-4 col-md-6">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-megaphone"></i>
              </div>
              <h3>Digital Marketing</h3>
              <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-4 col-md-6">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-graph-up-arrow"></i>
              </div>
              <h3>Business Strategy</h3>
              <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-4 col-md-6">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-shield-check"></i>
              </div>
              <h3>Security Solutions</h3>
              <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-4 col-md-6">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-headset"></i>
              </div>
              <h3>24/7 Support</h3>
              <p>Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

        </div>

      </div>

    </section><!-- /Services Section -->

@endsection