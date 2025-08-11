@extends('layouts.app')

@section('title', 'Crear Nova venda')

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
<div class="container ">
   
    <form action="{{ route('ventas.store') }}" method="POST">
        @csrf
        <div class="row">
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="cliente_id" class="form-label">Client</label>
                    <select class="form-select @error('cliente_id') is-invalid @enderror" id="cliente_id" name="cliente_id" required>
                        <option value="">Selecciona un client</option>
                        @foreach ($clientes->sortBy('nombre') as $cliente)
                        <option value="{{ $cliente->id }}" {{ old('cliente_id') == $cliente->id ? 'selected' : '' }}>{{ $cliente->nombre }}</option>
                        @endforeach
                    </select>
                    @error('cliente_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="fecha" class="form-label">Data</label>
                    <input type="date" class="form-control @error('fecha') is-invalid @enderror" id="fecha" name="fecha" value="{{ old('fecha', date('Y-m-d')) }}" required>
                    @error('fecha') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="iva_porcentaje" class="form-label">Percentatge d'IVA (%)</label>
                    <input type="number" step="0.01" class="form-control @error('iva_porcentaje') is-invalid @enderror" id="iva_porcentaje" name="iva_porcentaje" value="{{ old('iva_porcentaje', 21.00) }}" required>
                    @error('iva_porcentaje') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="notas" class="form-label">Mètode de Pagament</label>
                    <select class="form-select @error('notas') is-invalid @enderror" id="notas" name="notas">
                        <option value="">Selecciona un mètode</option>
                        <option value="efectiu" {{ old('notas') == 'efectiu' ? 'selected' : '' }}>Efectiu</option>
                        <option value="targeta" {{ old('notas') == 'targeta' ? 'selected' : '' }}>Targeta</option>
                        <option value="bono" {{ old('notas') == 'bono' ? 'selected' : '' }}>Bono</option>
                        <option value="bizum_neus" {{ old('notas') == 'bizum_neus' ? 'selected' : '' }}>Bizum Neus</option>
                        <option value="transferencia" {{ old('notas') == 'transferencia' ? 'selected' : '' }}>Transferència</option>
                    </select>
                    @error('notas') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="empleado_id" class="form-label">Empleat (Opcional)</label>
                    <select class="form-select @error('empleado_id') is-invalid @enderror" id="empleado_id" name="empleado_id">
                        <option value="">Selecciona un empleat</option>
                        @foreach ($empleados->sortBy('nombre') as $empleado)
                        <option value="{{ $empleado->id }}" {{ old('empleado_id') == $empleado->id ? 'selected' : '' }}>{{ $empleado->nombre }}</option>
                        @endforeach
                    </select>
                    @error('empleado_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label>Detalls de la Venda</label>
                    <div id="detalls-container">
                        <div class="input-group mb-2 detall-row">
                            <select name="producto_id[]" class="form-select @error('producto_id.0') is-invalid @enderror" required>
                                <option value="">Selecciona un producte</option>
                                @foreach ($productos->sortBy('nombre') as $producto)
                                <option value="{{ $producto->id }}">{{ $producto->nombre }}</option>
                                @endforeach
                            </select>
                            <input type="number" name="cantidad[]" placeholder="Quantitat" class="form-control @error('cantidad.0') is-invalid @enderror" required>
                            <input type="number" step="0.01" name="precio_unitario[]" placeholder="Preu Unitari (€)" class="form-control @error('precio_unitario.0') is-invalid @enderror" required>
                            <input type="number" step="0.01" name="subtotal_detalle[]" placeholder="Subtotal (€)" class="form-control @error('subtotal_detalle.0') is-invalid @enderror" readonly>
                            <button type="button" class="btn btn-danger remove-detalle">Eliminar</button>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary mt-2" onclick="addDetallRow()">Afegeix Detall</button>
                </div>
                <div class="mb-3">
                    <label>Resum</label>
                    <div class="form-group">
                        <label>Subtotal: <span id="subtotal-display">0.00 €</span></label>
                    </div>
                    <div class="form-group">
                        <label>IVA Import: <span id="iva-monto-display">0.00 €</span></label>
                    </div>
                    <div class="form-group">
                        <label>Total: <span id="total-display">0.00 €</span></label>
                    </div>
                    <!-- Camps ocults per enviar al servidor -->
                    <input type="hidden" name="subtotal" id="subtotal" value="0">
                    <input type="hidden" name="iva_monto" id="iva_monto" value="0">
                    <input type="hidden" name="total" id="total" value="0">
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Actualitzar Venda</button>
    </form>
</div>

<script>
    function addDetallRow() {
        const container = document.getElementById('detalls-container');
        const row = document.createElement('div');
        row.className = 'input-group mb-2 detall-row';
        row.innerHTML = `
            <select name="producto_id[]" class="form-select" required>
                <option value="">Selecciona un producte</option>
                @foreach ($productos->sortBy('nombre') as $producto)
                <option value="{{ $producto->id }}">{{ $producto->nombre }}</option>
                @endforeach
            </select>
            <input type="number" name="cantidad[]" placeholder="Quantitat" class="form-control" required>
            <input type="number" step="0.01" name="precio_unitario[]" placeholder="Preu Unitari (€)" class="form-control" required>
            <input type="number" step="0.01" name="subtotal_detalle[]" placeholder="Subtotal (€)" class="form-control" readonly>
            <button type="button" class="btn btn-danger remove-detalle">Eliminar</button>
        `;
        container.appendChild(row);
        updateTotals();
    }

    document.addEventListener('input', function (e) {
        if (e.target.name === 'cantidad[]' || e.target.name === 'precio_unitario[]' || e.target.name === 'iva_porcentaje') {
            updateTotals();
        }
    });

    document.addEventListener('click', function (e) {
        if (e.target.classList.contains('remove-detalle') || e.target.closest('.remove-detalle')) {
            e.target.closest('.detall-row').remove();
            updateTotals();
        }
    });

    function updateTotals() {
        let subtotal = 0;
        const ivaPct = parseFloat(document.getElementById('iva_porcentaje').value) || 0;
        const rows = document.querySelectorAll('.detall-row');
        rows.forEach(row => {
            const cantidad = parseFloat(row.querySelector('input[name="cantidad[]"]').value) || 0;
            const precio = parseFloat(row.querySelector('input[name="precio_unitario[]"]').value) || 0;
            const subtotalDetall = cantidad * precio;
            row.querySelector('input[name="subtotal_detalle[]"]').value = subtotalDetall.toFixed(2);
            subtotal += subtotalDetall;
        });
        const ivaMonto = subtotal * (ivaPct / 100);
        const total = subtotal + ivaMonto;

        document.getElementById('subtotal-display').textContent = subtotal.toFixed(2) + ' €';
        document.getElementById('iva-monto-display').textContent = ivaMonto.toFixed(2) + ' €';
        document.getElementById('total-display').textContent = total.toFixed(2) + ' €';

        document.getElementById('subtotal').value = subtotal.toFixed(2);
        document.getElementById('iva_monto').value = ivaMonto.toFixed(2);
        document.getElementById('total').value = total.toFixed(2);
    }

    updateTotals();
</script>
@endsection