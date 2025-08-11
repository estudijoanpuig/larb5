@extends('layouts.app')

@section('title', 'Diari de Vendes')

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
		
          <li class="dropdown extended-dropdown-2"><a href="#"><span>COMPTABILITAT</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
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
			  
            </ul>
          </li>
		  
		  <div class="d-grid gap-2 d-md-block">
  <button type="button" class="btn btn-warning"><a href="/admin/clientes/create">Crear Client </a></button>
                <button type="button" class="btn btn-warning"><a href="/admin/productos/create">Crear Producte </a></button>
</div>
		  
          </li><!-- End Mega Menu 2 -->
         
        </ul>       
      </nav>
	  
	  
	  
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