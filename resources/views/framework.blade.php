@section('meta_keywords', 'frameworks, desenvolupament, aplicacions, web, estructures, programació')
@extends('layouts.app')

@section('title', 'Frameworks ')
@section('meta_description', 'Descobreix frameworks populars per desenvolupar aplicacions web de manera eficient i estructurada.')
@section('subtitle', 'són estructures de software que proporcionen una base i components reutilitzables per desenvolupar aplicacions més ràpidament i amb menys codi.')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <h1> @yield('title')</h1>
       <p>@yield('subtitle')</p>
        <nav class="breadcrumbs">
            <ol>
                <li><a href="/#services">Inici</a></li>
                <li class="current">@yield('title')</li>
            </ol>
        </nav>
    </div>
</div><!-- End Page Title -->

<!-- Features Section -->
<section id="features" class="features section">
    <div class="container">
        <!-- Filtres -->
        <div class="filter-buttons" style="display: flex; justify-content: center; margin-bottom: 2rem; flex-wrap: wrap; gap: 0.5rem;">
            <button class="filter-btn active" data-filter="all">Totes</button>
            
            <button class="filter-btn" data-filter="laravel">Laravel</button>
            <button class="filter-btn" data-filter="wordpress">WordPress</button>
            <button class="filter-btn" data-filter="codeigniter">CodeIgniter</button>
            <button class="filter-btn" data-filter="html">HTML</button>
            <button class="filter-btn" data-filter="php">PHP</button>
        </div>
        
        <div class="features-grid" id="features-grid">
            @php
                // Consulta modificada per obtenir totes les eines sense filtrar per etiquetes específiques
                $posts = \DB::connection('second')
                    ->table('posts')
                    ->join('categories', 'posts.category_id', '=', 'categories.id')
                    ->leftJoin('post_etiquetas', 'posts.id', '=', 'post_etiquetas.post_id')
                    ->leftJoin('etiquetas', 'post_etiquetas.etiqueta_id', '=', 'etiquetas.id')
                    ->where('posts.category_id', 17)
                    ->select('posts.*', 'categories.svg', 'etiquetas.name as etiqueta_name')
                    ->distinct()
                    ->get()
                    ->groupBy('id')
                    ->map(function ($group) {
                        $post = $group->first();
                        $post->etiquetas = $group->pluck('etiqueta_name')->filter()->unique()->values();
                        return $post;
                    });
            @endphp
            
            @forelse($posts as $post)
                <div class="features-card" data-etiquetas="{{ $post->etiquetas->implode(' ') }}">
                    <div class="icon-wrapper">
                        {!! $post->svg !!}
                    </div>
                    <h3><a href="/detall-post/{{ $post->id }}">{{ $post->title }}</a></h3>
                    <p>
                        {{ $post->excerpt ?? 'Sense descripció disponible.' }}
                    </p>
                    <div class="features-list">
                        <div class="feature-item">
                            <i class="bi bi-check-circle-fill"></i>
                            <span>Categoria: {{ \DB::connection('second')->table('categories')->where('id', $post->category_id)->value('name') }}</span>
                        </div>
                        <div class="feature-item">
                            <i class="bi bi-check-circle-fill"></i>
                            <span>Data de creació: {{ \Carbon\Carbon::parse($post->created_at)->format('d/m/Y') }}</span>
                        </div>
                        <div class="feature-item">
                            <i class="bi bi-check-circle-fill"></i>
                            <span>URL: <a href="{{ $post->url ?? '#' }}">Veure més</a></span>
                        </div>
                    </div>
                    <div class="image-container">
                        <img src="{{ $post->img ? '/storage/' . $post->img : asset('assets/img/illustration/illustration-14.webp') }}" alt="{{ $post->title }}" class="img-fluid">
                    </div>
                    <!-- Mostrar etiquetes -->
                    @if($post->etiquetas && $post->etiquetas->count() > 0)
                        <div style="padding: 0 1.5rem; margin-top: 1rem;">
                            <div style="display: flex; flex-wrap: wrap; gap: 0.5rem;">
                                @foreach($post->etiquetas as $etiqueta)
                                    <span class="etiqueta-filter" data-etiqueta="{{ strtolower($etiqueta) }}" style="background: #e9ecef; padding: 0.25rem 0.75rem; border-radius: 50px; font-size: 0.8rem; color: #495057; cursor: pointer;">
                                        {{ $etiqueta }}
                                    </span>
                                @endforeach
                            </div>
                        </div>
                    @endif
                </div>
            @empty
                <p>No hi ha posts a la categoria "eines".</p>
            @endforelse
        </div>
    </div>
</section><!-- /Features Section -->

<script>
document.addEventListener('DOMContentLoaded', function() {
    const filterButtons = document.querySelectorAll('.filter-btn');
    const etiquetaFilters = document.querySelectorAll('.etiqueta-filter');
    const featureCards = document.querySelectorAll('.features-card');
    
    // Funció per aplicar el filtre
    function aplicarFiltre(filterValue) {
        // Actualitzar botons de filtre
        filterButtons.forEach(btn => {
            if (btn.getAttribute('data-filter') === filterValue) {
                btn.classList.add('active');
            } else {
                btn.classList.remove('active');
            }
        });
        
        // Mostrar/amagar targetes segons el filtre
        if (filterValue === 'all') {
            featureCards.forEach(card => {
                card.style.display = 'block';
            });
        } else {
            featureCards.forEach(card => {
                const etiquetas = card.getAttribute('data-etiquetas').toLowerCase();
                if (etiquetas.includes(filterValue)) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
    }
    
    // Event listeners per als botons de filtre
    filterButtons.forEach(button => {
        button.addEventListener('click', function() {
            const filterValue = this.getAttribute('data-filter');
            aplicarFiltre(filterValue);
        });
    });
    
    // Event listeners per a les etiquetes
    etiquetaFilters.forEach(etiqueta => {
        etiqueta.addEventListener('click', function() {
            const etiquetaValue = this.getAttribute('data-etiqueta');
            aplicarFiltre(etiquetaValue);
        });
    });
});
</script>

@endsection