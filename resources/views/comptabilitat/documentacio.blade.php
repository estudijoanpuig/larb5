@extends('layouts.app')
@section('title', 'Chuletari del projecte')

@section('content')

<!-- CSS COMÚ (posa-ho a l'<head> o al principi del <body>) -->
<style>
  /* Estils generals que s'aplicaran a totes les seccions */
  .content-section {
    background-color: #f8f9fa;
    border-radius: 8px;
    padding: 20px;
    margin-bottom: 30px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  }
  
  .info-box {
    background-color: #e7f5ff;
    border-left: 4px solid #4dabf7;
    padding: 12px 15px;
    margin: 15px 0;
    border-radius: 4px;
    display: flex;
    align-items: flex-start;
  }
  
  .info-box i { color: #4dabf7; margin-right: 10px; }
  
  .code-box {
    position: relative;
    background-color: #282c34;
    border-radius: 6px;
    margin: 15px 0;
    overflow: hidden;
  }
  
  .code-box pre { margin: 0; padding: 15px; overflow-x: auto; }
  .code-box code {
    color: #abb2bf;
    font-family: 'Courier New', Courier, monospace;
    font-size: 14px;
    line-height: 1.5;
  }
  
  .copy-btn {
    position: absolute;
    top: 5px;
    right: 5px;
    background-color: #495057;
    color: white;
    border: none;
    border-radius: 4px;
    padding: 3px 8px;
    font-size: 12px;
    cursor: pointer;
    transition: background-color 0.2s;
  }
  .copy-btn:hover { background-color: #3a3f44; }
  
  h3 { color: #2c3e50; margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #dee2e6; }
  h4 { color: #495057; margin: 20px 0 10px 0; }
</style>

<!-- JavaScript COMÚ (posa-ho al final del <body>) -->
<script>
  // Funció universal per copiar codi
  function copyCode(button) {
    const codeBox = button.parentElement;
    const code = codeBox.querySelector('code').textContent;
    navigator.clipboard.writeText(code).then(() => {
      button.textContent = 'Copiat!';
      setTimeout(() => button.textContent = 'Copiar', 2000);
    });
  }
</script>

 <!-- Page Title -->
    <div class="page-title light-background">
      <div class="container">
        <h1>@yield('title')</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="/">Inici</a></li>
            <li class="current">Termes i Condicions</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->


   

    <!-- Terms Of Service Section -->
    <section id="terms-of-service" class="terms-of-service section">
      <div class="container">
        <!-- Horizontal Navbar -->
        <nav class="section-nav mb-5">
          <ul class="nav nav-pills nav-fill">
            <li class="nav-item"><a class="nav-link" href="#inslaravel">Instal.lacio de laravel</a></li>
            <li class="nav-item"><a class="nav-link" href="#insfilament">Instal.lacio de filament</a></li>
            <li class="nav-item"><a class="nav-link" href="#github-clone">Github clone</a></li>            
            <li class="nav-item"><a class="nav-link" href="#diarivendes">Diari de vendes</a></li>
            <li class="nav-item"><a class="nav-link" href="#generar_migracions">Generar Migracions</a></li>
            <li class="nav-item"><a class="nav-link" href="#indemnification">Indemnització</a></li>
            <li class="nav-item"><a class="nav-link" href="#seeders">Seeders</a></li>
            <li class="nav-item"><a class="nav-link" href="#governing-law">Llei Aplicable</a></li>
            <li class="nav-item"><a class="nav-link" href="#changes">Canvis als Termes</a></li>
            <li class="nav-item"><a class="nav-link" href="#server-config">Configuració del Servidor</a></li>
          </ul>
        </nav>

       

        <!-- Content -->
        <div class="tos-content">
         <!-- inslaravel -->
<div id="inslaravel" class="content-section mb-5">
  <h3>1. Instal·lació de Laravel</h3>
  <p>Aquesta guia et mostra com instal·lar Laravel al teu sistema amb els passos necessaris i les comandes a executar.</p>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Abans de començar, assegura't que tens instal·lats PHP (>= 8.1), Composer i les extensions PHP necessàries.</p>
  </div>
  
  <h4>Instal·lació via Composer</h4>
  <div class="code-box">
    <pre><code class="language-bash">composer create-project laravel/laravel nom-del-projecte</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Instal·lador global de Laravel</h4>
  <div class="code-box">
    <pre><code class="language-bash">composer global require laravel/installer
laravel new nom-del-projecte</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Configuració inicial</h4>
  <div class="code-box">
    <pre><code class="language-bash">cd nom-del-projecte
cp .env.example .env
php artisan key:generate</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

<!-- configlaravel -->
<div id="configlaravel" class="content-section mb-5">
  <h3>2. Configuració de la base de dades</h3>
  <p>Configura la connexió a la base de dades editant l'arxiu .env</p>
  
  <div class="code-box">
    <pre><code class="language-env">DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="code-box">
    <pre><code class="language-bash">php artisan migrate</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

<!-- serveirlaravel -->
<div id="serveirlaravel" class="content-section mb-5">
  <h3>3. Executar el servidor de desenvolupament</h3>
  
  <div class="code-box">
    <pre><code class="language-bash">php artisan serve</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Per accedir a l'aplicació, obre el navegador a <a href="http://localhost:8000" target="_blank">http://localhost:8000</a></p>
  </div>
</div>

<!-- llibrerieslaravel -->
<div id="llibrerieslaravel" class="content-section mb-5">
  <h3>4. Llibreries recomanades</h3>
  
  <h4>Laravel Debugbar</h4>
  <div class="code-box">
    <pre><code class="language-bash">composer require barryvdh/laravel-debugbar --dev</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Laravel Breeze (autenticació)</h4>
  <div class="code-box">
    <pre><code class="language-bash">composer require laravel/breeze --dev
php artisan breeze:install
npm install && npm run dev
php artisan migrate</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

<!-- comandoslaravel -->
<div id="comandoslaravel" class="content-section mb-5">
  <h3>5. Comandos Artisan útils</h3>
  
  <div class="code-box">
    <pre><code class="language-bash"># Llistar totes les rutes
php artisan route:list

# Crear un nou controlador
php artisan make:controller NomController

# Netejar caches
php artisan cache:clear
php artisan view:clear</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>



          <!-- filament-install -->
<div id="insfilament" class="content-section mb-5">
  <h3>2. Instal·lació de Filament per a Laravel</h3>
  <p>Filament és un elegant panell d'administració per a Laravel que utilitza Tailwind CSS. Segueix aquests passos per instal·lar-lo al teu projecte Laravel.</p>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Assegura't que tens un projecte Laravel funcionant abans d'instal·lar Filament (versió 8+ de Laravel).</p>
  </div>
  
  <h4>Instal·lació bàsica de Filament</h4>
  <div class="code-box">
    <pre><code class="language-bash">composer require filament/filament:"^3.0" -W</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Publicar els arxius de configuració</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan filament:install --panels</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Configurar l'usuari administrador</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan make:filament-user</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

<!-- filament-resources -->
<div id="filament-resources" class="content-section mb-5">
  <h3>Creació de Recursos a Filament</h3>
  <p>Els recursos a Filament permeten gestionar models Eloquent des del panell d'administració.</p>
  
  <h4>Crear un nou recurs</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan make:filament-resource NomDelRecurs</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Aquest comandament crearà tot el necessari per gestionar el model des del panell: llistat, formulari de creació/edició, etc.</p>
  </div>
</div>

<!-- filament-widgets -->
<div id="filament-widgets" class="content-section mb-5">
  <h3>Widgets a Filament</h3>
  <p>Els widgets permeten afegir contingut personalitzat al tauler de control.</p>
  
  <h4>Crear un nou widget</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan make:filament-widget NomDelWidget</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Widgets de estadístiques</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan make:filament-widget StatsOverview --stats-overview</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

<!-- filament-theming -->
<div id="filament-theming" class="content-section mb-5">
  <h3>Personalització de l'aparença</h3>
  <p>Filament utilitza Tailwind CSS i permet una fàcil personalització.</p>
  
  <h4>Publicar arxius de configuració d'aparença</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan vendor:publish --tag=filament-config</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Canviar el color primari</h4>
  <div class="code-box">
    <pre><code class="language-php">// config/filament.php
'colors' => [
    'primary' => Color::Amber,
],</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Pots triar entre: Amber, Blue, Cyan, Emerald, Fuchsia, Gray, Green, Indigo, Lime, Orange, Pink, Purple, Red, Rose, Sky, Slate, Stone, Teal, Violet, Yellow, Zinc</p>
  </div>
</div>

<!-- filament-access -->
<div id="filament-access" class="content-section mb-5">
  <h3>Accés al Panell d'Administració</h3>
  
  <div class="code-box">
    <pre><code class="language-bash">php artisan serve</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Accedeix al panell a <a href="http://localhost:8000/admin" target="_blank">http://localhost:8000/admin</a> i inicia sessió amb l'usuari que has creat.</p>
  </div>
</div>


         <!-- github-clone -->
<div id="github-clone" class="content-section mb-5">
  <h3>1. Clonar Projecte des de GitHub</h3>
  <p>Per començar, clona el repositori del projecte al teu entorn local.</p>
  
  <div class="code-box">
    <pre><code class="language-bash">git clone https://github.com/usuari/repositori.git nom-del-projecte
cd nom-del-projecte</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Si utilitzes SSH en lloc de HTTPS, l'URL serà de la forma: git@github.com:usuari/repositori.git</p>
  </div>
</div>

<!-- dependencies -->
<div id="dependencies" class="content-section mb-5">
  <h3>2. Instal·lar Dependències</h3>
  
  <h4>Dependències de PHP (Composer)</h4>
  <div class="code-box">
    <pre><code class="language-bash">composer install</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Si necessites actualitzar les dependències en lloc d'instal·lar-les:</p>
    <div class="code-box">
      <pre><code class="language-bash">composer update</code></pre>
      <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
    </div>
  </div>
  
  <h4>Dependències de JavaScript (Node.js)</h4>
  <div class="code-box">
    <pre><code class="language-bash">npm install</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

<!-- environment -->
<div id="environment" class="content-section mb-5">
  <h3>3. Configuració de l'Entorn</h3>
  
  <h4>Arxiu .env</h4>
  <div class="code-box">
    <pre><code class="language-bash">cp .env.example .env</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Generar Clau d'Aplicació</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan key:generate</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Enllaç de Storage</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan storage:link</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

<!-- run-dev -->
<div id="run-dev" class="content-section mb-5">
  <h3>4. Executar l'Entorn de Desenvolupament</h3>
  
  <h4>Compilar Assets</h4>
  <div class="code-box">
    <pre><code class="language-bash">npm run dev</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Servidor de Desenvolupament</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan serve</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Per accedir: <a href="http://localhost:8000" target="_blank">http://localhost:8000</a></p>
  </div>
</div>

<!-- virtual-host -->
<div id="virtual-host" class="content-section mb-5">
  <h3>5. Configurar Host Virtual (Opcional)</h3>
  
  <h4>Apache (httpd-vhosts.conf)</h4>
  <div class="code-box">
    <pre><code class="language-apache">&lt;VirtualHost *:80>
    ServerName teu-domini.test
    DocumentRoot "/ruta/al/projecte/public"
    &lt;Directory "/ruta/al/projecte/public">
        AllowOverride All
        Require all granted
    &lt;/Directory>
&lt;/VirtualHost></code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <h4>Actualitzar hosts file</h4>
  <div class="code-box">
    <pre><code class="language-bash"># Linux/Mac
sudo nano /etc/hosts

# Windows
notepad C:\Windows\System32\drivers\etc\hosts</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="code-box">
    <pre><code class="language-plaintext">127.0.0.1   teu-domini.test</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
  
  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>Recorda reiniciar Apache després dels canvis: <code>sudo systemctl restart apache2</code> (Linux) o reiniciar WAMP/XAMPP (Windows)</p>
  </div>
</div>
         

          <!-- diri de vendes -->
<div id="diarivendes" class="content-section mb-5">
    <h3>6. Creació del Diari de Vendes</h3>
    <p>Per crear el "Diari de Vendes" al teu projecte Laravel 12.22.1 amb Filament v3.3.0, instal·lat a C:\Apache24\htdocs\larb5 sota Windows 11 amb servidor Apache, PHP 8.2.29 i MySQL, començarem per les dues migracions basades en les taules <code>wp_contabilidad_ventas</code> i <code>wp_contabilidad_detalles_venta</code> del teu dump SQL. Aquestes taules ja apareixen al teu fitxer larb5.sql, però crearem migracions Laravel per gestionar-les de forma nativa.</p>

    <p>Seguiré aquests passos:</p>
    <ol>
        <li><strong>Migracions</strong>: Crea fitxers de migració per a les taules.</li>
        <li><strong>Models</strong>: Crea models Eloquent amb relacions.</li>
        <li><strong>Controladors</strong>: Crea un controlador per gestionar les vendes (CRUD bàsic).</li>
        <li><strong>Routes</strong>: Afegeix rutes al fitxer web.php.</li>
        <li><strong>Vistes</strong>: Crea una vista bàsica per llistar el diari de vendes, utilitzant Bootstrap v5.3.7 (com al teu app.blade.php).</li>
    </ol>

    <p>Executa les comandes Artisan des del teu projecte (obre cmd a C:\Apache24\htdocs\larb5 i executa <code>php artisan</code>). Recorda que has de tenir el virtual host configurat a larb5.test.</p>

    <h4>1. Migracions</h4>
    <p>Executa aquestes comandes per generar els fitxers de migració:</p>
    <pre><code>php artisan make:migration create_wp_contabilidad_ventas_table
php artisan make:migration create_wp_contabilidad_detalles_venta_table --after=create_wp_contabilidad_ventas_table</code></pre>

    <p>Ara, edita els fitxers generats a <code>database/migrations/</code> (substitueix el contingut del mètode <code>up()</code> amb això). He adaptat els camps del teu SQL, incloent índexs i uniques.</p>

    <p><strong>Per <code>create_wp_contabilidad_ventas_table.php</code>:</strong></p>
    <pre><code>&lt;?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('wp_contabilidad_ventas', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->date('fecha')->nullable(false);
            $table->mediumInteger('cliente_id')->nullable(false);
            $table->decimal('subtotal', 10, 2)->nullable(false);
            $table->decimal('iva_porcentaje', 5, 2)->nullable(false);
            $table->decimal('iva_monto', 10, 2)->nullable(false);
            $table->decimal('total', 10, 2)->nullable(false);
            $table->text('notas')->nullable();
            $table->dateTime('fecha_creacion')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->mediumInteger('empleado_id')->nullable();
            $table->unique(['fecha', 'cliente_id', 'empleado_id'], 'unique_venta');
            $table->index('cliente_id');
            $table->index('empleado_id');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_ventas');
    }
};
    </code></pre>

    <p><strong>Per <code>create_wp_contabilidad_detalles_venta_table.php</code>:</strong></p>
    <pre><code>&lt;?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('wp_contabilidad_detalles_venta', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->mediumInteger('venta_id')->nullable(false);
            $table->mediumInteger('producto_id')->nullable(false);
            $table->integer('cantidad')->nullable(false);
            $table->decimal('precio_unitario', 10, 2)->nullable(false);
            $table->decimal('subtotal', 10, 2)->nullable(false);
            $table->index('venta_id');
            $table->index('producto_id');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_detalles_venta');
    }
};
    </code></pre>

    <p>Executa <code>php artisan migrate</code> per aplicar-les (assegura't que el teu .env està configurat amb la BD <code>larb5</code> o similar). Si les taules ja existeixen del dump, pots fer <code>php artisan migrate:fresh</code> amb precaució.</p>

    <h4>2. Models</h4>
    <p>Executa:</p>
    <pre><code>php artisan make:model Venta
php artisan make:model DetalleVenta</code></pre>

    <p>Edita els fitxers a <code>app/Models/</code>:</p>

    <p><strong>Venta.php</strong> (basat en el teu estil de models com Cliente.php):</p>
    <pre><code>&lt;?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Venta extends Model
{
    protected $table = 'wp_contabilidad_ventas';
    protected $primaryKey = 'id';
    protected $casts = ['id' => 'integer'];
    protected $fillable = [
        'fecha', 'cliente_id', 'subtotal', 'iva_porcentaje', 'iva_monto', 'total', 'notas', 'empleado_id'
    ];
    public $timestamps = false; // No timestamps automàtics, només fecha_creacion manual

    public function cliente(): BelongsTo
    {
        return $this->belongsTo(Cliente::class, 'cliente_id');
    }

    public function empleado(): BelongsTo
    {
        return $this->belongsTo(Empleat::class, 'empleado_id');
    }

    public function detalles(): HasMany
    {
        return $this->hasMany(DetalleVenta::class, 'venta_id');
    }
}
    </code></pre>

    <p><strong>DetalleVenta.php</strong>:</p>
    <pre><code>&lt;?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DetalleVenta extends Model
{
    protected $table = 'wp_contabilidad_detalles_venta';
    protected $primaryKey = 'id';
    protected $casts = ['id' => 'integer'];
    protected $fillable = [
        'venta_id', 'producto_id', 'cantidad', 'precio_unitario', 'subtotal'
    ];
    public $timestamps = false;

    public function venta(): BelongsTo
    {
        return $this->belongsTo(Venta::class, 'venta_id');
    }

    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class, 'producto_id');
    }
}
    </code></pre>

    <h4>3. Controladors</h4>
    <p>Executa:</p>
    <pre><code>php artisan make:controller VentaController</code></pre>

    <p>Edita <code>app/Http/Controllers/VentaController.php</code> (exemple bàsic per llistar vendes; pots expandir per CRUD):</p>
    <pre><code>&lt;?php

namespace App\Http\Controllers;

use App\Models\Venta;
use Illuminate\Http\Request;

class VentaController extends Controller
{
    public function index()
    {
        $ventas = Venta::with(['cliente', 'empleado', 'detalles.producto'])->orderBy('fecha', 'desc')->paginate(10);
        return view('comptabilitat.diari_vendes', compact('ventas'));
    }

    // Afegeix mètodes per create, store, etc., si cal
}
    </code></pre>

    <h4>4. Routes</h4>
    <p>Afegeix això al final de <code>routes/web.php</code> (després de les rutes existents):</p>
    <pre><code>use App\Http\Controllers\VentaController;

Route::get('/comptabilitat/diari-vendes', [VentaController::class, 'index'])->name('ventas.index');
    </code></pre>

    <h4>5. Vistes</h4>
    <p>Crea el fitxer <code>resources/views/comptabilitat/diari_vendes.blade.php</code> (extén app.blade.php per heretar Bootstrap v5.3.7 i estils):</p>
    <pre><code>
    </code></pre>

    <p>Ara, accedeix a <a href="http://larb5.test/comptabilitat/diari-vendes">http://larb5.test/comptabilitat/diari-vendes</a> per veure el diari. Si cal afegir dades de prova, pots fer-ho manualment via phpMyAdmin o amb seeders. Si vols integrar amb Filament per admin, crea un Resource: <code>php artisan make:filament-resource Venta --simple</code>. Digues-me si vols expandir (ex: formularis per afegir vendes).</p>
</div>

          <div id="generar_migracions" class="content-section mb-5">
  <h3>1. Netejar migracions antigues</h3>
  <p>Abans de generar migracions noves, cal eliminar les que havien donat errors i buidar el registre de migracions de la base de dades.</p>

  <div class="info-box">
    <i class="bi bi-info-circle"></i>
    <p>⚠️ Aquesta operació pot fer que Laravel "oblidi" les migracions existents. Només fes-ho si vols regenerar-les.</p>
  </div>

  <h4>Esborrar fitxers de migració</h4>
  <div class="code-box">
    <pre><code class="language-bash">rm database/migrations/*.php</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>

  <h4>Buidar taula de migracions</h4>
  <div class="code-box">
    <pre><code class="language-sql">TRUNCATE TABLE migrations;</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>

  <h3>2. Generar migracions des de la base de dades existent</h3>
  <p>Laravel no disposa d'una eina nativa per fer-ho, però pots utilitzar el paquet <code>kitloong/laravel-migrations-generator</code>.</p>

  <h4>Instal·lar el paquet</h4>
  <div class="code-box">
    <pre><code class="language-bash">composer require --dev kitloong/laravel-migrations-generator</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>

  <h4>Generar les migracions</h4>
  <div class="code-box">
    <pre><code class="language-bash">php artisan migrate:generate</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>

  <h3>3. Revisar migracions generades</h3>
  <p>Assegura't que no hi ha dades sensibles, i que l'ordre de creació de les taules és correcte.</p>

  <h3>4. Migrar des de zero</h3>
  <p>Si vols aplicar les migracions netes des de zero (⚠️ això esborra totes les dades):</p>

  <div class="code-box">
    <pre><code class="language-bash">php artisan migrate:fresh</code></pre>
    <button class="copy-btn" onclick="copyCode(this)">Copiar</button>
  </div>
</div>

          <!-- seeders -->
          <div id="seeders" class="content-section mb-5">
            <h1>Seeder per omplir la taula wp_contabilidad_empleados</h1>
    <p class="note">Aquest seeder crea 10 registres de prova per a la taula <code>wp_contabilidad_empleados</code> utilitzant Faker per generar dades aleatòries. Es basa en el model <code>Empleat</code> i segueix l'estructura de la base de dades <code>larb5</code> per a Laravel 12.22.1.</p>

    <h2>1. Crear la factoria</h2>
    <p>Comanda per generar la factoria:</p>
    <pre>php artisan make:factory EmpleatFactory --model=Empleat</pre>
    <p>Contingut de <code>database/factories/EmpleatFactory.php</code>:</p>
    <pre>
&lt;?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Empleat;

class EmpleatFactory extends Factory
{
    protected $model = Empleat::class;

    public function definition(): array
    {
        return [
            'nombre' => $this->faker->name(),
            'nif' => $this->faker->unique()->regexify('[A-Z]{1}[0-9]{8}'),
            'direccion' => $this->faker->address(),
            'telefono' => $this->faker->phoneNumber(),
            'email' => $this->faker->unique()->safeEmail(),
        ];
    }
}
    </pre>

    <h2>2. Crear el seeder</h2>
    <p>Comanda per generar el seeder:</p>
    <pre>php artisan make:seeder EmpleatSeeder</pre>
    <p>Contingut de <code>database/seeders/EmpleatSeeder.php</code>:</p>
    <pre>
&lt;?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Empleat;

class EmpleatSeeder extends Seeder
{
    public function run(): void
    {
        Empleat::factory()->count(10)->create();
    }
}
    </pre>

    <h2>3. Actualitzar el DatabaseSeeder</h2>
    <p>Contingut de <code>database/seeders/DatabaseSeeder.php</code> (extracte):</p>
    <pre>
&lt;?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $this->call([
            ClienteSeeder::class,
            EmpleatSeeder::class,
        ]);
    }
}
    </pre>

    <h2>4. Executar el seeder</h2>
    <p>Comanda per executar només el seeder d'empleats:</p>
    <pre>php artisan db:seed --class=EmpleatSeeder</pre>
    <p>Alternativa per executar tots els seeders:</p>
    <pre>php artisan db:seed</pre>
    <p>Si cal refrescar la base de dades (perd dades existents):</p>
    <pre>php artisan migrate:fresh --seed</pre>

    <h2>5. Verificar les dades</h2>
    <p>Consulta SQL per comprovar els registres generats:</p>
    <pre>SELECT * FROM wp_contabilidad_empleados;</pre>
    <p>Resultat esperat: 10 registres amb camps <code>nombre</code>, <code>nif</code>, <code>direccion</code>, <code>telefono</code>, i <code>email</code> omplerts amb dades aleatòries generades per Faker.</p>

    <h2>6. Notes addicionals</h2>
    <p class="note">
        - Assegura't que la taula <code>wp_contabilidad_empleados</code> existeix a la base de dades <code>larb5</code>. Si no, crea-la amb la migració corresponent o amb la consulta SQL del fitxer <code>larb5.sql</code>.<br>
        - Comanda per crear la migració: <code>php artisan make:migration create_wp_contabilidad_empleados_table</code>.<br>
        - Per gestionar els empleats amb Filament: <code>php artisan make:filament-resource Empleat --simple</code>.
    </p>
          </div>

          <!-- Governing Law -->
          <div id="governing-law" class="content-section mb-5">
            <h3>9. Llei Aplicable</h3>
            <p>Aquests Termes es regiran i interpretaran d'acord amb les lleis d'Espanya, sense tenir en compte les seves disposicions sobre conflictes de lleis.</p>
          </div>

          <!-- Changes -->
          <div id="changes" class="content-section mb-5">
            <h3>10. Canvis als Termes</h3>
            <p>Ens reservem el dret de modificar o reemplaçar aquests Termes en qualsevol moment. Notificarem els canvis publicant els nous Termes en aquesta pàgina.</p>
            <div class="notice-box">
              <i class="bi bi-bell"></i>
              <p>En continuar accedint o utilitzant el nostre servei després que les revisions entrin en vigor, accepteu estar vinculats pels termes revisats.</p>
            </div>
          </div>

          <!-- Server Configuration Section -->
          <div id="server-config" class="content-section mb-5">
            <h3>11. Configuració dels Projectes per a estudijoanpuig.com</h3>
            <p>Aquest apartat conté tots els codis necessaris per configurar els quatre projectes (Laravel, WordPress, wp_nitida i index.php) al servidor. Copieu i enganxeu els codis segons les instruccions.</p>

            <!-- Configuració de 000-default.conf -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.1 Configuració del Virtual Host (/etc/apache2/sites-available/000-default.conf)</h4>
                <p class="text-gray-600 mb-4">Aquest fitxer configura Apache per gestionar els quatre projectes sota el domini <code>estudijoanpuig.com</code>.</p>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>&lt;VirtualHost *:80&gt;
    ServerName estudijoanpuig.com
    ServerAlias www.estudijoanpuig.com
    DocumentRoot /var/www/html

    # Configuració per a Laravel
    Alias /laravel /var/www/html/laravel/public
    &lt;Directory /var/www/html/laravel/public&gt;
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    &lt;/Directory&gt;

    # Configuració per al primer WordPress
    Alias /wordpress /var/www/html/wordpress
    &lt;Directory /var/www/html/wordpress&gt;
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    &lt;/Directory&gt;

    # Configuració per al segon WordPress (wp_nitida)
    Alias /wp_nitida /var/www/html/wp_nitida
    &lt;Directory /var/www/html/wp_nitida&gt;
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    &lt;/Directory&gt;

    # Configuració per a l'arrel (index.php)
    &lt;Directory /var/www/html&gt;
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    &lt;/Directory&gt;

    ErrorLog ${APACHE_LOG_DIR}/estudijoanpuig.com-error.log
    CustomLog ${APACHE_LOG_DIR}/estudijoanpuig.com-access.log combined
&lt;/VirtualHost&gt;</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- .htaccess per a /var/www/html -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.2 .htaccess per a l'arrel (/var/www/html/.htaccess)</h4>
                <p class="text-gray-600 mb-4">Aquest fitxer gestiona les peticions a l'arrel per servir <code>index.php</code>.</p>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>&lt;IfModule mod_rewrite.c&gt;
    RewriteEngine On
    RewriteBase /

    # Si index.php existeix, serveix-lo directament
    RewriteCond %{REQUEST_FILENAME} -f
    RewriteRule ^index\.php$ - [L]

    # Redirigeix altres peticions a subcarpetes si cal
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule ^(laravel|wordpress|wp_nitida) - [L]
&lt;/IfModule&gt;</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- .htaccess per a Laravel -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.3 .htaccess per a Laravel (/var/www/html/laravel/public/.htaccess)</h4>
                <p class="text-gray-600 mb-4">Aquest fitxer gestiona les peticions a <code>/laravel</code> i evita conflictes amb altres subcarpetes.</p>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>&lt;IfModule mod_rewrite.c&gt;
    &lt;IfModule mod_negotiation.c&gt;
        Options -MultiViews -Indexes
    &lt;/IfModule&gt;

    RewriteEngine On

    # Exclou altres subcarpetes de les regles de Laravel
    RewriteCond %{REQUEST_URI} !^/(wordpress|wp_nitida|index\.php) [NC]
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^ index.php [L]
&lt;/IfModule&gt;</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- .htaccess per a WordPress (wordpress) -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.4 .htaccess per a WordPress (/var/www/html/wordpress/.htaccess)</h4>
                <p class="text-gray-600 mb-4">Aquest fitxer gestiona les peticions a <code>/wordpress</code>.</p>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>&lt;IfModule mod_rewrite.c&gt;
    RewriteEngine On
    RewriteBase /wordpress/
    RewriteRule ^index\.php$ - [L]
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule . /wordpress/index.php [L]
&lt;/IfModule&gt;</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- .htaccess per a WordPress (wp_nitida) -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.5 .htaccess per a WordPress wp_nitida (/var/www/html/wp_nitida/.htaccess)</h4>
                <p class="text-gray-600 mb-4">Aquest fitxer gestiona les peticions a <code>/wp_nitida</code>.</p>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>&lt;IfModule mod_rewrite.c&gt;
    RewriteEngine On
    RewriteBase /wp_nitida/
    RewriteRule ^index\.php$ - [L]
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule . /wp_nitida/index.php [L]
&lt;/IfModule&gt;</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- Configuració de wp-config.php -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.6 Configuració de wp-config.php</h4>
                <p class="text-gray-600 mb-4">Afegeix aquestes línies als fitxers <code>wp-config.php</code> de cada instal·lació de WordPress per definir les URLs correctes.</p>
                <h5 class="text-xl font-medium text-gray-700 mb-2">Per a /var/www/html/wordpress/wp-config.php</h5>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>define('WP_HOME', 'http://estudijoanpuig.com/wordpress');
define('WP_SITEURL', 'http://estudijoanpuig.com/wordpress');</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
                <h5 class="text-xl font-medium text-gray-700 mb-2">Per a /var/www/html/wp_nitida/wp-config.php</h5>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>define('WP_HOME', 'http://estudijoanpuig.com/wp_nitida');
define('WP_SITEURL', 'http://estudijoanpuig.com/wp_nitida');</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- Comandes per a permisos -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.7 Comandes per configurar permisos</h4>
                <p class="text-gray-600 mb-4">Executa aquestes comandes al terminal per configurar els permisos correctes.</p>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
sudo chmod -R 775 /var/www/html/laravel/storage /var/www/html/laravel/bootstrap/cache
sudo chmod -R 775 /var/www/html/wordpress/wp-content
sudo chmod -R 775 /var/www/html/wp_nitida/wp-content</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- Comandes per actualitzar el sistema -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.8 Comandes per actualitzar el sistema</h4>
                <p class="text-gray-600 mb-4">Executa aquestes comandes per actualitzar el sistema i reiniciar si cal.</p>
                <pre class="relative bg-black text-green-400 p-4 rounded-lg"><code>sudo apt update
sudo apt full-upgrade
sudo reboot</code>
                    <button class="copy-btn absolute top-2 right-2 bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-2 rounded-lg shadow hover:from-green-500 hover:to-blue-600 transition duration-300" onclick="navigator.clipboard.writeText(this.previousElementSibling.textContent).then(() => alert('Codi copiat al porta-retalls!'));">Copiar</button>
                </pre>
            </section>

            <!-- Instruccions finals -->
            <section class="mb-8">
                <h4 class="text-2xl font-semibold text-gray-700 mb-4">11.9 Instruccions finals</h4>
                <p class="text-gray-600 mb-4">Després d'aplicar aquests codis:</p>
                <ul class="list-disc list-inside text-gray-600">
                    <li>Copia i enganxa els codis als fitxers corresponents.</li>
                    <li>Reinicia Apache amb: <code>sudo systemctl restart apache2</code>.</li>
                    <li>Prova les URLs:
                        <ul class="list-circle list-inside ml-4">
                            <li><a href="http://estudijoanpuig.com/laravel" class="text-blue-600 hover:underline">http://estudijoanpuig.com/laravel</a></li>
                            <li><a href="http://estudijoanpuig.com/wordpress" class="text-blue-600 hover:underline">http://estudijoanpuig.com/wordpress</a></li>
                            <li><a href="http://estudijoanpuig.com/wp_nitida" class="text-blue-600 hover:underline">http://estudijoanpuig.com/wp_nitida</a></li>
                            <li><a href="http://estudijoanpuig.com/index.php" class="text-blue-600 hover:underline">http://estudijoanpuig.com/index.php</a></li>
                        </ul>
                    </li>
                    <li>Si hi ha errors, revisa els logs:
                        <ul class="list-circle list-inside ml-4">
                            <li>Apache: <code>sudo tail -n 50 /var/log/apache2/error.log</code></li>
                            <li>Laravel: <code>/var/www/html/laravel/storage/logs/laravel.log</code></li>
                            <li>WordPress: Activa <code>WP_DEBUG</code> a <code>wp-config.php</code> i revisa <code>wp-content/debug.log</code>.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <!-- Missatge de felicitació -->
            <section class="text-center">
                <h4 class="text-2xl font-semibold text-green-600 mb-4">Felicitats!</h4>
                <p class="text-lg text-gray-600">Has aconseguit configurar els teus quatre projectes després de dos anys d'esforç! Gaudeix del teu èxit i continua aprenent!</p>
            </section>
          </div>
        </div>
      </div>
    </section><!-- /Terms Of Service Section -->

    <!-- Custom CSS for Code Blocks and Copy Button -->
    <style>
      pre {
        position: relative;
        overflow-x: auto;
        font-family: 'Roboto Mono', monospace;
        font-size: 14px;
        line-height: 1.5;
      }
      code {
        display: block;
        white-space: pre-wrap;
      }
      .section-nav .nav-link {
        font-size: 16px;
        padding: 10px 15px;
        color: #007bff;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
      }
      .section-nav .nav-link:hover {
        background-color: #f1f1f1;
        color: #0056b3;
      }
      .section-nav .nav-link.active {
        background-color: #007bff;
        color: white;
      }
    </style>

    <!-- JavaScript for Smooth Scroll -->
    <script>
      document.addEventListener('DOMContentLoaded', function () {
        document.querySelectorAll('.section-nav a').forEach(anchor => {
          anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const targetId = this.getAttribute('href').substring(1);
            const targetElement = document.getElementById(targetId);
            window.scrollTo({
              top: targetElement.offsetTop - 100,
              behavior: 'smooth'
            });
            // Actualitzar l'estat actiu dels enllaços
            document.querySelectorAll('.section-nav .nav-link').forEach(link => link.classList.remove('active'));
            this.classList.add('active');
          });
        });
      });
    </script>
@endsection