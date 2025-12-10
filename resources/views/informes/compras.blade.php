@section('meta_keywords', 'informe, compres, gestió, exportació, comptabilitat, empresa')
@extends('layouts.app')

@section('title', 'Informe de Compres')
@section('meta_description', 'Informe detallat de compres realitzades. Analitza i exporta dades per una millor gestió.')

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
                            <li><a href="/informes/compras">Informes Compres</a></li>
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
                        <a href="/informes" class="btn btn-outline-info" title="Informes Vendes">
                            <i class="bi bi-file-earmark-bar-graph"></i> <span class="d-none d-lg-inline">Inf. Vendes</span>
                        </a>
                        <a href="/informes/compras" class="btn btn-info" title="Informes Compres">
                            <i class="bi bi-file-earmark-bar-graph-fill"></i> <span class="d-none d-lg-inline">Inf. Compres</span>
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
        <form method="GET" action="{{ route('informes.compras') }}">
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
        <h2>Compres per Mes</h2>
        <div id="comprasPorMesChart"></div>
    </div>

    <div class="chart-container">
        <h2>Compres per Categoria de Producte</h2>
        <div id="comprasPorCategoriaChart"></div>
    </div>

    <div class="chart-container">
        <h2>Compres per Proveïdor per Mes</h2>
        <div id="comprasPorProveedorChart"></div>
    </div>

    <script>
        // Gràfic de compres per mes
        Highcharts.chart('comprasPorMesChart', {
            title: {
                text: 'Compres Totals per Mes'
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
                name: 'Compres',
                data: @json($totals),
                color: '#28a745'
            }],
            exporting: {
                enabled: true
            }
        });

        // Gràfic de compres per categoria
        Highcharts.chart('comprasPorCategoriaChart', {
            chart: {
                type: 'pie'
            },
            title: {
                text: 'Compres per Categoria de Producte'
            },
            series: [{
                name: 'Compres',
                data: @json($categorias).map((categoria, index) => ({
                    name: categoria,
                    y: @json($comprasCategoria)[index]
                })),
                colors: ['#90EE90', '#66CDAA', '#20B2AA', '#3CB371', '#2E8B57', '#228B22']
            }],
            exporting: {
                enabled: true
            }
        });

        // Gràfic de compres per proveïdor (columnes apilades)
        Highcharts.chart('comprasPorProveedorChart', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Compres per Proveïdor per Mes'
            },
            xAxis: {
                categories: @json($mesesProveedor)
            },
            yAxis: {
                title: {
                    text: 'Import (€)'
                }
            },
            plotOptions: {
                column: {
                    stacking: 'normal'
                }
            },
            series: @json($series),
            colors: ['#28a745', '#20c997', '#17a2b8', '#6610f2', '#fd7e14', '#dc3545'],
            exporting: {
                enabled: true
            }
        });
    </script>
@endsection


<link rel="stylesheet" type="text/css" href=" https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.3/css/bootstrap.min.css " />
<link rel="stylesheet" type="text/css" href=" https://cdn.datatables.net/2.3.2/css/dataTables.bootstrap5.css " />
<link rel="stylesheet" type="text/css" href=" https://cdn.datatables.net/responsive/3.0.5/css/responsive.bootstrap5.css " />

<script type="text/javascript" src=" https://code.jquery.com/jquery-3.7.1.js "></script>
<script type="text/javascript" src=" https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.3/js/bootstrap.bundle.min.js "></script>
<script type="text/javascript" src=" https://cdn.datatables.net/2.3.2/js/dataTables.js "></script>
<script type="text/javascript" src=" https://cdn.datatables.net/2.3.2/js/dataTables.bootstrap5.js "></script>
<script type="text/javascript" src=" https://cdn.datatables.net/responsive/3.0.5/js/dataTables.responsive.js "></script>
<script type="text/javascript" src=" https://cdn.datatables.net/responsive/3.0.5/js/responsive.bootstrap5.js "></script>
