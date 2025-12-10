@extends('layouts.app')

@section('title', 'Diari de Vendes')
@section('meta_description', 'Consulta el diari de vendes, gestiona clients, totals i accions de la comptabilitat de l\'empresa.')
@section('meta_keywords', 'diari de vendes, gestió, comptabilitat, clients, totals, accions, Laravel, Filament')

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
                            <li><a href="/comptabilitat/vendes/diari_vendes">gestio vendes</a></li>
                            <li class="current">@yield('title')</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-12 col-md-6 text-md-end mt-3 mt-md-0">
                    <div class="btn-group mb-2" role="group">
                        
                        <a href="/comptabilitat/compres/diari_compres" class="btn btn-outline-success" title="Diari de Compres">
                            <i class="bi bi-truck"></i> <span class="d-none d-lg-inline">Compres</span>
                        </a>
                        <a href="/informes" class="btn btn-outline-info" title="Informes">
                            <i class="bi bi-file-earmark-bar-graph"></i> <span class="d-none d-lg-inline">Informes</span>
                        </a>
                    </div>
                    <div class="btn-group ms-2" role="group">
                        <a href="/admin/ventas" class="btn btn-warning btn-sm" title="Gestió Vendes Filament">
                            <i class="bi bi-cart-check"></i> <span class="d-none d-sm-inline">Admin Vendes</span>
                        </a>
                        <a href="/admin/clientes/create" class="btn btn-warning btn-sm">
                            <i class="bi bi-person-plus"></i> <span class="d-none d-sm-inline">Client</span>
                        </a>
                        <a href="/admin/productos/create" class="btn btn-warning btn-sm">
                            <i class="bi bi-box-seam"></i> <span class="d-none d-sm-inline">Producte</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Title -->

<div class="container">
    <a href="{{ route('ventas.create') }}" class="btn btn-primary mb-3"><i class="fas fa-plus"></i> Crear Nova Venda</a>
    <div class="table-responsive">
        <table id="example" class="table table-striped nowrap">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Client</th>
                    <th>Data</th>
                    <th>Total</th>
                    <th>NOTES</th>
                    <th>Empleat</th>
					
                    <th>Accions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($ventas as $venta)
                <tr>
                    <td>{{ $venta->id }}</td>
                    <td>{{ $venta->cliente->nombre ?? 'N/A' }}</td>
                    <td>{{ $venta->fecha }}</td>					                    
                    <td>{{ number_format($venta->total, 2) }} €</td>
                    <td>{{ $venta->notas ?? 'N/A' }}</td>
                    <td>{{ $venta->empleado->nombre ?? 'N/A' }}</td>
                    <td>
                        <a href="{{ route('ventas.edit', $venta->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
                        <form action="{{ route('ventas.destroy', $venta->id) }}" method="POST" style="display:inline;" onsubmit="return confirm('Segur que vols eliminar aquesta venda?');">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

<style>
    #ventesTable thead th {
        background-color: #ADD8E6 !important;
        color: white;
    }
</style>

<script>
    new DataTable('#example', {
    responsive: true
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