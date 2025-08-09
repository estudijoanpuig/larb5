@extends('layouts.app')

@section('title', 'Portfolio')

@section('content')
<!-- Inici Secció Portfolio -->
<section id="portfolio" class="portfolio section">
    <!-- Section Title -->
    <div class="container section-title">
        <h2>Portfolio</h2>
        <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
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
@endsection