@section('meta_keywords', 'web development, desenvolupament, posts, recursos, eines, pràctiques')
@extends('layouts.app')

@section('title', 'Web Development')
@section('meta_description', 'Posts i recursos sobre desenvolupament web. Descobreix eines i bones pràctiques.')

@section('content')
    <!-- Page Title -->
    <div class="page-title light-background">
        <div class="container">
            <h1>@yield('title')</h1>
            <p>Posts de la categoria 25 de la segona base de dades.</p>
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
            <!-- Filtre horitzontal per etiquetes -->
            <div class="filter-horizontal">
                <ul class="nav nav-pills mb-3">
                    <li class="nav-item">
                        <button class="nav-link active" data-filter="all">Tots</button>
                    </li>
                    @foreach($uniqueTags as $tag)
                        <li class="nav-item">
                            <button class="nav-link" data-filter="{{ $tag }}">{{ $tag }}</button>
                        </li>
                    @endforeach
                </ul>
            </div>

            <div class="features-grid">
                @forelse($posts as $post)
                    <div class="features-card" data-tags="{{ $post->tags_list ?? '' }}">
                        <h3><a href="/detall-post/{{ $post->id }}">{{ $post->title }}</a></h3>
                        <p>{{ $post->excerpt ?? 'Sense descripció disponible.' }}</p>
                        <div class="features-list">
                            <div class="feature-item">
                                <i class="bi bi-check-circle-fill"></i>
                                <span>Categoria: {{ $post->category_name }} | {{ \Carbon\Carbon::parse($post->created_at)->format('d/m/Y') }}</span>
                            </div>
                            
                            <div class="feature-item">
                                <i class="bi bi-check-circle-fill"></i>
                                <span>URL: <a href="{{ $post->url ?? '#' }}">Veure més</a></span>
                            </div>
                            <div class="feature-item">
                                <i class="bi bi-tags"></i>
                                <span>Etiquetes: {{ $post->tags_list ?? 'Cap' }}</span>
                            </div>
                        </div>
                        <div class="image-container">
                            <img src="{{ $post->img ? '/storage/' . $post->img : asset('assets/img/illustration/illustration-14.webp') }}" alt="{{ $post->title }}" class="img-fluid">
                        </div>
                    </div>
                @empty
                    <p>No hi ha posts a la categoria 25.</p>
                @endforelse
            </div>
        </div>
    </section><!-- /Features Section -->

    <!-- JavaScript per al filtre -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const buttons = document.querySelectorAll('.filter-horizontal .nav-link');
            const cards = document.querySelectorAll('.features-card');

            buttons.forEach(button => {
                button.addEventListener('click', function() {
                    buttons.forEach(btn => btn.classList.remove('active'));
                    this.classList.add('active');

                    const filter = this.getAttribute('data-filter');

                    cards.forEach(card => {
                        const tags = card.getAttribute('data-tags');
                        if (filter === 'all' || (tags && tags.includes(filter))) {
                            card.style.display = 'block';
                        } else {
                            card.style.display = 'none';
                        }
                    });
                });
            });
        });
    </script>
@endsection