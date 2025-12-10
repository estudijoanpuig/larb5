@section('meta_keywords', 'portfolio, projectes, vps, ubuntu, galeria, categories')
@extends('layouts.app')
@section('title', 'Portfolio')
@section('meta_robots', 'noindex, nofollow')
@section('meta_description', 'Galeria de projectes allotjats en VPS Ubuntu. Mostra de treballs i categories.')
@section('content')

 <!-- Hero Section -->
    <section id="hero" class="hero section">

      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="hero-content">
              <h1>Enfocats <span>cap un futur digital</span></h1>
              <p>A partir d'ara farem un ús extensiu de la intel·ligència artificial.</p>
              <div class="hero-actions ai-links">
                <ul class="ai-list-horizontal">
                  <li><a href="https://chat.openai.com/" target="_blank" rel="noopener" class="ai-link"><img src="/assets/img/ai/chatgpt.png" alt="ChatGPT" class="ai-icon"> ChatGPT</a></li>
                  <li><a href="https://gemini.google.com/" target="_blank" rel="noopener" class="ai-link"><img src="/assets/img/ai/gemini.png" alt="Gemini" class="ai-icon"> Gemini</a></li>
                  <li><a href="https://grok.x.ai/" target="_blank" rel="noopener" class="ai-link"><img src="/assets/img/ai/grok.png" alt="Grok" class="ai-icon"> Grok</a></li>
                  <li><a href="https://copilot.microsoft.com/" target="_blank" rel="noopener" class="ai-link"><img src="/assets/img/ai/copilot.png" alt="Copilot" class="ai-icon"> Copilot</a></li>
                  <li><a href="https://claude.ai/" target="_blank" rel="noopener" class="ai-link"><img src="/assets/img/ai/claude.png" alt="Claude" class="ai-icon"> Claude</a></li>
                  <li><a href="https://perplexity.ai/" target="_blank" rel="noopener" class="ai-link"><img src="/assets/img/ai/perplexity.png" alt="Perplexity" class="ai-icon"> Perplexity</a></li>
                  <li><a href="https://www.deepseek.com/" target="_blank" rel="noopener" class="ai-link"><img src="/assets/img/ai/deepseek.png" alt="DeepSeek" class="ai-icon"> DeepSeek</a></li>
                </ul>
              </div>
			  
			  <h1>Analisis <span><a href="/nanogallery/stocks/">Stocks relacionats IA </a></span></h1>
              <p>I altres interessants.</p>
			  
            <style>
              .ai-list-horizontal {
                display: flex;
                gap: 1.5rem;
                padding-left: 0;
                margin-bottom: 1.5rem;
                flex-wrap: wrap;
                align-items: center;
              }
              .ai-list-horizontal li {
                list-style: none;
                display: flex;
                align-items: center;
                margin: 0;
                padding: 0;
              }
              .ai-link {
                display: flex;
                align-items: center;
                font-weight: 500;
                font-size: 1.1rem;
                color: #222;
                text-decoration: none;
                transition: color 0.2s;
              }
              .ai-link:hover {
                color: #007bff;
              }
              .ai-icon {
                width: 32px;
                height: 32px;
                margin-right: 0.5rem;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.08);
                background: #fff;
                object-fit: contain;
              }
            </style>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="hero-image">
             <a href="/cerca"> <img src="{{ asset('assets/img/1.webp') }}" class="img-fluid floating" alt=""> </a>
            </div>
          </div>
        </div>
      </div>

    </section><!-- /Hero Section -->

<!-- Inici Secció Portfolio -->
<section id="portfolio" class="portfolio section">
    <!-- Section Title -->
    <div class="container section-title">
        <h2>En un VPS amb Ubuntu 24.04 hostejo diferents projectes</h2>
       
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
        <span class="badge bg-primary tag-filter" 
              data-filter=".{{ str_replace(' ', '-', strtolower($tag->name)) }}"
              onclick="filterByTag('.{{ str_replace(' ','-', strtolower($tag->name)) }}')">
            {!! $tag->name !!}
        </span>
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

<style type="text/css">
/* Espai mínim entre seccions */
.hero.section,
.portfolio.section,
.about.section {
    padding: 0 !important;
}

.section {
    margin-bottom: 0 !important;
}

/* Espai mínim del títol de secció */
.section-title {
    margin-bottom: 0 !important;
    padding-top: 0 !important;
}

h2 {
    margin-bottom: 0 !important;
    margin-top: 0 !important;
}

/* Estils per als badges d'etiquetes */
.tags .badge {
    margin-right: 5px;
    margin-bottom: 5px;
    cursor: pointer;
    transition: all 0.3s ease;
    display: inline-block;
}

.tags .badge:hover {
    opacity: 0.8;
    transform: translateY(-2px);
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
}

/* Estil quan es filtra per una etiqueta */
.isotope-item:not(.hidden) {
    animation: fadeIn 0.5s ease;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}
</style>

<script type="text/javascript">
// Funció per filtrar per etiqueta
function filterByTag(tagClass) {
    // Primer, eliminar la classe 'filter-active' de tots els filtres
    document.querySelectorAll('.portfolio-filters li').forEach(item => {
        item.classList.remove('filter-active');
    });
    
    // Marcar el filtre "All Projects" com actiu si s'ha fet clic en una etiqueta
    document.querySelector('.portfolio-filters li[data-filter="*"]').classList.add('filter-active');
    
    // Aplicar el filtre amb Isotope
    const isotopeContainer = document.querySelector('.isotope-container');
    if (isotopeContainer) {
        const iso = Isotope.data(isotopeContainer);
        if (iso) {
            iso.arrange({
                filter: tagClass
            });
        }
    }
    
    // Desplaçar-se a la secció de portfoli si no hi és visible
    document.getElementById('portfolio').scrollIntoView({ behavior: 'smooth' });
}

// Inicialitzar els esdeveniments de clic
document.addEventListener('DOMContentLoaded', function() {
    // Filtre principal (categories i "All Projects")
    document.querySelectorAll('.portfolio-filters li').forEach(item => {
        item.addEventListener('click', function() {
            // Eliminar classe activa de tots els elements
            document.querySelectorAll('.portfolio-filters li').forEach(el => {
                el.classList.remove('filter-active');
            });
            // Afegir classe activa a l'element clicat
            this.classList.add('filter-active');
        });
    });
});
</script>


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
              <p class="lead">Sempre actiu, ara m'interessa donar una imatge més seria. Buscaré en el món de les finances.</p>

              <p>En aquest projecte em centraré en una base de dades per a portar la comptabilitat d'un treballador autònom.</p>

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
                <a href="/començem-la-nostra-base-de-dades" class="btn-cta">
                  <span>Començem la nostra base de dades.</span>
                  <i class="bi bi-arrow-right"></i>
                </a>
              </div>

            </div>
          </div>

        </div>

      </div>

    </section><!-- /About Section -->
	
	
    

@endsection