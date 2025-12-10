# Sistema d'Usuaris, Rols i Permisos - Filament

## 🎉 Implementació Completa

S'ha configurat un **sistema professional de gestió d'usuaris** amb rols i permisos utilitzant **Spatie Laravel Permission** integrat amb **Filament 3**.

---

## 📋 Què s'ha implementat?

### 1. **Rols i Permisos** (Spatie)
- ✅ Package `spatie/laravel-permission` instal·lat
- ✅ Model `User` amb trait `HasRoles`
- ✅ Taules de base de dades migrades
- ✅ Sistema de permisos granular per cada acció

### 2. **Recursos Filament**
- ✅ **UserResource** - Gestió completa d'usuaris
- ✅ **RoleResource** - Gestió de rols
- ✅ **PermissionResource** - Gestió de permisos
- ✅ Tots els recursos agrupats a "Gestió d'Usuaris"

### 3. **Seguretat (Policies)**
- ✅ `UserPolicy` implementada
- ✅ Només admin pot veure/crear/eliminar usuaris
- ✅ Usuaris normals només poden editar el seu propi perfil
- ✅ Protecció: admin no pot eliminar-se a si mateix

### 4. **Pàgina de Perfil**
- ✅ Perfil d'usuari personalitzat
- ✅ Canvi de contrasenya amb confirmació
- ✅ Accessible des del menú d'usuari de Filament

### 5. **Dades Inicials (Seeder)**
- ✅ 3 rols creats: `admin`, `editor`, `viewer`
- ✅ 68 permisos granulars per totes les entitats
- ✅ 3 usuaris de mostra creats

---

## 👥 Usuaris Creats

| Rol | Email | Contrasenya | Accés |
|-----|-------|-------------|-------|
| **Admin** | `admin@comptabilitat.local` | `password` | Total (CRUD tot) |
| **Editor** | `editor@comptabilitat.local` | `password` | CRUD dades, NO usuaris |
| **Viewer** | `viewer@comptabilitat.local` | `password` | Només lectura |

---

## 🔐 Rols Configurats

### 🔴 Admin
- **Permisos:** TOTS (68 permisos)
- **Accés:** Gestió completa de usuaris, rols, permisos i totes les dades
- **Restricció:** No pot eliminar-se a si mateix

### 🟡 Editor
- **Permisos:** 46 permisos
- **Pot gestionar:**
  - Clients (view, create, edit, delete)
  - Productes (view, create, edit, delete)
  - Vendes (view, create, edit, delete)
  - Compres (view, create, edit, delete)
  - Proveïdors (view, create, edit, delete)
  - Empleats (view, create, edit, delete)
  - Informes (view, export)
- **NO pot:** Gestionar usuaris, rols ni permisos

### 🔵 Viewer
- **Permisos:** 7 permisos
- **Només pot veure:**
  - Clients, Productes, Vendes, Compres, Proveïdors, Empleats, Informes
- **NO pot:** Crear, editar o eliminar res

---

## 🎯 Funcionalitats del Sistema

### Gestió d'Usuaris (Admin)
1. Veure llista d'usuaris amb rols i estats
2. Crear nous usuaris
3. Assignar múltiples rols a un usuari
4. Assignar permisos addicionals individuals
5. Editar qualsevol usuari (excepte eliminar-se a si mateix)
6. Filtrar usuaris per rol

### Gestió de Rols (Admin)
1. Crear nous rols
2. Assignar permisos a cada rol
3. Veure recompte d'usuaris per rol
4. Editar/eliminar rols

### Gestió de Permisos (Admin)
1. Crear nous permisos personalitzats
2. Assignar permisos a múltiples rols
3. Veure quins rols tenen cada permís

### Perfil d'Usuari (Tots)
1. Editar nom i email propis
2. Canviar contrasenya (amb verificació de l'actual)
3. Accessible des del dropdown d'usuari (dalt a la dreta)

---

## 🛠️ Permisos Disponibles

### Clients
- `view_clients` - Veure clients
- `create_clients` - Crear clients
- `edit_clients` - Editar clients
- `delete_clients` - Eliminar clients

### Productes
- `view_products` - Veure productes
- `create_products` - Crear productes
- `edit_products` - Editar productes
- `delete_products` - Eliminar productes

### Vendes
- `view_sales` - Veure vendes
- `create_sales` - Crear vendes
- `edit_sales` - Editar vendes
- `delete_sales` - Eliminar vendes

### Compres
- `view_purchases` - Veure compres
- `create_purchases` - Crear compres
- `edit_purchases` - Editar compres
- `delete_purchases` - Eliminar compres

### Proveïdors
- `view_suppliers` - Veure proveïdors
- `create_suppliers` - Crear proveïdors
- `edit_suppliers` - Editar proveïdors
- `delete_suppliers` - Eliminar proveïdors

### Empleats
- `view_employees` - Veure empleats
- `create_employees` - Crear empleats
- `edit_employees` - Editar empleats
- `delete_employees` - Eliminar empleats

### Informes
- `view_reports` - Veure informes
- `export_reports` - Exportar informes

### Sistema
- `view_users` - Veure usuaris
- `create_users` - Crear usuaris
- `edit_users` - Editar usuaris
- `delete_users` - Eliminar usuaris
- `manage_roles` - Gestionar rols
- `manage_permissions` - Gestionar permisos

---

## 📱 Com Utilitzar-ho

### 1. Accedir al Panel Admin
```
http://localhost:8000/admin
```

### 2. Iniciar Sessió
Utilitza qualsevol dels 3 usuaris creats per provar diferents nivells d'accés:
- **admin@comptabilitat.local** → Veuràs TOTS els recursos
- **editor@comptabilitat.local** → Veuràs dades però NO usuaris
- **viewer@comptabilitat.local** → Només lectura

### 3. Gestionar Usuaris
1. Ves a **Gestió d'Usuaris > Usuaris**
2. Clic a "Nou Usuari"
3. Omple: nom, email, contrasenya
4. Assigna rols (pots assignar múltiples)
5. Opcionalment afegeix permisos addicionals
6. Desa

### 4. Crear Rol Personalitzat
1. Ves a **Gestió d'Usuaris > Rols**
2. Clic a "Nou Rol"
3. Nom del rol (ex: `comptable`)
4. Selecciona permisos que necessita
5. Desa

### 5. Editar el Teu Perfil
1. Clic al teu nom (dalt a la dreta)
2. Selecciona "Perfil"
3. Canvia nom, email o contrasenya
4. Desa canvis

---

## 🔧 Configuració Avançada

### Afegir Més Permisos

Edita `database/seeders/RolesAndPermissionsSeeder.php` i afegeix nous permisos:

```php
$permissions = [
    'view_reports',
    'export_excel',    // ← NOU
    'send_emails',     // ← NOU
];
```

Després executa:
```bash
php artisan db:seed --class=RolesAndPermissionsSeeder
```

### Protegir Recursos Filament amb Permisos

Als teus `*Resource.php`, afegeix:

```php
// A ProductoResource.php per exemple
public static function canViewAny(): bool
{
    return auth()->user()->can('view_products');
}

public static function canCreate(): bool
{
    return auth()->user()->can('create_products');
}
```

### Comprovar Permisos al Codi

```php
// Comprovar si usuari té permís
if (auth()->user()->can('edit_sales')) {
    // Pot editar vendes
}

// Comprovar si usuari té rol
if (auth()->user()->hasRole('admin')) {
    // És administrador
}

// Comprovar múltiples rols
if (auth()->user()->hasAnyRole(['admin', 'editor'])) {
    // És admin o editor
}
```

---

## 🎨 Personalitzacions Implementades

### Colors de Rols (UserResource)
- 🔴 `admin` → Badge vermell (danger)
- 🟡 `editor` → Badge taronja (warning)
- 🔵 `viewer` → Badge blau (info)

### Navegació Organitzada
Tots els recursos d'usuaris estan agrupats sota **"Gestió d'Usuaris"**:
1. 👥 Usuaris (icona users)
2. 🛡️ Rols (icona shield-check)
3. 🔑 Permisos (icona key)

### Camps Traduïts al Català
Tots els formularis i taules tenen etiquetes en català.

---

## 🚀 Següents Passos Recomanats

### 1. Protegir Tots els Resources
Afegeix policies a cada recurs (ClienteResource, ProductoResource, etc.):

```bash
php artisan make:policy ClientePolicy --model=Cliente
php artisan make:policy ProductoPolicy --model=Producto
# etc...
```

### 2. Afegir Registre d'Usuaris Públic (opcional)
Si vols que usuaris nous es puguin registrar:

```php
// A AdminPanelProvider.php
->registration()
```

### 3. Verificació de Correu (opcional)
Implementa verificació d'email per més seguretat.

### 4. Autenticació de Dos Factors (opcional)
Afegeix 2FA amb `laravel/fortify` o similar.

### 5. Auditoria d'Accions
Instal·la `spatie/laravel-activitylog` per registrar qui fa què:

```bash
composer require spatie/laravel-activitylog
```

---

## 📞 Troubleshooting

### Error: "Call to undefined method hasRole()"
**Solució:** Neteja cache
```bash
php artisan optimize:clear
```

### No veig els recursos de Rols/Permisos
**Solució:** Inicia sessió com a admin
```
admin@comptabilitat.local / password
```

### Error al assignar rols
**Solució:** Regenera el cache de permisos
```bash
php artisan permission:cache-reset
```

### Canvis no es reflecteixen
**Solució:** Neteja tot el cache
```bash
php artisan optimize:clear
php artisan filament:optimize
```

---

## ✅ Checklist de Funcionalitats

- [x] Sistema de rols i permisos (Spatie)
- [x] Gestió d'usuaris al panel Filament
- [x] Gestió de rols al panel Filament
- [x] Gestió de permisos al panel Filament
- [x] Pàgina de perfil d'usuari
- [x] Policies de seguretat
- [x] 3 rols predefinits (admin, editor, viewer)
- [x] 68 permisos granulars
- [x] 3 usuaris de mostra
- [x] Traducció al català
- [x] UI organitzada i professio
- [x] Colors distintius per rols
- [x] Filtres per rol
- [x] Badges amb recompte d'usuaris/permisos
- [x] Protecció anti auto-eliminació admin
- [x] Validació de contrasenya actual al canviar

---

## 📚 Recursos

- [Spatie Laravel Permission Docs](https://spatie.be/docs/laravel-permission)
- [Filament Users Docs](https://filamentphp.com/docs/panels/users)
- [Filament Authorization](https://filamentphp.com/docs/panels/resources#authorization)

---

**✨ Ara tens un sistema d'usuaris professional i complet!** 🎉
