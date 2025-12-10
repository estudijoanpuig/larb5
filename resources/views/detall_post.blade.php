@extends('layouts.app')

@section('content')
    <!-- Page Title -->
    <div class="page-title light-background">
      <div class="container">
        <h1>{{ $post->title ?? 'Portfolio Details' }}</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="/">Home</a></li>
			<li><a href="/web_development">Web Development</a></li>
            <li class="current">Detall post</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Portfolio Details Section -->
    <section id="portfolio-details" class="portfolio-details section">
      <div class="container">
        @if($post)
          <div class="visual-showcase">
            <div class="main-visual">
              <div class="banner-image">
                <img src="{{ $post->img ? '/storage/' . $post->img : asset('assets/img/portfolio/portfolio-5.webp') }}" alt="{{ $post->title }}" class="img-fluid banner-img">
              </div>
            </div>
          </div>

          <div class="content-section">
            <div class="row">
              <div class="container">
                <div class="project-overview">
                  <h2>{{ $post->excerpt ?? 'Sense resum disponible' }}</h2>
                  <div class="overview-text">{!! $post->content ?? 'Sense contingut complet disponible.' !!}</div>
                  <ul class="post-details-list">
                    @if($category_name)
                      <li><strong>Categoria:</strong> {{ $category_name }}</li>
                    @endif
                    @if($post->url)
                      <li><strong>URL:</strong> <a href="{{ $post->url }}" target="_blank">{{ $post->url }}</a></li>
                    @endif
                    @if($post->ins)
                      <li><strong>Instagram:</strong> <a href="{{ $post->ins }}" target="_blank">{{ $post->ins }}</a></li>
                    @endif
                    @if($post->face)
                      <li><strong>Facebook:</strong> <a href="{{ $post->face }}" target="_blank">{{ $post->face }}</a></li>
                    @endif
                    @if($post->youtube)
                      <li><strong>YouTube:</strong> <a data-fancybox="gallery" href="{{ $post->youtube }}" target="_blank">{{ $post->youtube }}</a></li>
                    @endif
                    @if($tags_list)
                      <li><strong>Etiquetes:</strong> {{ $tags_list }}</li>
                    @endif
                    @if($post->created_at)
                      <li><strong>Data de creació:</strong> {{ \Carbon\Carbon::parse($post->created_at)->format('d/m/Y') }}</li>
                    @endif
                    @if($post->updated_at)
                      <li><strong>Última actualització:</strong> {{ \Carbon\Carbon::parse($post->updated_at)->format('d/m/Y') }}</li>
                    @endif
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="project-footer">
            <div class="footer-navigation">
              @if($previous_post)
                <a href="/detall-post/{{ $previous_post->id }}" class="nav-link prev-project">
                  <span class="nav-direction">Anterior</span>
                  <span class="nav-title">{{ $previous_post->title }}</span>
                </a>
              @else
                <span class="nav-link prev-project disabled">
                  <span class="nav-direction">Anterior</span>
                  <span class="nav-title">Cap</span>
                </span>
              @endif
              <a href="/web_development" class="nav-link all-projects">
                <i class="bi bi-grid-3x3-gap"></i>
                <span>Tots els posts</span>
              </a>
              @if($next_post)
                <a href="/detall-post/{{ $next_post->id }}" class="nav-link next-project">
                  <span class="nav-direction">Següent</span>
                  <span class="nav-title">{{ $next_post->title }}</span>
                </a>
              @else
                <span class="nav-link next-project disabled">
                  <span class="nav-direction">Següent</span>
                  <span class="nav-title">Cap</span>
                </span>
              @endif
            </div>
          </div>
        @else
          <div class="content-section">
            <div class="row">
              <div class="col-lg-8 offset-lg-2">
                <p>No s'ha trobat el post amb ID {{ $post_id ?? 'desconegut' }} a la categoria 25.</p>
                <a href="/web_development">Tornar a Web Development</a>
              </div>
            </div>
          </div>
        @endif
      </div>
    </section><!-- /Portfolio Details Section -->

    <style>
      .banner-image {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: auto;
        max-width: 1200px;
        margin: 0 auto;
      }
      .banner-img {
        max-width: 100%;
        max-height: 500px;
        width: auto;
        height: auto;
        object-fit: contain;
      }
      .project-overview {
        text-align: left;
      }
      .overview-text {
        text-align: left;
      }
      .post-details-list {
        list-style: none;
        padding: 0;
        margin-top: 20px;
      }
      .post-details-list li {
        margin-bottom: 10px;
      }
      .post-details-list strong {
        margin-right: 10px;
      }
    </style>
@endsection