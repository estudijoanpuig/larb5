@section('meta_keywords', 'compres, editar, comptabilitat, gestió, proveïdors, empresa')
@extends('layouts.app')

@section('title', 'Editar Compra')
@section('meta_description', 'Edita una compra existent, actualitza detalls i gestiona compres a la comptabilitat de l\'empresa.')

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
                        <a href="/comptabilitat/compres/diari_compres" class="btn btn-outline-success" title="Diari de Compres">
                            <i class="bi bi-truck"></i> <span class="d-none d-lg-inline">Compres</span>
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
    <!-- End Page Title -->

<div class="container">
    
    <form action="{{ route('compras.update', $compra->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="row">
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="proveedor_id" class="form-label">Proveïdor</label>
                    <select class="form-select @error('proveedor_id') is-invalid @enderror" id="proveedor_id" name="proveedor_id" required>
                        <option value="">Selecciona un proveïdor</option>
                        @foreach ($proveedores->sortBy('nombre') as $prov)
                        <option value="{{ $prov->id }}" {{ old('proveedor_id', $compra->proveedor_id) == $prov->id ? 'selected' : '' }}>{{ $prov->nombre }}</option>
                        @endforeach
                    </select>
                    @error('proveedor_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="fecha" class="form-label">Data</label>
                    <input type="date" class="form-control @error('fecha') is-invalid @enderror" id="fecha" name="fecha" value="{{ old('fecha', $compra->fecha) }}" required>
                    @error('fecha') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="iva_porcentaje" class="form-label">Percentatge d'IVA (%)</label>
                    <input type="number" step="0.01" class="form-control @error('iva_porcentaje') is-invalid @enderror" id="iva_porcentaje" name="iva_porcentaje" value="{{ old('iva_porcentaje', $compra->iva_porcentaje) }}" required>
                    @error('iva_porcentaje') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="notas" class="form-label">Notes</label>
                    <textarea class="form-control @error('notas') is-invalid @enderror" id="notas" name="notas" rows="3">{{ old('notas', $compra->notas) }}</textarea>
                    @error('notas') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="empleado_id" class="form-label">Empleat (Opcional)</label>
                    <select class="form-select @error('empleado_id') is-invalid @enderror" id="empleado_id" name="empleado_id">
                        <option value="">Selecciona un empleat</option>
                        @foreach ($empleados->sortBy('nombre') as $empleado)
                        <option value="{{ $empleado->id }}" {{ old('empleado_id', $compra->empleado_id) == $empleado->id ? 'selected' : '' }}>{{ $empleado->nombre }}</option>
                        @endforeach
                    </select>
                    @error('empleado_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label>Detalls de la Compra</label>
                    <div id="detalls-container">
                        @foreach ($compra->detalles as $index => $detalle)
                        <div class="input-group mb-2 detall-row">
                            <select name="producto_id[]" class="form-select @error('producto_id.' . $index) is-invalid @enderror" required>
                                <option value="">Selecciona un producte</option>
                                @foreach ($productos->sortBy('nombre') as $producto)
                                <option value="{{ $producto->id }}" {{ old('producto_id.' . $index, $detalle->producto_id) == $producto->id ? 'selected' : '' }}>{{ $producto->nombre }}</option>
                                @endforeach
                            </select>
                            <input type="number" name="cantidad[]" placeholder="Quantitat" class="form-control @error('cantidad.' . $index) is-invalid @enderror" value="{{ old('cantidad.' . $index, $detalle->cantidad) }}" required>
                            <input type="number" step="0.01" name="precio_unitario[]" placeholder="Preu Unitari (€)" class="form-control @error('precio_unitario.' . $index) is-invalid @enderror" value="{{ old('precio_unitario.' . $index, $detalle->precio_unitario) }}" required>
                            <input type="number" step="0.01" name="subtotal_detalle[]" placeholder="Subtotal (€)" class="form-control @error('subtotal_detalle.' . $index) is-invalid @enderror" value="{{ old('subtotal_detalle.' . $index, $detalle->subtotal) }}" readonly>
                            <button type="button" class="btn btn-danger remove-detalle">Eliminar</button>
                        </div>
                        @endforeach
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
        <button type="submit" class="btn btn-primary">Actualitzar Compra</button>
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
