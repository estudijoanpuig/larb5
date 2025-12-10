# 💼 Laravel B5 - Sistema de Comptabilitat

Sistema complet de gestió comptable desenvolupat amb Laravel 12, Filament 3 i Spatie Permission.

[![Laravel](https://img.shields.io/badge/Laravel-12-FF2D20?style=flat&logo=laravel)](https://laravel.com)
[![Filament](https://img.shields.io/badge/Filament-3.3-F59E0B?style=flat)](https://filamentphp.com)
[![PHP](https://img.shields.io/badge/PHP-8.2+-777BB4?style=flat&logo=php)](https://php.net)

---

## 🌟 Característiques

- ✅ **Sistema d'Usuaris** amb rols i permisos (Admin, Editor, Viewer)
- ✅ **Panel d'Administració** amb Filament 3
- ✅ **Gestió Comptable** (Clients, Productes, Vendes, Compres)
- ✅ **Proveïdors i Empleats**
- ✅ **Informes i Estadístiques**
- ✅ **Avatars amb Editor d'Imatges**
- ✅ **Multi-idioma** (Català)
- ✅ **Base de dades**: SQLite/MySQL
- ✅ **Frontend Modern** amb Bootstrap 5

---

## 🚀 Instal·lació Local Ràpida

### Opció 1: Script Automàtic (Recomanat)

```bash
# Clonar repositori
git clone <url-repositori>
cd larb5

# Executar script d'instal·lació
./install-local.sh
```

### Opció 2: Manual

Segueix les instruccions detallades a **[INSTALACIO_LOCAL.md](INSTALACIO_LOCAL.md)**

---

## 📋 Requisits

- PHP >= 8.2
- Composer
- Node.js >= 18
- SQLite o MySQL
- Extensions PHP: PDO, Mbstring, OpenSSL, Tokenizer, XML, Ctype, JSON, BCMath, Fileinfo, GD

---

## 🔧 Configuració Ràpida

```bash
# 1. Dependències
composer install
npm install

# 2. Entorn
cp .env.example .env
php artisan key:generate

# 3. Base de dades
touch database/database.sqlite  # Si uses SQLite
php artisan migrate

# 4. Usuaris
php artisan db:seed --class=RolesAndPermissionsSeeder

# 5. Storage
php artisan storage:link

# 6. Assets
npm run build

# 7. Servidor
composer run dev
```

---

## 👥 Usuaris per Defecte

| Rol | Email | Contrasenya | Permisos |
|-----|-------|-------------|----------|
| **Admin** | admin@comptabilitat.local | password | Total |
| **Editor** | editor@comptabilitat.local | password | Gestió dades |
| **Viewer** | viewer@comptabilitat.local | password | Només lectura |

---

## 🌐 URLs

- **Frontend**: http://localhost:8000
- **Panel Admin**: http://localhost:8000/admin
- **Perfil**: http://localhost:8000/admin/profile

---

## 📚 Documentació

- [Guia d'Instal·lació Local](INSTALACIO_LOCAL.md)
- [Sistema d'Usuaris](USERS_SYSTEM.md)
- [Documentació Filament](https://filamentphp.com/docs)
- [Spatie Permission](https://spatie.be/docs/laravel-permission)

---

## 🛠️ Stack Tecnològic

- **Backend**: Laravel 12, PHP 8.2
- **Admin Panel**: Filament 3.3
- **Frontend**: Blade, Bootstrap 5, Tailwind CSS v4
- **Base de dades**: SQLite / MySQL
- **Permisos**: Spatie Laravel Permission
- **Queue**: Database
- **Cache**: File

---

## 📦 Estructura

```
larb5/
├── app/
│   ├── Filament/          # Recursos, Pages (UserResource, RoleResource, etc.)
│   ├── Http/Controllers/  # Controladors web
│   ├── Models/            # Models (User, Cliente, Producto, Venta, etc.)
│   └── Policies/          # Policies de seguretat
├── database/
│   ├── migrations/        # Migracions BD
│   └── seeders/           # Seeders (RolesAndPermissionsSeeder)
├── resources/
│   └── views/             # Vistes Blade
└── routes/
    └── web.php            # Rutes de l'aplicació
```

---

## 🔐 Seguretat

- Autenticació Laravel
- Sistema de rols i permisos granulars
- Policies per cada recurs
- Protecció CSRF
- Validació de dades
- Encriptació de contrasenyes

---

## 🧪 Testing

```bash
composer run test
```

---

## 📝 Comandes Útils

```bash
# Neteja cache
php artisan optimize:clear

# Cache de permisos
php artisan permission:cache-reset

# Crear usuari admin
php artisan tinker
User::create([...])->assignRole('admin');

# Logs en temps real
php artisan pail
```

---

## 🐛 Troubleshooting

Consulta **[INSTALACIO_LOCAL.md](INSTALACIO_LOCAL.md)** per problemes comuns i solucions.

---

## 📄 Llicència

Aquest projecte és de codi obert sota llicència MIT.

---

## 👨‍💻 Autor

**Joan Puig**  
📧 joanpuigbertran@gmail.com  
🌐 https://estudijoanpuig.com

---

## 🙏 Agraïments

- [Laravel](https://laravel.com)
- [Filament](https://filamentphp.com)
- [Spatie](https://spatie.be)
- Comunitat Open Source

---

**⭐ Si t'ha estat útil, dona'ns una estrella!**


## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
