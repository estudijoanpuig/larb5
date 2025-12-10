# 🏠 Guia d'Instal·lació Local

## ✅ Requisits Previs

- PHP >= 8.2
- Composer
- Node.js >= 18
- SQLite o MySQL
- Git

---

## 📥 Descàrrega i Instal·lació

### 1. Clonar el Repositori

```bash
git clone <url-del-repositori>
cd larb5
```

O descarregar ZIP i descomprimir.

---

### 2. Instal·lar Dependències

```bash
# Dependències PHP
composer install

# Dependències JavaScript
npm install
```

---

### 3. Configurar l'Entorn

```bash
# Copiar el fitxer d'exemple
cp .env.example .env

# Generar clau de l'aplicació
php artisan key:generate
```

---

### 4. Configurar Base de Dades

Edita `.env` i configura la base de dades:

**Opció A: SQLite (més fàcil)**
```env
DB_CONNECTION=sqlite
# Comenta les línies de MySQL
# DB_HOST=127.0.0.1
# DB_PORT=3306
# DB_DATABASE=laravel
# DB_USERNAME=root
# DB_PASSWORD=
```

**Opció B: MySQL**
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=larb5_local
DB_USERNAME=root
DB_PASSWORD=
```

---

### 5. Crear Base de Dades

**Si uses SQLite:**
```bash
touch database/database.sqlite
```

**Si uses MySQL:**
```bash
mysql -u root -p
CREATE DATABASE larb5_local;
exit;
```

---

### 6. Executar Migracions

```bash
php artisan migrate
```

---

### 7. Crear Enllaç Simbòlic per Storage

```bash
php artisan storage:link
```

---

### 8. Crear Usuari Admin

```bash
php artisan db:seed --class=RolesAndPermissionsSeeder
```

Això crearà 3 usuaris:
- **admin@comptabilitat.local** / password (Admin)
- **editor@comptabilitat.local** / password (Editor)
- **viewer@comptabilitat.local** / password (Viewer)

---

### 9. Compilar Assets

```bash
# Desenvolupament (amb watch)
npm run dev

# O per producció
npm run build
```

---

### 10. Arrencar el Servidor

```bash
# Opció A: Tot en un (recomanat)
composer run dev

# Opció B: Processos separats
# Terminal 1
php artisan serve

# Terminal 2
php artisan queue:listen

# Terminal 3
php artisan pail

# Terminal 4
npm run dev
```

---

## 🌐 Accedir a l'Aplicació

- **Frontend:** http://localhost:8000
- **Panel Admin:** http://localhost:8000/admin

---

## 🔧 Configuracions Addicionals

### Permisos de Directoris (Linux/Mac)

```bash
chmod -R 775 storage bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache
```

### Cache

```bash
# Neteja tot el cache
php artisan optimize:clear

# Cache de permisos
php artisan permission:cache-reset
```

---

## 🐛 Resolució de Problemes

### Error: "No application encryption key"
```bash
php artisan key:generate
```

### Error: "SQLSTATE[HY000] [2002] Connection refused"
Comprova la configuració de `.env` i que MySQL estigui en marxa.

### Error: "Class 'Permission' not found"
```bash
composer dump-autoload
php artisan optimize:clear
```

### Error 403 al panel admin
```bash
php artisan tinker
$user = User::where('email', 'TU_EMAIL')->first();
$user->assignRole('admin');
```

### Les imatges no es mostren
```bash
php artisan storage:link
```

---

## 📦 Estructura del Projecte

```
larb5/
├── app/
│   ├── Filament/          # Recursos Filament
│   ├── Http/Controllers/  # Controladors
│   ├── Models/            # Models Eloquent
│   └── Policies/          # Policies de seguretat
├── database/
│   ├── migrations/        # Migracions
│   └── seeders/           # Seeders
├── public/
│   └── storage/           # Enllaç simbòlic (storage:link)
├── resources/
│   └── views/             # Vistes Blade
├── routes/
│   └── web.php            # Rutes web
└── storage/
    └── app/public/        # Fitxers pujats (avatars, etc.)
```

---

## 🔐 Seguretat

### Crear el teu propi usuari admin

```bash
php artisan tinker

User::create([
    'name' => 'El teu nom',
    'email' => 'el_teu_email@example.com',
    'password' => Hash::make('la_teva_contrasenya'),
    'email_verified_at' => now(),
])->assignRole('admin');
```

### Canviar APP_URL

A `.env`:
```env
APP_URL=http://localhost:8000
```

---

## 🚀 Passar de Local a Producció

### 1. Configura `.env` per producció

```env
APP_ENV=production
APP_DEBUG=false
APP_URL=https://estudijoanpuig.com
```

### 2. Optimitza

```bash
composer install --optimize-autoloader --no-dev
php artisan config:cache
php artisan route:cache
php artisan view:cache
npm run build
```

### 3. Puja al servidor

```bash
# Exclou node_modules i vendor
rsync -avz --exclude 'node_modules' --exclude 'vendor' ./ user@servidor:/path/
```

### 4. Al servidor

```bash
composer install --no-dev
php artisan migrate --force
php artisan storage:link
php artisan optimize
```

---

## 📋 Checklist d'Instal·lació

- [ ] PHP 8.2+ instal·lat
- [ ] Composer instal·lat
- [ ] Node.js instal·lat
- [ ] `composer install` executat
- [ ] `npm install` executat
- [ ] `.env` configurat
- [ ] `php artisan key:generate`
- [ ] Base de dades creada
- [ ] `php artisan migrate`
- [ ] `php artisan storage:link`
- [ ] `php artisan db:seed --class=RolesAndPermissionsSeeder`
- [ ] `npm run build` o `npm run dev`
- [ ] Servidor arrencat
- [ ] Login a `/admin` funciona

---

## 🆘 Suport

Si tens problemes:

1. Comprova els logs: `storage/logs/laravel.log`
2. Executa: `php artisan pail` per veure errors en temps real
3. Neteja cache: `php artisan optimize:clear`
4. Verifica `.env` està ben configurat

---

## ✨ Funcionalitats que funcionaran

- ✅ Sistema d'usuaris amb rols
- ✅ Panel admin Filament
- ✅ CRUD de clients, productes, vendes, compres
- ✅ Informes
- ✅ Pujada d'avatars
- ✅ Perfil d'usuari
- ✅ Totes les pàgines del frontend

**Tot funcionarà igual que a producció!** 🎉
