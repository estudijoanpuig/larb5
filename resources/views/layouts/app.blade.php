<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="{{ asset('estudi.png') }}">
  <title>@yield('title', config('app.name')) | {{ config('app.name') }}</title>
  <meta name="description" content="@yield('meta_description', 'Sistema de comptabilitat, gestió de vendes, clients i productes amb Laravel Filament.')">
  <meta name="keywords" content="@yield('meta_keywords', 'comptabilitat, vendes, clients, Laravel, Filament, gestió, productes, informes')">
  <meta name="robots" content="index, follow">
  <meta name="author" content="Estudi Joan Puig">

  <!-- Open Graph / Facebook -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="{{ url()->current() }}">
  <meta property="og:title" content="@yield('title', config('app.name')) | {{ config('app.name') }}">
  <meta property="og:description" content="@yield('meta_description', 'Sistema de comptabilitat, gestió de vendes, clients i productes amb Laravel Filament.')">
  <meta property="og:image" content="{{ asset('estudi.png') }}">

  <!-- Twitter -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:url" content="{{ url()->current() }}">
  <meta name="twitter:title" content="@yield('title', config('app.name')) | {{ config('app.name') }}">
  <meta name="twitter:description" content="@yield('meta_description', 'Sistema de comptabilitat, gestió de vendes, clients i productes amb Laravel Filament.')">
  <meta name="twitter:image" content="{{ asset('estudi.png') }}">

	<!-- Incloure Highcharts des del CDN -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com" rel="preconnect">
	<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Questrial:wght@400&display=swap" rel="stylesheet">

	<!-- Vendor CSS Files -->
	<link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
	<link href="{{ asset('assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
	<link href="{{ asset('assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
	<link href="{{ asset('assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

	<!-- Main CSS File -->
	<link href="{{ asset('assets/css/main.css') }}" rel="stylesheet">  

	<!-- Font Awesome CSS (afegit per icones com fa-edit, fa-trash, etc.) -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
	
	<!-- FANCYBOX -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css"/>
	<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>

 <!-- Estil mínim -->
<style>
  .code-block {
    position: relative;
    margin: 20px 0;
  }
  pre {
    background: #D4E3FF;
    padding: 15px;
    border-radius: 5px;
    color: #2D313B;
    overflow-x: auto;
  }
  .copy-btn {
    position: absolute;
    right: 10px;
    top: 10px;
    background: #3b82f6;
    color: white;
    border: none;
    padding: 5px 10px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
  }
  .copy-btn:hover {
    background: #2563eb;
  }
  .copy-btn.copied {
    background: #10b981;
  }
</style>

<!-- Script infal·lible -->
<script>
document.addEventListener('DOMContentLoaded', function() {
  // Funció de còpia amb fallback
  function copyToClipboard(text) {
    // Mètode modern (funciona en HTTPS i localhost)
    if (navigator.clipboard) {
      return navigator.clipboard.writeText(text).then(() => true);
    }
    // Fallback per a entorns insegurs
    const textarea = document.createElement('textarea');
    textarea.value = text;
    textarea.style.position = 'fixed';
    document.body.appendChild(textarea);
    textarea.select();
    try {
      return document.execCommand('copy') ? Promise.resolve() : Promise.reject();
    } catch (err) {
      return Promise.reject(err);
    } finally {
      document.body.removeChild(textarea);
    }
  }

  // Processar tots els blocs de codi
  document.querySelectorAll('pre').forEach(pre => {
    // Crear contenidor
    const container = document.createElement('div');
    container.className = 'code-block';
    
    // Crear botó
    const button = document.createElement('button');
    button.className = 'copy-btn';
    button.textContent = 'Copiar';
    
    // Reorganitzar elements
    pre.parentNode.insertBefore(container, pre);
    container.appendChild(pre);
    container.appendChild(button);
    
    // Assignar event
    button.addEventListener('click', () => {
      const code = pre.querySelector('code').innerText;
      copyToClipboard(code)
        .then(() => {
          button.textContent = 'Copiat!';
          button.classList.add('copied');
          setTimeout(() => {
            button.textContent = 'Copiar';
            button.classList.remove('copied');
          }, 2000);

        })
        .catch(err => {
          console.error('Error en copiar:', err);
          button.textContent = 'Error';
          setTimeout(() => button.textContent = 'Copiar', 2000);
        });
    });
  });
});
</script>

  <!-- Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-E2CRKDPD7M"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-E2CRKDPD7M');
  </script>

</head>

<body class="index-page">

  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

      <a href="/" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="{{ asset('assets/img/estudi.png') }}" alt=""> 
        <h1 class="sitename">{{ config('app.name') }}</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="/#hero" class="active">Home</a></li>
          <li><a href="/#about">About</a></li>
          
          <li><a href="/#portfolio">Portfolio</a></li>
          <li><a href="/comptabilitat/vendes/diari_vendes">Vendes</a></li>
          <li><a href="/comptabilitat/compres/diari_compres">Compres</a></li>

          <li class="dropdown"><a href="#"><span>Pàgines</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
			
			  <li class="dropdown"><a href="#"><span>Borsa & Stocks</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
				  <li><a href="/stocks/index"><i class="bi bi-graph-up"></i>Stocks</a></li>
                  <li><a href="/nanogallery/stocks/"><i class="bi bi-graph-up"></i>tw Stocks</a></li>
                  <li><a href="/nanogallery/stocks/sector_financial.php"><i class="bi bi-graph-up"></i>tw stocks sector_financial</a></li>
                  <li><a href="/nanogallery/stocks/sector_IA.php"><i class="bi bi-graph-up"></i>tw stocks sector_IA</a></li>
                </ul>
              </li>
			
              <li><a href="/productes">Galeria de Productes</a></li>
              <li><a href="/web_development">Web Development</a></li>
              <li><a href="/documentacio">Documentació del Projecte</a></li>
              <li><a href="/sistema-usuaris">Sistema d'Usuaris</a></li>
              <li><a href="/eines">Eines</a></li>
              <li><a href="/framework">Framework</a></li>
              <li><a href="/cerca">Cerca</a></li>
              
              <li class="dropdown"><a href="#"><span>Base de Dades</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
                  <li><a href="/comptabilitat/bbdd">Creació i Manteniment</a></li>
                  <li><a href="/començemlanostrabasededades">Importar des de Google Contacts</a></li>
                  <li><a href="/guia-bbdd"><i class="bi bi-journal-text"></i> Guia: Començar una Base de Dades</a></li>
                </ul>
              </li>
            </ul>
          </li>

          <li class="dropdown extended-dropdown-2"><a href="#"><span>Intel.ligencia Artificial</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li>
                <a href="/guies/copilot">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                       <img src="{{ asset('assets/img/copilot.png') }}"  align="left" width="30" height="" />
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">GitHub Copilot</span>
                      <span class="menu-description">Guia completa per VS Code</span>
                    </div>
                  </div>
                  <div class="menu-badge">Guia</div>
                </a>
              </li>
              
              <li>
                <a href="/guies/chatgpt">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                       <img src="{{ asset('assets/img/sqlexpert.jpg') }}"  align="left" width="30" height="" />
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">ChatGPT</span>
                      <span class="menu-description">SQL Expert (QueryGPT)</span>
                    </div>
                  </div>
                </a>
              </li>

              <li>
                <a href="/guies/grok">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                      <img src="{{ asset('assets/img/grok.webp') }}"  align="left" width="30" height="" />
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">Grok AI</span>
                      <span class="menu-description">IA de xAI amb accés a 𝕏</span>
                    </div>
                  </div>
                  <div class="menu-badge">New</div>
                </a>
              </li>
              
              <li>
                <a href="/guies/deepseek">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                      <img src="{{ asset('assets/img/deepseek.png') }}"  align="left" width="30" height="" />
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">DeepSeek</span>
                      <span class="menu-description">Gratuït i Open Source</span>
                    </div>
                  </div>
                  <div class="menu-badge hot">Free</div>
                </a>
              </li>
             
              <li>
                <a href="/guies/gemini">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                        <img src="{{ asset('assets/img/gemini.webp') }}"  align="left" width="30" height="" />
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">Gemini</span>
                      <span class="menu-description">IA de Google amb 2M tokens</span>
                    </div>
                  </div>
                  <div class="menu-badge updates">2.0</div>
                </a>
              </li>

              <li>
                <a href="/guies/claude">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                        <img src="{{ asset('assets/img/claude.png') }}"  align="left" width="30" height="" />
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">Claude Sonnet</span>
                      <span class="menu-description">Millor en qualitat de codi</span>
                    </div>
                  </div>
                  <div class="menu-badge updates">3.5</div>
                </a>
              </li>

              <li>
                <a href="/guies/comparativa">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                       <img src="{{ asset('assets/img/comparativa.png') }}"  align="left" width="30" height="" />
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">Comparativa IA</span>
                      <span class="menu-description">Copilot + Claude = Top</span>
                    </div>
                  </div>
                  <div class="menu-badge hot">Top</div>
                </a>
              </li>

              <li>
                <a href="/guies/notebooklm">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                      <i class="bi bi-journals" style="font-size: 30px; color: #4285F4;"></i>
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">NotebookLM</span>
                      <span class="menu-description">Crea podcasts dels teus docs</span>
                    </div>
                  </div>
                  <div class="menu-badge updates">Podcast</div>
                </a>
              </li>

              <li>
                <a href="/guies/google-ai-studio">
                  <div class="menu-item-content">
                    <div class="menu-icon">
                      <i class="bi bi-cpu" style="font-size: 30px; color: #4285F4;"></i>
                    </div>
                    <div class="menu-text">
                      <span class="menu-title">Google AI Studio</span>
                      <span class="menu-description">Prototipa amb Gemini</span>
                    </div>
                  </div>
                  <div class="menu-badge hot">API</div>
                </a>
              </li>
            </ul>
          </li>

          <!-- Megamenu 2 -->
          <li class="megamenu-2"><a href="#"><span>Compt. Autonom</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>

            <!-- Mobile Megamenu -->
            <ul class="mobile-megamenu">

              <li><a href="#">Product Analytics</a></li>
              <li><a href="#">Customer Insights</a></li>
              <li><a href="#">Market Research</a></li>

              <li class="dropdown"><a href="#"><span>Enterprise Software</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
                  <li><a href="#">CRM Solutions</a></li>
                  <li><a href="#">ERP Systems</a></li>
                  <li><a href="#">Workflow Automation</a></li>
                  <li><a href="#">Document Management</a></li>
                  <li><a href="#">Business Intelligence</a></li>
                  <li><a href="#">Integration Platform</a></li>
                </ul>
              </li>

              <li class="dropdown"><a href="#"><span>Development Tools</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
                  <li><a href="#">Code Editors</a></li>
                  <li><a href="#">Version Control</a></li>
                  <li><a href="#">Testing Frameworks</a></li>
                  <li><a href="#">Deployment Tools</a></li>
                  <li><a href="#">API Management</a></li>
                  <li><a href="#">Performance Monitoring</a></li>
                </ul>
              </li>

              <li class="dropdown"><a href="#"><span>Creative Suite</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
                  <li><a href="#">Design Software</a></li>
                  <li><a href="#">Video Editing</a></li>
                  <li><a href="#">Audio Production</a></li>
                  <li><a href="#">Animation Tools</a></li>
                  <li><a href="#">Photo Editing</a></li>
                  <li><a href="#">3D Modeling</a></li>
                </ul>
              </li>

              <li class="dropdown"><a href="#"><span>Resources</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
                  <li><a href="#">Documentation</a></li>
                  <li><a href="#">Tutorials</a></li>
                  <li><a href="#">Community</a></li>
                  <li><a href="#">Blog Posts</a></li>
                </ul>
              </li>

            </ul><!-- End Mobile Megamenu -->

            <!-- Desktop Megamenu -->
            <div class="desktop-megamenu">

              <div class="tab-navigation">
                <ul class="nav nav-tabs flex-column" id="7525-megamenu-tabs" role="tablist">
                  <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="7525-tab-1-tab" data-bs-toggle="tab" data-bs-target="#7525-tab-1" type="button" role="tab" aria-controls="7525-tab-1" aria-selected="true">
                      <i class="bi bi-server"></i>
                      <span>Taules de la BBDD</span>
                    </button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="7525-tab-2-tab" data-bs-toggle="tab" data-bs-target="#7525-tab-2" type="button" role="tab" aria-controls="7525-tab-2" aria-selected="false">
                      <i class="bi bi-server"></i>
                      <span>Vendes - Compres</span>
                    </button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="7525-tab-3-tab" data-bs-toggle="tab" data-bs-target="#7525-tab-3" type="button" role="tab" aria-controls="7525-tab-3" aria-selected="false">
                      <i class="bi bi-palette"></i>
                      <span>Creative Suite</span>
                    </button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="7525-tab-4-tab" data-bs-toggle="tab" data-bs-target="#7525-tab-4" type="button" role="tab" aria-controls="7525-tab-4" aria-selected="false">
                      <i class="bi bi-journal-text"></i>
                      <span>Resources</span>
                    </button>
                  </li>
                </ul>
              </div>

              <div class="tab-content">

                <!-- Enterprise Software Tab -->
                <div class="tab-pane fade show active" id="7525-tab-1" role="tabpanel" aria-labelledby="7525-tab-1-tab">
                  <div class="content-grid">
                    <div class="product-section">
                      <h4>principal</h4>
                      <div class="product-list">
                        <a href="/admin/clientes" class="product-link">
                          <i class="bi bi-people"></i>
                          <div>
                            <span>Clients</span>
                            <small>Per amagatzemar la informacio correcta</small>
                          </div>
                        </a>
						 <a href="/començemlanostrabasededades" class="product-link">
                          <i class="bi bi-upload"></i>
                          <div>
                            <span>Importar CSV clients</span>
                            <small>Per amagatzemar la informacio correcta</small>
                          </div>
                        </a>
                        <a href="/admin/productos" class="product-link">
                          <i class="bi bi-box-seam"></i>
                          <div>
                            <span>Productes</span>
                            <small>Imatges i caracteristiques</small>
                          </div>
                        </a>
                        <a href="/admin/empleats" class="product-link">
                          <i class="bi bi bi-person"></i>
                          <div>
                            <span>Empleats</span>
                            <small>Gestionar dades empleats</small>
                          </div>
                        </a>
						<a href="/admin/proveidors" class="product-link">
                          <i class="bi bi-truck"></i>
                          <div>
                            <span>Proveidors</span>
                            <small>Gestionar dades proveidors</small>
                          </div>
                        </a>
                      </div>
                    </div>

                    <div class="product-section">
                      <h4>Relacionada</h4>
                      <div class="product-list">
                        <a href="/admin/categoria-clientes" class="product-link">
                          <i class="bi bi bi-grid"></i>
                          <div>
                            <span>Categoria ´clients</span>
                            <small>Aixi podrem organitzarlos per categories</small>
                          </div>
                        </a>
						<a href="#" class="product-link">
                          <i class="-"></i>
                          <div>
                            <span>-</span>
                            <small>-</small>
                          </div>
                        </a>
                        <a href="/admin/categoria-productos" class="product-link">
                          <i class="bi bi bi-grid"></i>
                          <div>
                            <span>Categoria Productes</span>
                            <small>categoritzar els producte otorga molta informacio</small>
                          </div>
                        </a>
                        <a href="/productes" class="product-link">
                          <i class="bi bi-images"></i>
                          <div>
                            <span>Galeria de Productes</span>
                            <small>Per veure produictes x categories</small>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>

                  <div class="featured-banner">
                    <div class="banner-content">
                      <img src="{{ asset('assets/img/github.webp') }}" alt="Enterprise Solutions" class="banner-image">
                      <div class="banner-info">
                        <h5>Descarregat el projecte laravel 12 desde github</h5>
                        <p>He creat un repositori public</p>
                        <a href="#" class="cta-btn">Get Started <i class="bi bi-arrow-right"></i></a>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Development Tools Tab -->
                <div class="tab-pane fade" id="7525-tab-2" role="tabpanel" aria-labelledby="7525-tab-2-tab">
                  <div class="content-grid">
                    <div class="product-section">
                      <h4>Vendes</h4>
                      <div class="product-list">
                        <a href="/comptabilitat/vendes/diari_vendes" class="product-link">
                          <i class="bi bi-cart"></i>
                          <div>
                            <span>Diari de Vendes</span>
                            <small>Gestió de vendes amb formularis</small>
                          </div>
                        </a>
                        <a href="/admin/ventas" class="product-link">
                          <i class="bi bi-cart-check"></i>
                          <div>
                            <span>Admin Vendes (Filament)</span>
                            <small>Gestió avançada amb Filament</small>
                          </div>
                        </a>
                        <a href="/informes" class="product-link">
                          <i class="bi bi-file-earmark-bar-graph"></i>
                          <div>
                            <span>Informes de Vendes</span>
                            <small>Estadístiques i gràfics de vendes</small>
                          </div>
                        </a>
                      </div>
                    </div>

                    <div class="product-section">
                      <h4>Compres</h4>
                      <div class="product-list">
                        <a href="/comptabilitat/compres/diari_compres" class="product-link">
                          <i class="bi bi-truck"></i>
                          <div>
                            <span>Diari de Compres</span>
                            <small>Gestió de compres amb formularis</small>
                          </div>
                        </a>
                        <a href="/admin/compras" class="product-link">
                          <i class="bi bi-truck-front"></i>
                          <div>
                            <span>Admin Compres (Filament)</span>
                            <small>Gestió avançada amb Filament</small>
                          </div>
                        </a>
                        <a href="/informes/compras" class="product-link">
                          <i class="bi bi-file-earmark-bar-graph-fill"></i>
                          <div>
                            <span>Informes de Compres</span>
                            <small>Estadístiques i gràfics de compres</small>
                          </div>
                        </a>
                      </div>
                    </div>

                    <div class="product-section">
                      <h4>Anàlisi Global</h4>
                      <div class="product-list">
                        <a href="/informes/resultats" class="product-link">
                          <i class="bi bi-bar-chart-line"></i>
                          <div>
                            <span>Informe de Resultats</span>
                            <small>Comparativa vendes vs compres i beneficis</small>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>

                  <div class="featured-banner">
                    <div class="banner-content">
                      <img src="assets/img/misc/misc-12.webp" alt="Comptabilitat" class="banner-image">
                      <div class="banner-info">
                        <h5>Sistema Complet de Comptabilitat</h5>
                        <p>Gestiona vendes i compres amb informes detallats i administració professional.</p>
                        <a href="/admin" class="cta-btn">Accedir al Panel Admin <i class="bi bi-arrow-right"></i></a>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Creative Suite Tab -->
                <div class="tab-pane fade" id="7525-tab-3" role="tabpanel" aria-labelledby="7525-tab-3-tab">
                  <div class="content-grid">
                    <div class="product-section">
                      <h4>Design &amp; Visual</h4>
                      <div class="product-list">
                        <a href="#" class="product-link">
                          <i class="bi bi-brush"></i>
                          <div>
                            <span>Design Software</span>
                            <small>Professional graphic design tools</small>
                          </div>
                        </a>
                        <a href="#" class="product-link">
                          <i class="bi bi-camera-video"></i>
                          <div>
                            <span>Video Editing</span>
                            <small>Professional video production</small>
                          </div>
                        </a>
                        <a href="#" class="product-link">
                          <i class="bi bi-image"></i>
                          <div>
                            <span>Photo Editing</span>
                            <small>Advanced image manipulation</small>
                          </div>
                        </a>
                      </div>
                    </div>

                    <div class="product-section">
                      <h4>Media Production</h4>
                      <div class="product-list">
                        <a href="#" class="product-link">
                          <i class="bi bi-music-note"></i>
                          <div>
                            <span>Audio Production</span>
                            <small>Professional audio editing</small>
                          </div>
                        </a>
                        <a href="#" class="product-link">
                          <i class="bi bi-play-circle"></i>
                          <div>
                            <span>Animation Tools</span>
                            <small>Create stunning animations</small>
                          </div>
                        </a>
                        <a href="#" class="product-link">
                          <i class="bi bi-box"></i>
                          <div>
                            <span>3D Modeling</span>
                            <small>Advanced 3D design software</small>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>

                  <div class="featured-banner">
                    <div class="banner-content">
                      <img src="assets/img/misc/misc-5.webp" alt="Creative Suite" class="banner-image">
                      <div class="banner-info">
                        <h5>Creative Pro</h5>
                        <p>Everything you need for creative projects, from concept to final production.</p>
                        <a href="#" class="cta-btn">Start Creating <i class="bi bi-arrow-right"></i></a>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Resources Tab -->
                <div class="tab-pane fade" id="7525-tab-4" role="tabpanel" aria-labelledby="7525-tab-4-tab">
                  <div class="resources-layout">
                    <div class="resource-categories">
                      <div class="resource-category">
                        <i class="bi bi-book"></i>
                        <h5>Documentation</h5>
                        <p>Comprehensive guides and API references for all our products and services.</p>
                        <a href="#" class="resource-link">Browse Docs <i class="bi bi-arrow-right"></i></a>
                      </div>
                      <div class="resource-category">
                        <i class="bi bi-play-circle"></i>
                        <h5>Video Tutorials</h5>
                        <p>Step-by-step video guides to help you get the most out of our solutions.</p>
                        <a href="#" class="resource-link">Watch Tutorials <i class="bi bi-arrow-right"></i></a>
                      </div>
                      <div class="resource-category">
                        <i class="bi bi-chat-square-dots"></i>
                        <h5>Community Forum</h5>
                        <p>Connect with other users, share tips, and get answers to your questions.</p>
                        <a href="#" class="resource-link">Join Community <i class="bi bi-arrow-right"></i></a>
                      </div>
                      <div class="resource-category">
                        <i class="bi bi-newspaper"></i>
                        <h5>Blog &amp; Articles</h5>
                        <p>Latest insights, best practices, and industry trends from our experts.</p>
                        <a href="#" class="resource-link">Read Blog <i class="bi bi-arrow-right"></i></a>
                      </div>
                    </div>
                  </div>
                </div>

              </div>

            </div><!-- End Desktop Megamenu -->

          </li><!-- End Mega Menu 2 -->

          <li><a href="/admin">Admin</a></li>

        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

    </div>
  </header>

  <main class="main">
  
 

   @yield('content')

  </main>

  <footer id="footer" class="footer position-relative light-background">

    <div class="container">
      <div class="row gy-5">

        <div class="col-lg-4">
          <div class="footer-content">
            <a href="index.html" class="logo d-flex align-items-center mb-4">
              <span class="sitename">{{ config('app.name') }}</span>
            </a>
            <p class="mb-4">A traves de estudijoanpuig.com vaig projectan el meu creixement en el camp del Disseny Web. Ara ultimament amb grans progressos a traves de la utilitzacio de la Inte.ligencia Artificial.</p>

            <div class="newsletter-form">
              <h5>Stay Updated</h5>
              <form action="forms/newsletter.php" method="post" class="php-email-form">
                <div class="input-group">
                  <input type="email" name="email" class="form-control" placeholder="Enter your email" required="">
                  <button type="submit" class="btn-subscribe">
                    <i class="bi bi-send"></i>
                  </button>
                </div>
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Thank you for subscribing!</div>
              </form>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-6">
          <div class="footer-links">
            <h4>Comptabilitat</h4>
            <ul>
              <li><a href="/comptabilitat/vendes/diari_vendes"><i class="bi bi-chevron-right"></i> Diari de Vendes</a></li>
              <li><a href="/comptabilitat/compres/diari_compres"><i class="bi bi-chevron-right"></i> Diari de Compres</a></li>
              <li><a href="/comptabilitat/bbdd"><i class="bi bi-chevron-right"></i> Base de Dades</a></li>
              <li><a href="/productes"><i class="bi bi-chevron-right"></i> Productes</a></li>
              <li><a href="/admin"><i class="bi bi-chevron-right"></i> Panel Admin</a></li>
            </ul>
          </div>
        </div>

        <div class="col-lg-2 col-6">
          <div class="footer-links">
            <h4>Informes</h4>
            <ul>
              <li><a href="/informes"><i class="bi bi-chevron-right"></i> Informe de Vendes</a></li>
              <li><a href="/informes/compras"><i class="bi bi-chevron-right"></i> Informe de Compres</a></li>
              <li><a href="/informes/resultats"><i class="bi bi-chevron-right"></i> Informe de Resultats</a></li>
              <li><a href="/documentacio"><i class="bi bi-chevron-right"></i> Documentació</a></li>
              <li><a href="/guies/comparativa"><i class="bi bi-chevron-right"></i> Comparativa IA</a></li>
            </ul>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="footer-contact">
            <h4>Contacta'ns</h4>
            <div class="contact-item">
              <div class="contact-icon">
                <i class="bi bi-geo-alt"></i>
              </div>
              <div class="contact-info">
                <p>Passeig Ramon Vall, 20-1-2<br>08670-Navas<br>Barcelona</p>
              </div>
            </div>

            <div class="contact-item">
              <div class="contact-icon">
                <i class="bi bi-telephone"></i>
              </div>
              <div class="contact-info">
                <p>613 017 976</p>
              </div>
            </div>

            <div class="contact-item">
              <div class="contact-icon">
                <i class="bi bi-envelope"></i>
              </div>
              <div class="contact-info">
                <p>joanpuigbertran@gmail.com</p>
              </div>
            </div>

            <div class="social-links">
              <a href="https://www.facebook.com/joanpuigbertran"><i class="bi bi-facebook"></i></a>
              <a href="https://x.com/estudijoanpuig"><i class="bi bi-twitter-x"></i></a>
              <a href="https://www.linkedin.com/in/joan-puig-bertran-4a9aba208/"><i class="bi bi-linkedin"></i></a>
              <a href="https://www.youtube.com/channel/UCi0uClHaCum_TZ2deEN7U3w"><i class="bi bi-youtube"></i></a>
              <a href="https://github.com/estudijoanpuig"><i class="bi bi-github"></i></a>
            </div>
          </div>
        </div>

      </div>
    </div>

    <div class="footer-bottom">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="copyright">
              <p>© <span>Copyright</span> <strong class="px-1 sitename">ESTUDIJOANPUIG</strong> <span>All Rights Reserved</span></p>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="footer-bottom-links">
              <p>Laravel v{{ Illuminate\Foundation\Application::VERSION }} (PHP v{{ PHP_VERSION }})</p>
              
              @if(isset($realViewName))
              <p class="text-muted small mb-0">
                <i class="bi bi-code-square me-1"></i>
                <strong>Controlador:</strong> 
                @php
                    $controller = Route::current()->getController();
                    $controllerName = $controller ? class_basename($controller) : 'Closure';
                @endphp
                {{ $controllerName }} | 
                <strong>Funció:</strong> {{ Route::current()->getActionMethod() }}
              </p>
              <p class="text-muted small">
                <i class="bi bi-file-earmark-code me-1"></i>
                <strong>Vista:</strong> 
                <span class="badge bg-primary">{{ $realViewFile }}</span>
                <span class="text-secondary">en</span>
                <code class="text-info">{{ $realViewPath }}</code>
                <span class="text-secondary ms-2">({{ $realViewName }})</span>
              </p>
              @else
              <p class="text-muted small">
                <i class="bi bi-layout-text-window me-1"></i>
                Layout directe (sense vista)
              </p>
              @endif
            </div>
            <div class="credits">
              
              Designed by <a href="https://estudijoanpuig.com/">ESTUDIJOANPUIG
          </div>
        </div>
      </div>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

 <!-- Vendor JS Files -->
  <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/php-email-form/validate.js') }}"></script>
  <script src="{{ asset('assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/purecounter/purecounter_vanilla.js') }}"></script>
  <script src="{{ asset('assets/vendor/imagesloaded/imagesloaded.pkgd.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>

  

  <!-- Main JS File -->
  <script src="{{ asset('assets/js/main.js') }}"></script>
  
  
  
  
  
  <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function () {
        // Inicialitzar Isotope
        const iso = new Isotope('.isotope-container', {
            itemSelector: '.isotope-item',
            layoutMode: 'fitRows'
        });

        // Filtres
        document.querySelectorAll('.portfolio-filters li').forEach(function (filter) {
            filter.addEventListener('click', function () {
                document.querySelector('.portfolio-filters .filter-active').classList.remove('filter-active');
                this.classList.add('filter-active');
                iso.arrange({ filter: this.getAttribute('data-filter') });
            });
        });

        // Inicialitzar GLightbox
        const lightbox = GLightbox({
            selector: '.glightbox'
        });
    });
  </script>
</body>

</html>