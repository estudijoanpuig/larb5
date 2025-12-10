# Sistema de Detecció de Vistes - Laravel B5

## 📍 Què fa?

Al **footer** de cada pàgina es mostra automàticament informació sobre:
- Controlador i funció que processa la petició
- Vista real que s'està renderitzant
- Path i nom del fitxer de la vista

## 🎯 Com funciona?

### 1. AppServiceProvider (`app/Providers/AppServiceProvider.php`)

Registra un **View Composer global** que s'executa per totes les vistes (`*`):

```php
View::composer('*', function ($view) {
    $viewName = $view->getName();
    
    // Detectar si és un layout
    $isLayout = str_starts_with($viewName, 'layouts.');
    
    // Extreure parts de la vista (ex: comptabilitat.vendes.create)
    $parts = explode('.', $viewName);
    $fileName = end($parts); // create
    
    // Path sense el fitxer (ex: comptabilitat/vendes)
    $pathParts = $parts;
    array_pop($pathParts);
    $viewPath = !empty($pathParts) ? implode('/', $pathParts) : 'arrel';
    
    $view->with([
        'currentViewName' => $viewName,           // Ex: comptabilitat.vendes.create
        'currentViewFile' => $fileName,           // Ex: create
        'currentViewPath' => $viewPath,           // Ex: comptabilitat/vendes
        'isLayoutView' => $isLayout,              // true/false
    ]);
});
```

### 2. Layout (`resources/views/layouts/app.blade.php`)

Al footer (línies ~806-825) mostra la informació:

```blade
@if(!$isLayoutView ?? false)
  <p class="text-muted small mb-0">
    <i class="bi bi-code-square me-1"></i>
    <strong>Controlador:</strong> {{ class_basename(Route::current()->getController()) }} |
    <strong>Funció:</strong> {{ Route::current()->getActionMethod() }}
  </p>
  <p class="text-muted small">
    <i class="bi bi-file-earmark-code me-1"></i>
    <strong>Vista:</strong> 
    <span class="badge bg-primary">{{ $currentViewFile ?? 'indefinit' }}</span>
    <span class="text-secondary">en</span>
    <code class="text-info">{{ $currentViewPath ?? '/' }}</code>
    <span class="text-secondary ms-2">({{ $currentViewName ?? 'No definida' }})</span>
  </p>
@else
  <p class="text-muted small">
    <i class="bi bi-layout-text-window me-1"></i>
    Layout: <code>{{ $currentViewName ?? 'layouts.app' }}</code>
  </p>
@endif
```

## 📦 Variables Disponibles

Totes les vistes tenen accés a aquestes variables:

| Variable | Exemple | Descripció |
|----------|---------|------------|
| `$currentViewName` | `comptabilitat.vendes.create` | Nom complet de la vista (notació dot) |
| `$currentViewFile` | `create` | Només el nom del fitxer de la vista |
| `$currentViewPath` | `comptabilitat/vendes` | Path de la carpeta (sense fitxer) |
| `$isLayoutView` | `false` | Indica si la vista és un layout |

## 🎨 Exemples de Sortida

### Vista: `resources/views/comptabilitat/vendes/create.blade.php`

**Footer mostra:**
```
Controlador: VentaController | Funció: create
Vista: [create] en comptabilitat/vendes (comptabilitat.vendes.create)
```

### Vista: `resources/views/google_ai_studio.blade.php`

**Footer mostra:**
```
Controlador: Closure | Funció: __invoke
Vista: [google_ai_studio] en arrel (google_ai_studio)
```

### Vista: `resources/views/layouts/app.blade.php` (accés directe)

**Footer mostra:**
```
Layout: layouts.app
```

## 🔧 Ús en les Teves Vistes

Si vols usar aquestes variables en qualsevol vista:

```blade
@section('content')
    <h1>Estàs a: {{ $currentViewPath }}/{{ $currentViewFile }}</h1>
    
    @if($currentViewPath === 'comptabilitat/vendes')
        <!-- Codi específic per vistes de vendes -->
    @endif
@endsection
```

## 🚀 Beneficis

1. **Debugging més fàcil**: Veus instantàniament quin controlador/vista s'executa
2. **Navegació per codi**: Saps exactament on està el fitxer
3. **Documentació automàtica**: No cal comentaris per saber on ets
4. **Separació layout/vista**: Distingeix entre `layouts.app` i la vista real

## 💡 Notes Tècniques

- El View Composer s'executa **abans** de renderitzar la vista
- Les variables s'injecten automàticament, no cal passar-les manualment
- Funciona amb **totes** les vistes, incloent components i partials
- El footer només mostra info detallada si **NO** és un layout

## 🔄 Actualitzacions

Per netejar caches després de canvis:

```bash
php artisan optimize:clear
```
