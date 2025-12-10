@extends('layouts.app')
@section('title', 'Documentació')
@section('content')


    <style>
        /* Navbar */
        .navbar {
            position: relative;
            z-index: 1000;
        }
        /* Barra de títol sticky */
        .page-title {
            position: sticky;
            top: 60px;
            z-index: 500;
            background: #fff;
        }
    </style>


<div class="page-title light-background" style="background-color: #f5f5f5;">
        <div class="container">
            <h1>@yield('title')</h1>
            <nav class="breadcrumbs">
                <ol>
					
					<li><a href="#1">Varies ordres per ubuntu</a></li>
          <li><a href="#2">Ordres ubuntu despres de pujar un nou projecte</a></li>
          <li><a href="#3">Eliminar i crear arxius i carpetes, comprimir i moure</a></li>
          <li><a href="#4">instal-lar wordpress i arreglar l'axiu config per mostrar errors </a></li>
           <li><a href="#5">SSH, PHP, MySQL i phpMyAdmin </a></li>  
            <li><a href="#6">donar permisos i assegurar que el projecte sigui visible des del navegador </a></li>        
                </ol>
            </nav>
        </div>

         
    </div>


   


<section  class="">

      <div id="1" class="container" style="scroll-margin-top:325px;">
        <div class="row align-items-center">    
          <!-- Content Column -->
          <div class="services section py-20">
            <div class="content">
              <h2>Varies ordres per ubuntu</h2>
              <div class="doc-list">
          <ul>
            <li><span class="doc-subtitle">Actualitzar el sistema:</span>
              <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo apt update && sudo apt upgrade -y</div>
            </li>
            <li><span class="doc-subtitle">Instal·lar paquets essencials:</span>
              <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo apt install curl wget git unzip htop -y</div>
            </li>
            <li><span class="doc-subtitle">Configurar hostname:</span>
              <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo hostnamectl set-hostname NOM_HOST</div>
            </li>
            <li><span class="doc-subtitle">Configurar zona horària:</span>
              <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo timedatectl set-timezone Europe/Madrid</div>
            </li>
            <li><span class="doc-subtitle">Afegir usuari nou amb permisos sudo:</span>
              <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo adduser nomusuari && sudo usermod -aG sudo nomusuari</div>
            </li>
            <li><span class="doc-subtitle">Configurar SSH (opcional):</span>
              <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo systemctl enable ssh && sudo systemctl start ssh</div>
            </li>
          </ul>
        </div>
            </div>
          </div>
        </div>
      </div>


        <div id="2" class="container" style="scroll-margin-top:325px;">
        <div class="row align-items-center">    
          <!-- Content Column -->
          <div class="services section py-20">
            <div class="content">
              <h2>Ordres Ubuntu després de pujar un nou projecte</h2>
              <div class="doc-list">
                <ul>
                  <li><span class="doc-subtitle">Donar permisos a la carpeta del projecte:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo chown -R www-data:www-data /var/www/html/nom_projecte</div>
                  </li>
                  <li><span class="doc-subtitle">Donar permisos d'escriptura a storage i bootstrap:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo chmod -R 775 storage bootstrap/cache</div>
                  </li>
                  <li><span class="doc-subtitle">Editar la configuració d'Apache (VirtualHost):</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo nano /etc/apache2/sites-available/000-default.conf</div>
                  </li>
                  <li><span class="doc-subtitle">Reiniciar Apache:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo systemctl restart apache2</div>
                  </li>
                  <li><span class="doc-subtitle">Donar permisos a .env si cal:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo chmod 664 .env</div>
                  </li>
                  <li><span class="doc-subtitle">Instal·lar dependències PHP:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">composer install</div>
                  </li>
                  <li><span class="doc-subtitle">Instal·lar dependències JS:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">npm install</div>
                  </li>
                </ul>
              </div>
              <div class="doc-tip">Recorda revisar la configuració de la base de dades i els permisos de seguretat abans d'obrir el projecte a producció.</div>
            </div>
          </div>
        </div>
      </div>

      <div id="3" class="container" style="scroll-margin-top:325px;">
        <div class="row align-items-center">    
          <!-- Content Column -->
          <div class="services section py-20">
            <div class="content">
              <h2>Eliminar i crear arxius i carpetes, comprimir i moure</h2>
              <div class="doc-list">
                <ul>
                  <li><span class="doc-subtitle">Eliminar arxiu:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">rm nom_arxiu.txt</div>
                  </li>
                  <li><span class="doc-subtitle">Eliminar carpeta (recursiu):</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">rm -r nom_carpeta</div>
                  </li>
                  <li><span class="doc-subtitle">Crear arxiu buit:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">touch nou_arxiu.txt</div>
                  </li>
                  <li><span class="doc-subtitle">Crear carpeta:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">mkdir nova_carpeta</div>
                  </li>
                  <li><span class="doc-subtitle">Moure arxiu:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">mv arxiu.txt /ruta/desti/</div>
                  </li>
                  <li><span class="doc-subtitle">Moure carpeta:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">mv carpeta/ /ruta/desti/</div>
                  </li>
                  <li><span class="doc-subtitle">Comprimir carpeta en zip:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">zip -r arxiu.zip carpeta/</div>
                  </li>
                  <li><span class="doc-subtitle">Descomprimir zip:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">unzip arxiu.zip</div>
                  </li>
                  <li><span class="doc-subtitle">Comprimir en tar.gz:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">tar -czvf arxiu.tar.gz carpeta/</div>
                  </li>
                  <li><span class="doc-subtitle">Descomprimir tar.gz:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">tar -xzvf arxiu.tar.gz</div>
                  </li>
                </ul>
              </div>
              <div class="doc-tip">Utilitza sempre les opcions amb precaució, especialment rm -r, ja que elimina sense recuperació.</div>
            </div>
          </div>
        </div>
      </div>

      <div id="4" class="container" style="scroll-margin-top:325px;">
        <div class="row align-items-center">    
          <!-- Content Column -->
          <div class="services section py-20">
            <div class="content">
              <h2>Instal·lar WordPress i arreglar l'arxiu config per mostrar errors</h2>
              <div class="doc-list">
                <ul>
                  <li><span class="doc-subtitle">Descarregar WordPress:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">wget https://wordpress.org/latest.tar.gz</div>
                  </li>
                  <li><span class="doc-subtitle">Descomprimir WordPress:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">tar -xzvf latest.tar.gz</div>
                  </li>
                  <li><span class="doc-subtitle">Moure fitxers a la carpeta web:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo mv wordpress/* /var/www/html/</div>
                  </li>
                  <li><span class="doc-subtitle">Configurar wp-config.php per mostrar errors:</span>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo nano /var/www/html/wp-config.php</div>
                    <div class="doc-subtitle">Afegir o modificar les línies següents:</div>
                    <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">
define('WP_DEBUG', true);<br>
define('WP_DEBUG_DISPLAY', true);
                    </div>
                  </li>
                </ul>
              </div>
              <div class="doc-tip">Recorda desactivar WP_DEBUG en producció per seguretat.</div>
            </div>
          </div>
        </div>
      </div>

        <div id="5" class="container" style="scroll-margin-top:325px;">
          <div class="row align-items-center">    
            <!-- Content Column -->
            <div class="services section py-20">
              <div class="content">
                <h2>SSH, PHP, MySQL i phpMyAdmin</h2>
                <div class="doc-list">
                  <ul>
                    <li><span class="doc-subtitle">Connectar per SSH:</span>
                      <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">ssh usuari@ip_del_servidor</div>
                    </li>
                    <li><span class="doc-subtitle">Instal·lar PHP i extensions:</span>
                      <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo apt install php php-cli php-mysql php-xml php-mbstring php-curl -y</div>
                    </li>
                    <li><span class="doc-subtitle">Instal·lar MySQL Server:</span>
                      <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo apt install mysql-server -y</div>
                    </li>
                    <li><span class="doc-subtitle">Accedir a MySQL:</span>
                      <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo mysql -u root -p</div>
                    </li>
                    <li><span class="doc-subtitle">Instal·lar phpMyAdmin:</span>
                      <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo apt install phpmyadmin -y</div>
                    </li>
                    <li><span class="doc-subtitle">Configurar phpMyAdmin a Apache:</span>
                      <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin</div>
                    </li>
                    <li><span class="doc-subtitle">Reiniciar Apache:</span>
                      <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">sudo systemctl restart apache2</div>
                    </li>
                  </ul>
                </div>
                <div class="doc-tip">Recorda canviar la contrasenya de root de MySQL i protegir l'accés a phpMyAdmin!</div>
              </div>
            </div>
          </div>
        </div>

         <div id="6" class="container" style="scroll-margin-top:325px;">
            <div class="row align-items-center">    
              <!-- Content Column -->
              <div class="services section py-20">
                <div class="content">
                  <h2>Permisos i visibilitat d'un nou projecte</h2>
                  <div class="doc-list">
                    <ul>
                      <li><span class="doc-subtitle">Creat nou projecte a:</span>
                        <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">/var/www/html/veserkal/config.php</div>
                      </li>
                      <li><span class="doc-subtitle">Donar permisos a l'usuari del servidor web:</span>
                        <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">chown -R www-data:www-data /var/www/html/veserkal</div>
                      </li>
                      <li><span class="doc-subtitle">Assignar permisos recomanats a carpetes:</span>
                        <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">find /var/www/html/veserkal -type d -exec chmod 755 {} \;</div>
                      </li>
                      <li><span class="doc-subtitle">Assignar permisos recomanats a fitxers:</span>
                        <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">find /var/www/html/veserkal -type f -exec chmod 644 {} \;</div>
                      </li>
                    </ul>
                  </div>
                  <div class="doc-tip">Això farà que les carpetes siguin accessibles i els fitxers es puguin llegir pel servidor web.</div>
                  <div class="doc-subtitle">Revisa el projecte al navegador:</div>
                  <div class="doc-code" style="color: #c00; font-family: 'Fira Mono', 'Consolas', 'Menlo', monospace; font-weight: bold;">http://estudijoanpuig.com/veserkal</div>
                </div>
              </div>
            </div>
          </div>

        

</section>

	


	
	
@endsection