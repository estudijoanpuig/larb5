@extends('layouts.app')

@section('title', 'Informe de Vendes')

@section('content')

    <!-- Page Title -->
    <div class="page-title light-background">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <h1>@yield('title')</h1>
                    <nav class="breadcrumbs">
                        <ol>
                            <li><a href="/">Inici</a></li>
                            <li><a href="/comptabilitat/vendes/diari_vendes">gestio vendas</a></li>
                            <li class="current">@yield('title')</li>
                        </ol>
                    </nav>
                </div>

                <nav id="sub" class="navmenu">
                    <ul>

                        <li class="dropdown extended-dropdown-2"><a href="#"><span>COMPTABILITAT</span> <i
                                    class="bi bi-chevron-down toggle-dropdown"></i></a>
                            <ul>
                                <li>
                                    <a href="/comptabilitat/vendes/diari_vendes">
                                        <div class="menu-item-content">
                                            <div class="menu-icon">
                                                <i class="bi bi-cart"></i>
                                            </div>
                                            <div class="menu-text">
                                                <span class="menu-title">Diari de vendes </span>
                                                <span class="menu-description">gestio de les vendes</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="/comptabilitat/vendes/diari_vendes">
                                        <div class="menu-item-content">
                                            <div class="menu-icon">
                                                <i class="bi bi-truck"></i>
                                            </div>
                                            <div class="menu-text">
                                                <span class="menu-title">Diari de Compres</span>
                                                <span class="menu-description">gestio de compres i despesses</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="/informes">
                                        <div class="menu-item-content">
                                            <div class="menu-icon">
                                                <i class="bi bi-file-earmark-bar-graph"></i>
                                            </div>
                                            <div class="menu-text">
                                                <span class="menu-title">Informe de vendes </span>
                                                <span class="menu-description">A traves del filtre podem veure l'evolucio
                                                    per anys</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <div class="d-grid gap-2 d-md-block">
                            <button type="button" class="btn btn-warning"><a href="/admin/clientes/create">Crear Client
                                </a></button>
                            <button type="button" class="btn btn-warning"><a href="/admin/productos/create">Crear Producte
                                </a></button>
                        </div>

                        </li><!-- End Mega Menu 2 -->

                    </ul>
                </nav>

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
