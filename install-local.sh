#!/bin/bash

# Script d'instal·lació local per Laravel B5 Comptabilitat
# Autor: Joan Puig
# Data: Novembre 2025

echo "🚀 Instal·lació Local - Laravel B5 Comptabilitat"
echo "=================================================="
echo ""

# Comprovar si estem al directori correcte
if [ ! -f "composer.json" ]; then
    echo "❌ Error: Aquest script s'ha d'executar des del directori arrel del projecte"
    exit 1
fi

# 1. Instal·lar dependències
echo "📦 Instal·lant dependències de Composer..."
composer install

echo ""
echo "📦 Instal·lant dependències de NPM..."
npm install

# 2. Configurar entorn
if [ ! -f ".env" ]; then
    echo ""
    echo "⚙️  Creant fitxer .env..."
    cp .env.example .env
    
    echo "🔑 Generant clau d'aplicació..."
    php artisan key:generate
else
    echo ""
    echo "ℹ️  El fitxer .env ja existeix, saltant..."
fi

# 3. Configurar base de dades
echo ""
echo "💾 Configurant base de dades..."
read -p "Vols usar SQLite (més fàcil) o MySQL? [sqlite/mysql] (per defecte: sqlite): " db_choice
db_choice=${db_choice:-sqlite}

if [ "$db_choice" = "sqlite" ]; then
    echo "Configurant SQLite..."
    touch database/database.sqlite
    
    # Actualitzar .env per SQLite
    sed -i.bak 's/DB_CONNECTION=mysql/DB_CONNECTION=sqlite/' .env
    sed -i.bak 's/^DB_HOST=/#DB_HOST=/' .env
    sed -i.bak 's/^DB_PORT=/#DB_PORT=/' .env
    sed -i.bak 's/^DB_DATABASE=/#DB_DATABASE=/' .env
    sed -i.bak 's/^DB_USERNAME=/#DB_USERNAME=/' .env
    sed -i.bak 's/^DB_PASSWORD=/#DB_PASSWORD=/' .env
    
    echo "✅ SQLite configurat"
else
    echo "Configurant MySQL..."
    read -p "Nom de la base de dades (per defecte: larb5_local): " db_name
    db_name=${db_name:-larb5_local}
    
    read -p "Usuari MySQL (per defecte: root): " db_user
    db_user=${db_user:-root}
    
    read -sp "Contrasenya MySQL: " db_pass
    echo ""
    
    # Crear base de dades
    mysql -u "$db_user" -p"$db_pass" -e "CREATE DATABASE IF NOT EXISTS $db_name;"
    
    # Actualitzar .env
    sed -i.bak "s/DB_DATABASE=.*/DB_DATABASE=$db_name/" .env
    sed -i.bak "s/DB_USERNAME=.*/DB_USERNAME=$db_user/" .env
    sed -i.bak "s/DB_PASSWORD=.*/DB_PASSWORD=$db_pass/" .env
    
    echo "✅ MySQL configurat"
fi

# 4. Executar migracions
echo ""
echo "🔄 Executant migracions..."
php artisan migrate

# 5. Crear usuaris per defecte
echo ""
read -p "Vols crear els usuaris per defecte (admin/editor/viewer)? [S/n]: " create_users
create_users=${create_users:-S}

if [ "$create_users" = "S" ] || [ "$create_users" = "s" ]; then
    echo "👥 Creant usuaris per defecte..."
    php artisan db:seed --class=RolesAndPermissionsSeeder
    echo ""
    echo "✅ Usuaris creats:"
    echo "   - admin@comptabilitat.local / password (Admin)"
    echo "   - editor@comptabilitat.local / password (Editor)"
    echo "   - viewer@comptabilitat.local / password (Viewer)"
fi

# 6. Enllaç simbòlic storage
echo ""
echo "🔗 Creant enllaç simbòlic per storage..."
php artisan storage:link

# 7. Compilar assets
echo ""
read -p "Vols compilar els assets ara? [S/n]: " compile_assets
compile_assets=${compile_assets:-S}

if [ "$compile_assets" = "S" ] || [ "$compile_assets" = "s" ]; then
    echo "🎨 Compilant assets..."
    npm run build
fi

# 8. Neteja de cache
echo ""
echo "🧹 Netejant cache..."
php artisan optimize:clear

# 9. Configurar permisos (només Linux/Mac)
if [[ "$OSTYPE" == "linux-gnu"* ]] || [[ "$OSTYPE" == "darwin"* ]]; then
    echo ""
    echo "🔒 Configurant permisos..."
    chmod -R 775 storage bootstrap/cache
fi

# Final
echo ""
echo "=================================================="
echo "✅ Instal·lació completada amb èxit!"
echo "=================================================="
echo ""
echo "📍 Per arrencar el servidor:"
echo "   composer run dev"
echo ""
echo "   O si prefereixes processos separats:"
echo "   php artisan serve        (Terminal 1)"
echo "   php artisan queue:listen (Terminal 2)"
echo "   php artisan pail         (Terminal 3)"
echo "   npm run dev              (Terminal 4)"
echo ""
echo "🌐 URLs:"
echo "   Frontend: http://localhost:8000"
echo "   Admin:    http://localhost:8000/admin"
echo ""
echo "🎉 Bona programació!"
