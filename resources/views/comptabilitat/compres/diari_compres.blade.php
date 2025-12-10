@section('meta_keywords', 'diari de compres, gestió, comptabilitat, proveïdors, totals, empresa')
@extends('layouts.app')

@section('title', 'Diari de Compres')
@section('meta_description', 'Consulta el diari de compres, gestiona proveïdors, totals i accions de la comptabilitat de l\'empresa.')

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
                            <li><a href="/comptabilitat/compres/diari_compres">gestio compres</a></li>
                            <li class="current">@yield('title')</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-12 col-md-6 text-md-end mt-3 mt-md-0">
                    <div class="btn-group mb-2" role="group">
                        <a href="/comptabilitat/vendes/diari_vendes" class="btn btn-outline-primary" title="Diari de Vendes">
                            <i class="bi bi-cart"></i> <span class="d-none d-lg-inline">Vendes</span>
                        </a>
                        
                        <a href="/informes" class="btn btn-outline-info" title="Informes">
                            <i class="bi bi-file-earmark-bar-graph"></i> <span class="d-none d-lg-inline">Informes</span>
                        </a>
                    </div>
                    <div class="btn-group ms-2" role="group">
                        <a href="/admin/compras" class="btn btn-warning btn-sm" title="Gestió Compres Filament">
                            <i class="bi bi-truck-front"></i> <span class="d-none d-sm-inline">Admin Compres</span>
                        </a>
                        <a href="/admin/proveidors/create" class="btn btn-warning btn-sm">
                            <i class="bi bi-person-plus"></i> <span class="d-none d-sm-inline">Proveïdor</span>
                        </a>
                        <a href="/admin/productos/create" class="btn btn-warning btn-sm">
                            <i class="bi bi-box-seam"></i> <span class="d-none d-sm-inline">Producte</span>
                        </a>
                    </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Title -->

<div class="container">
    <a href="{{ route('compras.create') }}" class="btn btn-primary mb-3"><i class="fas fa-plus"></i> Crear Nova Compra</a>
    <div class="table-responsive">
        <table id="example" class="table table-striped nowrap">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Proveïdor</th>
                    <th>Data</th>
                    <th>Total</th>
                    <th>NOTES</th>
                    <th>Empleat</th>
					
                    <th>Accions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($compras as $compra)
                <tr>
                    <td>{{ $compra->id }}</td>
                    <td>{{ $compra->proveedor->nombre ?? 'N/A' }}</td>
                    <td>{{ $compra->fecha }}</td>					                    
                    <td>{{ number_format($compra->total, 2) }} €</td>
                    <td>{{ $compra->notas ?? 'N/A' }}</td>
                    <td>{{ $compra->empleado->nombre ?? 'N/A' }}</td>
                    <td>
                        <a href="{{ route('compras.edit', $compra->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
                        <form action="{{ route('compras.destroy', $compra->id) }}" method="POST" style="display:inline;" onsubmit="return confirm('Segur que vols eliminar aquesta compra?');">
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
    #example thead th {
        background-color: #90EE90 !important;
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
