@extends('layouts.app')

@section('title', 'informe ventas')

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

    <div class="container">
        <!-- Formulari de filtres -->
        <div class="row mb-4">
            <div class="col-md-12">
                <form method="GET" action="{{ route('informes.index') }}" class="form-inline">
                    <div class="form-group mb-2 mr-2">
                        <label for="any" class="mr-2">Any:</label>
                        <select name="any" id="any" class="form-control">
                            <option value="">Tots els anys</option>
                            @foreach ($anys as $any)
                                <option value="{{ $any }}" {{ $anySeleccionat == $any ? 'selected' : '' }}>{{ $any }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group mb-2 mr-2">
                        <label for="data_inici" class="mr-2">Data Inici:</label>
                        <input type="date" name="data_inici" id="data_inici" class="form-control" value="{{ $dataInici }}">
                    </div>
                    <div class="form-group mb-2 mr-2">
                        <label for="data_final" class="mr-2">Data Final:</label>
                        <input type="date" name="data_final" id="data_final" class="form-control" value="{{ $dataFinal }}">
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">Filtrar</button>
                </form>
            </div>
        </div>

        <!-- Gràfic de vendes mensuals -->
        <div class="row mb-4">
            <div class="col-md-12">
                <div id="ventesChart" style="width:100%; height:400px;"></div>
            </div>
        </div>

        <!-- Gràfic circular de vendes per categoria de producte -->
        <div class="row mb-4">
            <div class="col-md-12">
                <div id="ventesCategoriaChart" style="width:100%; height:400px;"></div>
            </div>
        </div>

        <!-- Gràfic de vendes per empleat (columnes apilades per mesos) -->
        <div class="row mb-4">
            <div class="col-md-12">
                <div id="ventesEmpleatChart" style="width:100%; height:400px;"></div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Gràfic de vendes mensuals (column)
            Highcharts.chart('ventesChart', {
                chart: { type: 'column' },
                title: { text: 'Vendes Mensuals (2024-2025)' },
                xAxis: {
                    categories: @json($categoriesMensuals),
                    title: { text: 'Mes' }
                },
                yAxis: { title: { text: 'Total (€)' } },
                series: [
                    {
                        name: 'Vendes',
                        data: @json($vendesDataMensuals),
                        color: '#007bff'
                    }
                ],
                plotOptions: {
                    column: {
                        dataLabels: {
                            enabled: true,
                            format: '{y} €'
                        }
                    }
                }
            });

            // Gràfic circular de vendes per categoria de producte (pie)
            Highcharts.chart('ventesCategoriaChart', {
                chart: { type: 'pie' },
                title: { text: 'Vendes per Categoria de Producte' },
                series: [
                    {
                        name: 'Vendes',
                        data: [
                            @foreach ($categoriesProductes as $index => $categoria)
                                {
                                    name: '{{ $categoria }}',
                                    y: @json($vendesDataProductes[$index]),
                                    color: Highcharts.getOptions().colors[{{ $index % 10 }}]
                                }@if (!$loop->last),@endif
                            @endforeach
                        ]
                    }
                ],
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} % ({point.y} €)'
                        }
                    }
                }
            });

            // Gràfic de vendes per empleat (columnes apilades per mesos)
            Highcharts.chart('ventesEmpleatChart', {
                chart: { type: 'column' },
                title: { text: 'Vendes per Emplat per Mes' },
                xAxis: {
                    categories: @json($categoriesEmpleats),
                    title: { text: 'Mes' }
                },
                yAxis: { title: { text: 'Total (€)' } },
                series: @json($vendesDataEmpleats),
                plotOptions: {
                    column: {
                        stacking: 'normal', // Apilat per mesos
                        dataLabels: {
                            enabled: true,
                            format: '{y} €'
                        }
                    }
                },
                legend: {
                    enabled: true
                }
            });
        });
    </script>
@endsection