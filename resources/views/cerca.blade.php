@section('meta_keywords', 'cerca, eines, resultats, interessos, web, recursos')
@extends('layouts.app')

@section('title', 'Cerca segons els teus interessos a title i excerpt')
@section('meta_description', 'Cerca entre totes les eines disponibles segons els teus interessos. Resultats ràpids i rellevants.')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <h1>@yield('title')</h1>
        <p>Cerca entre totes les eines disponibles</p>
        <nav class="breadcrumbs">
            <ol>
                <li><a href="/#services">Inici</a></li>
                <li class="current">Cerca d'eines</li>
            </ol>
        </nav>
    </div>
</div><!-- End Page Title -->

<!-- Features Section -->
<section id="features" class="features section">
    <div class="container">
        <!-- Formulari de Cerca -->
        <div class="search-container" style="background: white; padding: 2rem; border-radius: 12px; box-shadow: 0 5px 15px rgba(0,0,0,0.08); margin-bottom: 2rem;">
            <form id="search-form" method="GET" action="{{ request()->url() }}">
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="search" style="display: block; margin-bottom: 0.5rem; font-weight: 500;">Paraules clau</label>
                            <input type="text" id="search" name="search" class="form-control" placeholder="Introdueix paraules clau..." value="{{ request('search') }}" style="padding: 0.75rem; border-radius: 8px; border: 1px solid #dee2e6; width: 100%;">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="category" style="display: block; margin-bottom: 0.5rem; font-weight: 500;">Categoria</label>
                            <select id="category" name="category" class="form-control" style="padding: 0.75rem; border-radius: 8px; border: 1px solid #dee2e6; width: 100%;">
                                <option value="">Totes les categories</option>
                                @php
                                    // Consulta simplificada sense parent_id
                                    $categories = \DB::connection('second')
                                        ->table('categories')
                                        ->where('id', 17)
                                        ->orWhere('name', 'like', '%eines%')
                                        ->get();
                                @endphp
                                @foreach($categories as $cat)
                                    <option value="{{ $cat->id }}" {{ request('category') == $cat->id ? 'selected' : '' }}>{{ $cat->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary" style="background: var(--primary-color); border: none; padding: 0.75rem 1.5rem; border-radius: 8px; color: white; font-weight: 500;">
                            <i class="bi bi-search"></i> Cercar
                        </button>
                        <a href="{{ request()->url() }}" class="btn btn-secondary" style="background: #6c757d; border: none; padding: 0.75rem 1.5rem; border-radius: 8px; color: white; font-weight: 500; margin-left: 0.5rem;">
                            Netejar
                        </a>
                    </div>
                </div>
            </form>
        </div>

        <!-- Resultats de la cerca -->
        <div id="search-results">
            @if(request()->has('search') || request()->has('category'))
                <div class="results-info" style="margin-bottom: 1.5rem;">
                    <h3>Resultats de la cerca</h3>
                    @if(request('search'))
                        <p>Has cercat: <strong>"{{ request('search') }}"</strong></p>
                    @endif
                </div>
            @endif

            <div class="features-grid">
                @php
                    // Consulta amb cerca
                    $query = \DB::connection('second')
                        ->table('posts')
                        ->join('categories', 'posts.category_id', '=', 'categories.id')
                        ->leftJoin('post_etiquetas', 'posts.id', '=', 'post_etiquetas.post_id')
                        ->leftJoin('etiquetas', 'post_etiquetas.etiqueta_id', '=', 'etiquetas.id')
                        ->where('posts.category_id', 17);

                    // Afegir condicions de cerca si s'han especificat
                    if (request('search')) {
                        $searchTerm = request('search');
                        $query->where(function($q) use ($searchTerm) {
                            $q->where('posts.title', 'like', "%{$searchTerm}%")
                              ->orWhere('posts.excerpt', 'like', "%{$searchTerm}%")
                              ->orWhere('etiquetas.name', 'like', "%{$searchTerm}%");
                        });
                    }

                    if (request('category')) {
                        $query->where('categories.id', request('category'));
                    }

                    $posts = $query->select('posts.*', 'categories.svg', 'etiquetas.name as etiqueta_name')
                        ->orderBy('posts.updated_at', 'desc') // Ordenar per updated_at descendent
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
                    <div class="col-12">
                        <div class="no-results" style="text-align: center; padding: 3rem; background: #f8f9fa; border-radius: 12px;">
                            <h3>No s'han trobar resultats</h3>
                            <p>Prova amb altres paraules clau o categories.</p>
                        </div>
                    </div>
                @endforelse
            </div>
        </div>
    </div>
</section><!-- /Features Section -->

<script>
document.addEventListener('DOMContentLoaded', function() {
    const etiquetaFilters = document.querySelectorAll('.etiqueta-filter');
    const featureCards = document.querySelectorAll('.features-card');
    const searchInput = document.getElementById('search');
    const categorySelect = document.getElementById('category');
    const searchForm = document.getElementById('search-form');
    
    // Funció per aplicar el filtre per etiqueta
    function aplicarFiltreEtiqueta(etiquetaValue) {
        // Posar l'etiqueta al camp de cerca
        searchInput.value = etiquetaValue;
        
        // Seleccionar "Totes les categories"
        categorySelect.value = "";
        
        // Enviar el formulari
        searchForm.submit();
    }
    
    // Event listeners per a les etiquetes
    etiquetaFilters.forEach(etiqueta => {
        etiqueta.addEventListener('click', function() {
            const etiquetaValue = this.getAttribute('data-etiqueta');
            aplicarFiltreEtiqueta(etiquetaValue);
        });
    });
});
</script>

@endsection