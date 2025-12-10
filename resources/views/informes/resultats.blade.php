@extends('layouts.app')

@section('title', 'Informe de Resultats')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">@yield('title')</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li><a href="/informes">Informes</a></li>
                        <li class="current">Resultats</li>
                    </ol>
                </nav>
            </div>
            <div class="col-12 col-md-6 text-md-end mt-3 mt-md-0">
                <div class="btn-group mb-2" role="group">
                    <a href="/informes" class="btn btn-outline-primary" title="Informes Vendes">
                        <i class="bi bi-graph-up"></i> <span class="d-none d-lg-inline">Inf. Vendes</span>
                    </a>
                    <a href="/informes/compras" class="btn btn-outline-success" title="Informes Compres">
                        <i class="bi bi-graph-down"></i> <span class="d-none d-lg-inline">Inf. Compres</span>
                    </a>
                    <a href="/informes/resultats" class="btn btn-info" title="Informe Resultats">
                        <i class="bi bi-bar-chart-line-fill"></i> <span class="d-none d-lg-inline">Resultats</span>
                    </a>
                </div>
                <div class="btn-group ms-2" role="group">
                    <a href="/comptabilitat/vendes/diari_vendes" class="btn btn-outline-secondary btn-sm">
                        <i class="bi bi-cart"></i> <span class="d-none d-sm-inline">Vendes</span>
                    </a>
                    <a href="/comptabilitat/compres/diari_compres" class="btn btn-outline-secondary btn-sm">
                        <i class="bi bi-truck"></i> <span class="d-none d-sm-inline">Compres</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title -->

<div class="container mt-4 mb-5"
    <!-- Navigation Buttons -->
    <div class="mb-3">
        <div class="btn-group" role="group">
            <a href="{{ route('informes.index') }}" class="btn btn-primary">
                <i class="bi bi-graph-up"></i> <span class="d-none d-lg-inline">Informes Vendes</span>
            </a>
            <a href="{{ route('informes.compras') }}" class="btn btn-success">
                <i class="bi bi-graph-down"></i> <span class="d-none d-lg-inline">Informes Compres</span>
            </a>
            <a href="{{ route('informes.resultats') }}" class="btn btn-warning active">
                <i class="bi bi-bar-chart-line"></i> <span class="d-none d-lg-inline">Resultats</span>
            </a>
            <a href="{{ route('compras.index') }}" class="btn btn-outline-success">
                <i class="bi bi-list-ul"></i> <span class="d-none d-lg-inline">Diari Compres</span>
            </a>
            <a href="{{ route('ventas.index') }}" class="btn btn-outline-primary">
                <i class="bi bi-list-check"></i> <span class="d-none d-lg-inline">Diari Vendes</span>
            </a>
            <a href="/admin/compras" class="btn btn-outline-secondary">
                <i class="bi bi-gear"></i> <span class="d-none d-lg-inline">Admin Compres</span>
            </a>
            <a href="/admin/ventas" class="btn btn-outline-secondary">
                <i class="bi bi-gear-fill"></i> <span class="d-none d-lg-inline">Admin Vendes</span>
            </a>
        </div>
    </div>

    <h1 class="mb-4">
        <i class="bi bi-bar-chart-line text-warning"></i> Informe de Resultats
    </h1>

    <!-- Filtres -->
    <div class="card mb-4 shadow-sm">
        <div class="card-header" style="background-color: #E8F4F8;">
            <i class="bi bi-funnel"></i> Filtres
        </div>
        <div class="card-body">
            <form method="GET" action="{{ route('informes.resultats') }}" class="row g-3">
                <div class="col-md-4">
                    <label for="year" class="form-label">Any</label>
                    <select name="year" id="year" class="form-select">
                        <option value="">Tots els anys</option>
                        @foreach($anys as $any)
                            <option value="{{ $any }}" {{ request('year') == $any ? 'selected' : '' }}>
                                {{ $any }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-3">
                    <label for="start_date" class="form-label">Data Inici</label>
                    <input type="date" name="start_date" id="start_date" class="form-control" 
                           value="{{ request('start_date') }}">
                </div>
                <div class="col-md-3">
                    <label for="end_date" class="form-label">Data Fi</label>
                    <input type="date" name="end_date" id="end_date" class="form-control" 
                           value="{{ request('end_date') }}">
                </div>
                <div class="col-md-2 d-flex align-items-end">
                    <button type="submit" class="btn w-100" style="background-color: #7CB9E8; color: white;">
                        <i class="bi bi-search"></i> Filtrar
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- KPIs -->
    <div class="row mb-4">
        <div class="col-md-3">
            <div class="card shadow-sm" style="border-left: 4px solid #7CB9E8;">
                <div class="card-body text-center">
                    <h6 class="text-muted">Total Vendes</h6>
                    <h3 style="color: #7CB9E8;">{{ number_format($totalVentas, 2) }}€</h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card shadow-sm" style="border-left: 4px solid #B4E7CE;">
                <div class="card-body text-center">
                    <h6 class="text-muted">Total Compres</h6>
                    <h3 style="color: #77B28C;">{{ number_format($totalCompras, 2) }}€</h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card shadow-sm" style="border-left: 4px solid #F5DEB3;">
                <div class="card-body text-center">
                    <h6 class="text-muted">Benefici Total</h6>
                    <h3 style="color: {{ $totalBeneficis >= 0 ? '#77B28C' : '#E89B9B' }};">
                        {{ number_format($totalBeneficis, 2) }}€
                    </h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card shadow-sm" style="border-left: 4px solid #C3B1E1;">
                <div class="card-body text-center">
                    <h6 class="text-muted">Marge de Benefici</h6>
                    <h3 style="color: {{ $margePercentatge >= 0 ? '#9B8AC6' : '#E89B9B' }};">
                        {{ number_format($margePercentatge, 2) }}%
                    </h3>
                </div>
            </div>
        </div>
    </div>

    <!-- Gràfic Comparatiu -->
    <div class="card mb-4 shadow-sm">
        <div class="card-header" style="background-color: #E8F4F8;">
            <i class="bi bi-graph-up-arrow"></i> Comparativa Vendes vs Compres per Mes
        </div>
        <div class="card-body">
            <div id="comparativaChart"></div>
        </div>
    </div>

    <!-- Gràfic de Beneficis -->
    <div class="card mb-4 shadow-sm">
        <div class="card-header" style="background-color: #E8F4F8;">
            <i class="bi bi-bar-chart"></i> Beneficis Mensuals
        </div>
        <div class="card-body">
            <div id="beneficisChart"></div>
        </div>
    </div>

    <!-- Top 5 Productes -->
    <div class="card mb-4 shadow-sm">
        <div class="card-header" style="background-color: #E8F4F8;">
            <i class="bi bi-trophy"></i> Top 5 Productes Més Venuts
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead style="background-color: #F0F8FF;">
                        <tr>
                            <th>Posició</th>
                            <th>Producte</th>
                            <th class="text-end">Unitats Venudes</th>
                            <th class="text-end">Ingressos Totals</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($topProductos as $index => $producto)
                        <tr>
                            <td>
                                @if($index === 0)
                                    <i class="bi bi-trophy-fill text-warning fs-5"></i>
                                @elseif($index === 1)
                                    <i class="bi bi-trophy text-secondary fs-5"></i>
                                @elseif($index === 2)
                                    <i class="bi bi-trophy text-danger fs-5"></i>
                                @else
                                    {{ $index + 1 }}
                                @endif
                            </td>
                            <td><strong>{{ $producto->descripcion }}</strong></td>
                            <td class="text-end">{{ number_format($producto->cantidad_total, 0) }}</td>
                            <td class="text-end" style="color: #77B28C;"><strong>{{ number_format($producto->ingresos, 2) }}€</strong></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Highcharts -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<script>
// Gràfic Comparatiu
Highcharts.chart('comparativaChart', {
    chart: {
        type: 'column',
        backgroundColor: '#FAFAFA'
    },
    title: {
        text: 'Vendes vs Compres per Mes',
        style: {
            color: '#5A5A5A',
            fontWeight: '500'
        }
    },
    xAxis: {
        categories: {!! json_encode($meses) !!},
        labels: {
            style: {
                color: '#666'
            }
        }
    },
    yAxis: {
        title: {
            text: 'Import (€)',
            style: {
                color: '#666'
            }
        },
        labels: {
            style: {
                color: '#666'
            }
        },
        gridLineColor: '#E8E8E8'
    },
    tooltip: {
        valuePrefix: '€',
        valueDecimals: 2,
        backgroundColor: 'rgba(255, 255, 255, 0.95)',
        borderColor: '#CCC',
        style: {
            color: '#333'
        }
    },
    plotOptions: {
        column: {
            borderRadius: 4,
            dataLabels: {
                enabled: true,
                format: '{point.y:.0f}€',
                style: {
                    color: '#666',
                    textOutline: 'none',
                    fontWeight: 'normal'
                }
            }
        }
    },
    legend: {
        itemStyle: {
            color: '#666'
        }
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'Vendes',
        data: {!! json_encode($ventasData) !!},
        color: '#7CB9E8'
    }, {
        name: 'Compres',
        data: {!! json_encode($comprasData) !!},
        color: '#B4E7CE'
    }]
});

// Gràfic de Beneficis
Highcharts.chart('beneficisChart', {
    chart: {
        type: 'area',
        backgroundColor: '#FAFAFA'
    },
    title: {
        text: 'Evolució del Benefici Mensual',
        style: {
            color: '#5A5A5A',
            fontWeight: '500'
        }
    },
    xAxis: {
        categories: {!! json_encode($meses) !!},
        labels: {
            style: {
                color: '#666'
            }
        }
    },
    yAxis: {
        title: {
            text: 'Benefici (€)',
            style: {
                color: '#666'
            }
        },
        labels: {
            style: {
                color: '#666'
            }
        },
        gridLineColor: '#E8E8E8',
        plotLines: [{
            value: 0,
            color: '#E89B9B',
            width: 2,
            zIndex: 5,
            dashStyle: 'Dash',
            label: {
                text: 'Punt d\'equilibri',
                style: {
                    color: '#E89B9B'
                }
            }
        }]
    },
    tooltip: {
        valuePrefix: '€',
        valueDecimals: 2,
        backgroundColor: 'rgba(255, 255, 255, 0.95)',
        borderColor: '#CCC',
        style: {
            color: '#333'
        }
    },
    plotOptions: {
        area: {
            fillOpacity: 0.3,
            lineWidth: 2,
            marker: {
                enabled: true,
                radius: 4,
                fillColor: '#FFFFFF',
                lineWidth: 2
            }
        }
    },
    legend: {
        itemStyle: {
            color: '#666'
        }
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'Benefici',
        data: {!! json_encode($beneficisData) !!},
        color: '#C3B1E1',
        negativeColor: '#E89B9B',
        negativeFillColor: 'rgba(232, 155, 155, 0.2)',
        fillColor: 'rgba(195, 177, 225, 0.2)'
    }]
});
</script>
@endsection
