@extends('layouts.app')

@section('title', 'Visualitzador de Stocks PHP')
@section('meta_description', 'Visualització de projectes d\'accions amb imatges')
@section('meta_keywords', 'stocks, accions, php, visualitzador, imatges')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <!-- Header del Gráfico -->
            <div class="card mb-1">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h3 class="card-title mb-0">Netflix (NFLX) - Gráfic en Temps Real</h3>
                            <p class="text-muted mb-0">Dades en temps real del NASDAQ • TradingView</p>
                        </div>
                        <div>
                            <a href="/" class="btn btn-outline-secondary">
                                <i class="fas fa-arrow-left me-1"></i> tornar a l'inici
                            </a>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
<!-- End Page Title -->

<!-- Contenido Principal -->
<div class="container mt-4">
    <div class="row">
        <div class="col-12">
            

            <!-- Gráfico TradingView -->
            <div class="card">
                <div class="card-body p-0">
                    <div id="tradingview-chart" style="height: 600px; width: 100%;"></div>
                </div>
            </div>

            
        </div>
    </div>
</div>

<!-- Script de TradingView -->
<script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        initTradingViewChart();
    });
    
    function initTradingViewChart() {
        new TradingView.widget({
            "container_id": "tradingview-chart",
            "width": "100%",
            "height": "600",
            "symbol": "NASDAQ:NFLX",
            "interval": "D",
            "timezone": "exchange",
            "theme": "light",
            "style": "1",
            "locale": "es",
            "toolbar_bg": "#f1f3f6",
            "enable_publishing": false,
            "allow_symbol_change": true,
            "details": true,
            "hotlist": true,
            "calendar": true,
            "studies": [
                "RSI@tv-basicstudies",
                "Volume@tv-basicstudies"
            ],
            "show_popup_button": true,
            "popup_width": "1000",
            "popup_height": "650",
            "withdateranges": true,
            "range": "1Y",
            "hide_side_toolbar": false,
            "allow_symbol_change": true,
            "save_image": true,
            "watchlist": [
                "NASDAQ:NFLX",
					"BME:SAB",
					"BME:BKT",
					"NYSE:ORCL",
                    "NASDAQ:AMZN",
                    "NASDAQ:NVDA",
                    "NASDAQ:GOOGL",
                    "NASDAQ:MSFT"
            ],
            "studies_overrides": {
                "volume.volume.color.0": "#E50914",
                "volume.volume.color.1": "#10B981"
            }
        });
    }
</script>

@endsection