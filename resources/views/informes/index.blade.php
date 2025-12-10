@section('meta_keywords', 'informe, vendes, gestió, exportació, comptabilitat, empresa')
@extends('layouts.app')

@section('title', 'Informe de Vendes')
@section('meta_description', 'Informe detallat de vendes realitzades. Analitza i exporta dades per una millor gestió.')

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
                            <li class="current">@yield('title')</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-12 col-md-6 text-md-end mt-3 mt-md-0">
                    <div class="btn-group mb-2" role="group">
                        <a href="/comptabilitat/vendes/diari_vendes" class="btn btn-outline-primary" title="Diari de Vendes">
                            <i class="bi bi-cart"></i> <span class="d-none d-lg-inline">Vendes</span>
                        </a>
                        <a href="/comptabilitat/compres/diari_compres" class="btn btn-outline-success" title="Diari de Compres">
                            <i class="bi bi-truck"></i> <span class="d-none d-lg-inline">Compres</span>
                        </a>
                        <a href="/informes" class="btn btn-info" title="Informes Vendes">
                            <i class="bi bi-file-earmark-bar-graph-fill"></i> <span class="d-none d-lg-inline">Inf. Vendes</span>
                        </a>
                        <a href="/informes/compras" class="btn btn-outline-info" title="Informes Compres">
                            <i class="bi bi-file-earmark-bar-graph"></i> <span class="d-none d-lg-inline">Inf. Compres</span>
                        </a>
                    </div>
                    <div class="btn-group ms-2" role="group">
                        <a href="/admin/ventas" class="btn btn-warning btn-sm" title="Gestió Vendes Filament">
                            <i class="bi bi-cart-check"></i> <span class="d-none d-sm-inline">Admin Vendes</span>
                        </a>
                        <a href="/admin/compras" class="btn btn-warning btn-sm" title="Gestió Compres Filament">
                            <i class="bi bi-truck-front"></i> <span class="d-none d-sm-inline">Admin Compres</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Title -->


    <!-- Estils bàsics -->
    <style>
        .chart-container {
            max-width: 800px;
            margin: 20px auto;
        }

        .filter-form {
            max-width: 800px;
            margin: 20px auto;
            display: flex;
            gap: 10px;
            align-items: center;
        }
    </style>


    <!-- Formulari de filtres -->
    <div class="filter-form">
        <form method="GET" action="{{ route('informes.index') }}">
            <label for="year">Any:</label>
            <select name="year" id="year" onchange="this.form.submit()">
                <option value="">Tots els anys</option>
                @foreach ($anys as $any)
                    <option value="{{ $any }}" {{ request('year') == $any ? 'selected' : '' }}>{{ $any }}
                    </option>
                @endforeach
            </select>

            <label for="start_date">Data Inici:</label>
            <input type="date" name="start_date" id="start_date" value="{{ request('start_date') }}"
                onchange="this.form.submit()">

            <label for="end_date">Data Fi:</label>
            <input type="date" name="end_date" id="end_date" value="{{ request('end_date') }}"
                onchange="this.form.submit()">

            <button type="submit">Filtrar</button>
        </form>
    </div>

    <div class="chart-container">
        <h2>Vendes per Mes (2025)</h2>
        <div id="ventasPorMesChart"></div>
    </div>

    <div class="chart-container">
        <h2>Vendes per Categoria de Producte</h2>
        <div id="ventasPorCategoriaChart"></div>
    </div>

    <div class="chart-container">
        <h2>Vendes per Empleat per Mes (2025)</h2>
        <div id="ventasPorEmpleatChart"></div>
    </div>

    <script>
        // Gràfic de vendes per mes
        Highcharts.chart('ventasPorMesChart', {
            title: {
                text: 'Vendes Totals per Mes'
            },
            xAxis: {
                categories: @json($meses)
            },
            yAxis: {
                title: {
                    text: 'Import (€)'
                }
            },
            series: [{
                type: 'column',
                name: 'Vendes',
                data: @json($totals)
            }],
            exporting: {
                enabled: true
            }
        });

        // Gràfic de vendes per categoria
        Highcharts.chart('ventasPorCategoriaChart', {
            title: {
                text: 'Vendes per Categoria de Producte'
            },
            xAxis: {
                categories: @json($categorias)
            },
            yAxis: {
                title: {
                    text: 'Import (€)'
                }
            },
            series: [{
                type: 'pie',
                name: 'Vendes',
                data: @json($ventasCategoria)
            }],
            exporting: {
                enabled: true
            }
        });

        // Gràfic de vendes per empleat (columnes apilades)
        Highcharts.chart('ventasPorEmpleatChart', {
            title: {
                text: 'Vendes per Empleat per Mes'
            },
            xAxis: {
                categories: @json($mesesEmpleat)
            },
            yAxis: {
                title: {
                    text: 'Import (€)'
                }
            },
            series: @json($series),
            chart: {
                type: 'column'
            },
            plotOptions: {
                column: {
                    stacking: 'normal' // Apila les columnes
                }
            },
            exporting: {
                enabled: true
            }
        });
    </script>


@endsection
