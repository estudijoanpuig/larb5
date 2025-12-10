@extends('layouts.app')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <h1>Sistema d'Usuaris, Rols i Permisos</h1>
        <nav class="breadcrumbs">
            <ol>
                <li><a href="/">Inici</a></li>
                <li class="current">Sistema d'Usuaris</li>
            </ol>
        </nav>
    </div>
</div><!-- End Page Title -->

<section id="sistema-usuaris" class="sistema-usuaris section">
    <div class="container">

        <!-- Introducció -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-5">
                        <h2 class="mb-4">🎉 Sistema Professional Implementat</h2>
                        <p class="lead">
                            Hem implementat un sistema complet de gestió d'usuaris utilitzant 
                            <strong>Filament 3</strong> i <strong>Spatie Laravel Permission</strong>, 
                            que proporciona autenticació, autorització, rols i permisos granulars.
                        </p>
                        <div class="alert alert-info mt-4">
                            <h5><i class="bi bi-info-circle me-2"></i>Accés al Panel Admin</h5>
                            <p class="mb-0">
                                <a href="/admin" class="alert-link" target="_blank">
                                    <strong>https://estudijoanpuig.com/admin</strong>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Components Principals -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">📦 Components del Sistema</h2>
            </div>
            
            <div class="col-md-4 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <div class="text-center mb-3">
                            <i class="bi bi-shield-check" style="font-size: 3rem; color: #f59e0b;"></i>
                        </div>
                        <h4 class="card-title text-center">Spatie Permission</h4>
                        <p class="card-text">
                            Package professional per gestionar rols i permisos en Laravel. 
                            Proporciona un sistema flexible i escalable.
                        </p>
                        <ul class="list-unstyled">
                            <li>✅ Rols assignables</li>
                            <li>✅ Permisos granulars</li>
                            <li>✅ Multi-rol per usuari</li>
                            <li>✅ Cache optimitzat</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <div class="text-center mb-3">
                            <i class="bi bi-speedometer2" style="font-size: 3rem; color: #f59e0b;"></i>
                        </div>
                        <h4 class="card-title text-center">Filament Admin</h4>
                        <p class="card-text">
                            Framework modern per crear panels d'administració amb Laravel. 
                            Interfície elegant i funcional.
                        </p>
                        <ul class="list-unstyled">
                            <li>✅ CRUD automàtic</li>
                            <li>✅ Formularis reactius</li>
                            <li>✅ Taules amb filtres</li>
                            <li>✅ Dark mode integrat</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <div class="text-center mb-3">
                            <i class="bi bi-person-lock" style="font-size: 3rem; color: #f59e0b;"></i>
                        </div>
                        <h4 class="card-title text-center">Policies de Seguretat</h4>
                        <p class="card-text">
                            Sistema de policies Laravel per controlar qui pot fer què 
                            en cada recurs del sistema.
                        </p>
                        <ul class="list-unstyled">
                            <li>✅ Accés controlat</li>
                            <li>✅ Validació automàtica</li>
                            <li>✅ Protecció anti auto-eliminació</li>
                            <li>✅ Auditoria d'accions</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recursos Implementats -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🛠️ Recursos Implementats</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <h5><i class="bi bi-people-fill text-primary me-2"></i>UserResource</h5>
                                <p class="small text-muted">Gestió completa d'usuaris amb avatar, rols i permisos</p>
                            </div>
                            <div class="col-md-4 mb-3">
                                <h5><i class="bi bi-shield-fill-check text-success me-2"></i>RoleResource</h5>
                                <p class="small text-muted">Creació i gestió de rols amb assignació de permisos</p>
                            </div>
                            <div class="col-md-4 mb-3">
                                <h5><i class="bi bi-key-fill text-warning me-2"></i>PermissionResource</h5>
                                <p class="small text-muted">Administració de permisos individuals del sistema</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Rols Configurats -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">👥 Rols Configurats</h2>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card border-danger h-100 shadow-sm">
                    <div class="card-header bg-danger text-white">
                        <h4 class="mb-0"><i class="bi bi-star-fill me-2"></i>Admin</h4>
                    </div>
                    <div class="card-body">
                        <h5>Accés Total</h5>
                        <p><strong>68 permisos</strong></p>
                        <ul>
                            <li>Gestionar usuaris, rols i permisos</li>
                            <li>CRUD sobre totes les dades</li>
                            <li>Exportar informes</li>
                            <li>Configuració del sistema</li>
                        </ul>
                        <div class="alert alert-warning mt-3">
                            <small><i class="bi bi-exclamation-triangle me-2"></i>No pot eliminar-se a si mateix</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card border-warning h-100 shadow-sm">
                    <div class="card-header bg-warning text-dark">
                        <h4 class="mb-0"><i class="bi bi-pencil-square me-2"></i>Editor</h4>
                    </div>
                    <div class="card-body">
                        <h5>Gestió de Dades</h5>
                        <p><strong>46 permisos</strong></p>
                        <ul>
                            <li>Gestionar clients i productes</li>
                            <li>Crear i editar vendes/compres</li>
                            <li>Gestionar proveïdors i empleats</li>
                            <li>Veure i exportar informes</li>
                        </ul>
                        <div class="alert alert-info mt-3">
                            <small><i class="bi bi-info-circle me-2"></i>NO pot gestionar usuaris</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card border-info h-100 shadow-sm">
                    <div class="card-header bg-info text-white">
                        <h4 class="mb-0"><i class="bi bi-eye-fill me-2"></i>Viewer</h4>
                    </div>
                    <div class="card-body">
                        <h5>Només Lectura</h5>
                        <p><strong>7 permisos</strong></p>
                        <ul>
                            <li>Veure clients i productes</li>
                            <li>Consultar vendes i compres</li>
                            <li>Veure proveïdors i empleats</li>
                            <li>Accés als informes</li>
                        </ul>
                        <div class="alert alert-secondary mt-3">
                            <small><i class="bi bi-lock me-2"></i>NO pot crear ni editar res</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Permisos -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🔑 Permisos Granulars</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <p class="lead">Sistema de 68 permisos organitzats per entitats:</p>
                        
                        <div class="row mt-4">
                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-people me-2 text-primary"></i>Clients</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_clients</span>
                                    <span class="badge bg-success">create_clients</span>
                                    <span class="badge bg-warning">edit_clients</span>
                                    <span class="badge bg-danger">delete_clients</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-box-seam me-2 text-primary"></i>Productes</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_products</span>
                                    <span class="badge bg-success">create_products</span>
                                    <span class="badge bg-warning">edit_products</span>
                                    <span class="badge bg-danger">delete_products</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-cart-check me-2 text-primary"></i>Vendes</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_sales</span>
                                    <span class="badge bg-success">create_sales</span>
                                    <span class="badge bg-warning">edit_sales</span>
                                    <span class="badge bg-danger">delete_sales</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-bag-check me-2 text-primary"></i>Compres</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_purchases</span>
                                    <span class="badge bg-success">create_purchases</span>
                                    <span class="badge bg-warning">edit_purchases</span>
                                    <span class="badge bg-danger">delete_purchases</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-truck me-2 text-primary"></i>Proveïdors</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_suppliers</span>
                                    <span class="badge bg-success">create_suppliers</span>
                                    <span class="badge bg-warning">edit_suppliers</span>
                                    <span class="badge bg-danger">delete_suppliers</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-person-badge me-2 text-primary"></i>Empleats</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_employees</span>
                                    <span class="badge bg-success">create_employees</span>
                                    <span class="badge bg-warning">edit_employees</span>
                                    <span class="badge bg-danger">delete_employees</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-file-earmark-text me-2 text-primary"></i>Informes</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_reports</span>
                                    <span class="badge bg-info">export_reports</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-4">
                                <h5><i class="bi bi-gear me-2 text-primary"></i>Sistema</h5>
                                <div class="d-flex flex-wrap gap-2">
                                    <span class="badge bg-primary">view_users</span>
                                    <span class="badge bg-success">create_users</span>
                                    <span class="badge bg-warning">edit_users</span>
                                    <span class="badge bg-danger">delete_users</span>
                                    <span class="badge bg-secondary">manage_roles</span>
                                    <span class="badge bg-dark">manage_permissions</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Funcionalitats -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">✨ Funcionalitats Implementades</h2>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-person-circle text-primary me-2"></i>Gestió de Perfil</h5>
                        <ul>
                            <li>Editar nom i email propis</li>
                            <li>Pujar avatar amb editor d'imatges</li>
                            <li>Retallador circular automàtic</li>
                            <li>Canviar contrasenya amb validació</li>
                            <li>Avatar al navbar i menú d'usuari</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-shield-lock text-success me-2"></i>Seguretat</h5>
                        <ul>
                            <li>Policies de Laravel implementades</li>
                            <li>Control d'accés per recurs</li>
                            <li>Protecció anti auto-eliminació admin</li>
                            <li>Validació de contrasenya actual</li>
                            <li>Cache de permisos optimitzat</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-people text-warning me-2"></i>Gestió d'Usuaris</h5>
                        <ul>
                            <li>Llistat amb avatars circulars</li>
                            <li>Filtres per rol</li>
                            <li>Assignació multi-rol</li>
                            <li>Permisos addicionals individuals</li>
                            <li>Badges de color per cada rol</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-layout-sidebar text-info me-2"></i>Navegació</h5>
                        <ul>
                            <li>Secció "Gestió d'Usuaris" al menú</li>
                            <li>Enllaç ràpid al frontend</li>
                            <li>Menú d'usuari personalitzat</li>
                            <li>Breadcrumbs automàtics</li>
                            <li>Icones heroicons modernes</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Implementació Tècnica -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">💻 Implementació Tècnica</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <h5 class="mb-3">Passos d'Implementació</h5>
                        
                        <div class="mb-4">
                            <h6><span class="badge bg-primary me-2">1</span>Instal·lació de Spatie Permission</h6>
                            <pre class="bg-dark text-light p-3 rounded"><code>composer require spatie/laravel-permission
php artisan vendor:publish --provider="Spatie\Permission\PermissionServiceProvider"
php artisan migrate</code></pre>
                        </div>

                        <div class="mb-4">
                            <h6><span class="badge bg-primary me-2">2</span>Configuració del Model User</h6>
                            <pre class="bg-dark text-light p-3 rounded"><code>use Spatie\Permission\Traits\HasRoles;
use Filament\Models\Contracts\FilamentUser;
use Filament\Models\Contracts\HasAvatar;

class User extends Authenticatable implements FilamentUser, HasAvatar
{
    use HasRoles;
    
    public function canAccessPanel(Panel $panel): bool
    {
        return $this->hasAnyRole(['admin', 'editor', 'viewer']);
    }
    
    public function getFilamentAvatarUrl(): ?string
    {
        return $this->avatar 
            ? asset('storage/' . $this->avatar) 
            : 'https://ui-avatars.com/api/?name=' . urlencode($this->name);
    }
}</code></pre>
                        </div>

                        <div class="mb-4">
                            <h6><span class="badge bg-primary me-2">3</span>Creació de Resources Filament</h6>
                            <pre class="bg-dark text-light p-3 rounded"><code>php artisan make:filament-resource User --generate
# Crear manualment: RoleResource i PermissionResource</code></pre>
                        </div>

                        <div class="mb-4">
                            <h6><span class="badge bg-primary me-2">4</span>Implementació de Policies</h6>
                            <pre class="bg-dark text-light p-3 rounded"><code>php artisan make:policy UserPolicy --model=User

public function viewAny(User $user): bool
{
    return $user->hasRole('admin');
}

public function delete(User $user, User $model): bool
{
    return $user->hasRole('admin') && $user->id !== $model->id;
}</code></pre>
                        </div>

                        <div class="mb-4">
                            <h6><span class="badge bg-primary me-2">5</span>Seeder amb Dades Inicials</h6>
                            <pre class="bg-dark text-light p-3 rounded"><code>php artisan make:seeder RolesAndPermissionsSeeder
php artisan db:seed --class=RolesAndPermissionsSeeder</code></pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Codi Exemples -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">📝 Exemples de Codi</h2>
                
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">Comprovar Permisos al Controlador</h5>
                    </div>
                    <div class="card-body">
                        <pre class="bg-dark text-light p-3 rounded mb-0"><code>// Comprovar si usuari té un permís específic
if (auth()->user()->can('edit_sales')) {
    // Pot editar vendes
}

// Comprovar si usuari té un rol
if (auth()->user()->hasRole('admin')) {
    // És administrador
}

// Comprovar múltiples rols
if (auth()->user()->hasAnyRole(['admin', 'editor'])) {
    // És admin o editor
}

// Assignar rol a un usuari
$user->assignRole('editor');

// Donar permís directe a un usuari
$user->givePermissionTo('view_reports');</code></pre>
                    </div>
                </div>

                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-header bg-success text-white">
                        <h5 class="mb-0">Protegir Routes</h5>
                    </div>
                    <div class="card-body">
                        <pre class="bg-dark text-light p-3 rounded mb-0"><code>// Només usuaris amb rol admin
Route::middleware(['auth', 'role:admin'])->group(function () {
    Route::get('/admin/settings', [SettingsController::class, 'index']);
});

// Usuaris amb permís específic
Route::middleware(['auth', 'permission:edit_sales'])->group(function () {
    Route::post('/sales', [SalesController::class, 'store']);
});

// Múltiples permisos
Route::middleware(['auth', 'permission:view_reports|export_reports'])->group(function () {
    Route::get('/reports', [ReportController::class, 'index']);
});</code></pre>
                    </div>
                </div>

                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-warning text-dark">
                        <h5 class="mb-0">Assignar Rols i Permisos</h5>
                    </div>
                    <div class="card-body">
                        <pre class="bg-dark text-light p-3 rounded mb-0"><code>// Crear usuari i assignar rol
$user = User::create([
    'name' => 'Joan Puig',
    'email' => 'joan@example.com',
    'password' => Hash::make('password'),
]);
$user->assignRole('admin');

// Crear rol amb permisos
$role = Role::create(['name' => 'comptable']);
$role->givePermissionTo(['view_sales', 'create_sales', 'view_reports']);

// Assignar permís a un rol
$adminRole = Role::findByName('admin');
$adminRole->givePermissionTo(Permission::all());</code></pre>
                    </div>
                </div>
            </div>
        </div>

        <!-- Accions Ràpides -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">⚡ Accions Ràpides</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <h5><i class="bi bi-terminal me-2"></i>Neteja de Cache</h5>
                                <pre class="bg-dark text-light p-3 rounded"><code>php artisan permission:cache-reset
php artisan optimize:clear</code></pre>
                            </div>
                            <div class="col-md-6 mb-3">
                                <h5><i class="bi bi-person-plus me-2"></i>Crear Usuari Admin</h5>
                                <pre class="bg-dark text-light p-3 rounded"><code>php artisan tinker
$user = User::find(1);
$user->assignRole('admin');</code></pre>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Call to Action -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card border-0 shadow-lg" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                    <div class="card-body p-5 text-white text-center">
                        <h2 class="mb-4">🎯 Prova el Sistema Ara!</h2>
                        <p class="lead mb-4">
                            Accedeix al panel d'administració i explora totes les funcionalitats del sistema d'usuaris
                        </p>
                        <div class="d-flex gap-3 justify-content-center flex-wrap">
                            <a href="/admin" target="_blank" class="btn btn-light btn-lg">
                                <i class="bi bi-box-arrow-up-right me-2"></i>Anar al Panel Admin
                            </a>
                            <a href="/admin/users" target="_blank" class="btn btn-outline-light btn-lg">
                                <i class="bi bi-people me-2"></i>Gestionar Usuaris
                            </a>
                            <a href="/admin/profile" target="_blank" class="btn btn-outline-light btn-lg">
                                <i class="bi bi-person-circle me-2"></i>Editar Perfil
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

@endsection
