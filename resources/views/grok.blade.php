@extends('layouts.app')

@section('title', 'Guia de Grok AI')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">Grok AI de xAI - La IA d'Elon Musk</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li class="current">Grok AI</li>
                    </ol>
                </nav>
            </div>
            <div class="col-12 col-md-6 text-center">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/V2mbRZ23p7Q" 
                            title="Grok AI Introduction" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            class="rounded shadow">
                    </iframe>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title -->

<div class="container my-5">
    <!-- Introducció -->
    <div class="row mb-5">
        <div class="col-lg-8 offset-lg-2">
            <div class="card shadow-sm border-0">
                <div class="card-body p-4">
                    <div class="text-center mb-4">
                        <i class="bi bi-robot" style="font-size: 4rem; color: #1DA1F2;"></i>
                        <h2 class="mt-3">Què és Grok?</h2>
                    </div>
                    <p class="lead text-center">
                        Grok és el model d'intel·ligència artificial desenvolupat per xAI (companyia d'Elon Musk) 
                        que destaca per tenir accés a dades en temps real de 𝕏 (Twitter), personalitat única 
                        amb humor, i capacitats avançades de raonament. És la competència directa de ChatGPT i Claude.
                    </p>
                    <div class="alert alert-info mt-3 mb-0">
                        <strong>🎯 Característica única:</strong> Grok pot accedir a informació actual de 𝕏 
                        i el web, mentre que altres IAs tenen dades tallades en dates anteriors.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Característiques principals -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4 text-center">✨ Característiques Destacades de Grok</h3>
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-clock-history" style="font-size: 2.5rem; color: #1DA1F2;"></i>
                            <h6 class="mt-3">Temps Real</h6>
                            <p class="small text-muted">Accés a dades actuals de 𝕏 i el web</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-emoji-laughing" style="font-size: 2.5rem; color: #F39C12;"></i>
                            <h6 class="mt-3">Amb Humor</h6>
                            <p class="small text-muted">Respostes amb personalitat i sarcasme</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-lightning-charge" style="font-size: 2.5rem; color: #E74C3C;"></i>
                            <h6 class="mt-3">Raonament</h6>
                            <p class="small text-muted">Capacitat de pensament complex</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-image" style="font-size: 2.5rem; color: #9B59B6;"></i>
                            <h6 class="mt-3">Visió</h6>
                            <p class="small text-muted">Analitza imatges i genera gràfics</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Versions de Grok -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🚀 Versions de Grok</h3>
            
            <div class="row g-3">
                <div class="col-md-4">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Grok-1</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-success">Llançat: Nov 2023</span></p>
                            <p class="small text-muted">Primera versió pública amb 314B paràmetres. 
                            Model open-source amb bon rendiment general.</p>
                            <ul class="small">
                                <li>314 mil milions de paràmetres</li>
                                <li>Codi obert (Apache 2.0)</li>
                                <li>Basat en Transformer</li>
                                <li>Entrenat en 33B tokens</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-info">
                        <div class="card-header bg-info text-white">
                            <h5 class="mb-0">Grok-2</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-warning text-dark">Llançat: Ago 2024</span></p>
                            <p class="small text-muted">Millora significativa amb capacitats multimodals 
                            i generació d'imatges.</p>
                            <ul class="small">
                                <li>Raonament avançat</li>
                                <li>Comprensió d'imatges</li>
                                <li>Generació d'imatges via FLUX.1</li>
                                <li>Competeix amb GPT-4 i Claude</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-danger">
                        <div class="card-header bg-danger text-white">
                            <h5 class="mb-0">Grok-3</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-danger">Desenvolupament</span></p>
                            <p class="small text-muted">Versió en entrenament amb capacitats encara 
                            més avançades i millor precisió.</p>
                            <ul class="small">
                                <li>Entrenat amb Colossus (100K GPUs)</li>
                                <li>Major precisió i raonament</li>
                                <li>Multimodalitat millorada</li>
                                <li>Llançament previst: 2025</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Com utilitzar Grok -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">💻 Com Utilitzar Grok</h3>
            
            <div class="accordion" id="usageAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#usage1">
                            1. Accés a través de 𝕏 (Twitter) Premium
                        </button>
                    </h2>
                    <div id="usage1" class="accordion-collapse collapse show" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Requisit:</strong> Subscripció a 𝕏 Premium o Premium+</p>
                            <ul>
                                <li><strong>𝕏 Premium:</strong> €9.50/mes - Accés a Grok-2</li>
                                <li><strong>𝕏 Premium+:</strong> €16/mes - Accés prioritari, més ràpid</li>
                            </ul>
                            <p class="mb-2"><strong>Com accedir:</strong></p>
                            <ol>
                                <li>Entra a <a href="https://x.com" target="_blank">x.com</a></li>
                                <li>Subscriu-te a Premium o Premium+</li>
                                <li>Fes clic a la icona de Grok a la barra lateral</li>
                                <li>Comença a fer preguntes!</li>
                            </ol>
                            <div class="alert alert-info mt-2 mb-0">
                                <strong>💡 Avantatge:</strong> Pots preguntar sobre posts recents de 𝕏 
                                i obtenir context actualitzat en temps real.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage2">
                            2. API de Grok (per desenvolupadors)
                        </button>
                    </h2>
                    <div id="usage2" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Accés:</strong> Disponible a través de <a href="https://console.x.ai" target="_blank">console.x.ai</a></p>
                            
                            <p class="mb-2"><strong>Models disponibles via API:</strong></p>
                            <ul>
                                <li><code>grok-beta</code> - Versió estable actual (Grok-2)</li>
                                <li><code>grok-vision-beta</code> - Amb capacitats de visió</li>
                            </ul>

                            <p class="mb-2"><strong>Exemple d'ús amb cURL:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="color: #0f0;"><code>curl https://api.x.ai/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $XAI_API_KEY" \
  -d '{
    "messages": [
      {
        "role": "user",
        "content": "Explica què és Laravel en 3 frases"
      }
    ],
    "model": "grok-beta",
    "temperature": 0.7
  }'</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Preus (Pay-as-you-go):</strong></p>
                            <ul class="small mb-0">
                                <li>Input: ~$2 per milió de tokens</li>
                                <li>Output: ~$10 per milió de tokens</li>
                                <li>Més barat que GPT-4, similar a Claude</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage3">
                            3. Model Open Source (Grok-1)
                        </button>
                    </h2>
                    <div id="usage3" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Repositori:</strong> <a href="https://github.com/xai-org/grok-1" target="_blank">github.com/xai-org/grok-1</a></p>
                            
                            <p class="mb-2"><strong>Requisits per executar localment:</strong></p>
                            <ul>
                                <li>Mínim 8 GPUs amb 16GB VRAM cadascuna</li>
                                <li>O serveis cloud com Lambda Labs, RunPod</li>
                                <li>314GB d'espai per pesos del model</li>
                            </ul>

                            <div class="alert alert-warning">
                                <strong>⚠️ Nota:</strong> Executar Grok-1 localment requereix maquinari molt potent. 
                                Per la majoria d'usuaris, l'API o 𝕏 Premium són opcions més pràctiques.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Extensions per VS Code -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🔌 Integració amb Visual Studio Code</h3>
            
            <div class="alert alert-warning mb-4">
                <i class="bi bi-exclamation-triangle"></i> <strong>Important:</strong> 
                Actualment Grok NO té extensió oficial per VS Code, però pots integrar-lo 
                mitjançant extensions compatibles amb API personalitzades.
            </div>

            <!-- Extension 1: Continue amb Grok -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-plugin" style="font-size: 3rem; color: #1DA1F2;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Continue + Grok API</h5>
                            <p class="mb-2"><span class="badge bg-success">Recomanat</span> <span class="badge bg-primary">Via API</span></p>
                            <p class="card-text text-muted mb-2">
                                Continue és una extensió open-source que permet configurar qualsevol API compatible 
                                amb OpenAI, incloent Grok.
                            </p>
                            
                            <p class="mb-2"><strong>Com configurar Grok a Continue:</strong></p>
                            <ol class="small">
                                <li>Instal·la Continue: <code>Continue.continue</code></li>
                                <li>Obté la teva API key de <a href="https://console.x.ai" target="_blank">console.x.ai</a></li>
                                <li>Obre la configuració de Continue (<code>~/.continue/config.json</code>)</li>
                                <li>Afegeix aquesta configuració:</li>
                            </ol>

                            <div class="bg-dark text-light p-3 rounded mt-2">
<pre class="mb-0" style="color: #0f0;"><code>{
  "models": [
    {
      "title": "Grok",
      "provider": "openai",
      "model": "grok-beta",
      "apiBase": "https://api.x.ai/v1",
      "apiKey": "LA_TEVA_API_KEY_AQUI"
    }
  ]
}</code></pre>
                            </div>

                            <p class="mt-3 mb-0"><strong>Funcions disponibles:</strong></p>
                            <ul class="small mb-0">
                                <li>Xat en context amb el teu codi</li>
                                <li>Edició de codi en temps real</li>
                                <li>Accés a informació actualitzada via Grok</li>
                                <li>Autocompletat intel·ligent</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 2: Cline (abans Claude Dev) -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-terminal" style="font-size: 3rem; color: #3498DB;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Cline (Coding Agent) + Grok</h5>
                            <p class="mb-2"><span class="badge bg-info text-dark">Agent Autònom</span> <span class="badge bg-primary">Via API</span></p>
                            <p class="card-text text-muted mb-2">
                                Cline és un agent de codificació autònom que pot executar comandes, editar fitxers 
                                i navegar per la web. Compatible amb Grok via API.
                            </p>
                            
                            <p class="mb-2"><strong>Configuració:</strong></p>
                            <ol class="small">
                                <li>Instal·la: <code>saoudrizwan.claude-dev</code></li>
                                <li>A la configuració, selecciona "Custom API"</li>
                                <li>Endpoint: <code>https://api.x.ai/v1</code></li>
                                <li>Model: <code>grok-beta</code></li>
                                <li>API Key: La teva clau de console.x.ai</li>
                            </ol>

                            <p class="mb-0"><strong>ID:</strong> <code>saoudrizwan.claude-dev</code></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 3: Open Interpreter -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-code-slash" style="font-size: 3rem; color: #E74C3C;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Open Interpreter CLI + Grok</h5>
                            <p class="mb-2"><span class="badge bg-danger">Terminal</span> <span class="badge bg-dark">Línia de comandes</span></p>
                            <p class="card-text text-muted mb-2">
                                Tot i que no és una extensió de VS Code, Open Interpreter es pot utilitzar 
                                des del terminal integrat de VS Code amb Grok.
                            </p>
                            
                            <p class="mb-2"><strong>Instal·lació i ús:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="color: #0f0;"><code># Instal·lar
pip install open-interpreter

# Executar amb Grok
interpreter --api_base https://api.x.ai/v1 \
            --api_key LA_TEVA_API_KEY \
            --model grok-beta</code></pre>
                            </div>

                            <p class="mt-2 mb-0 small text-muted">
                                Permet executar codi generat per Grok directament al teu sistema.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Alternativa: REST Client -->
            <div class="card shadow-sm border-warning">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-arrow-left-right" style="font-size: 3rem; color: #F39C12;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">REST Client Extension</h5>
                            <p class="mb-2"><span class="badge bg-warning text-dark">Manual</span></p>
                            <p class="card-text text-muted mb-2">
                                Per fer proves directes amb l'API de Grok des de VS Code.
                            </p>
                            
                            <p class="mb-2"><strong>Exemple de fitxer <code>grok.http</code>:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="color: #0f0;"><code>### Consulta a Grok
POST https://api.x.ai/v1/chat/completions
Content-Type: application/json
Authorization: Bearer {{$dotenv XAI_API_KEY}}

{
  "messages": [
    {
      "role": "user",
      "content": "Com puc optimitzar aquesta query Laravel?"
    }
  ],
  "model": "grok-beta",
  "temperature": 0.7
}</code></pre>
                            </div>

                            <p class="mt-3 mb-0"><strong>ID:</strong> <code>humao.rest-client</code></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Casos d'ús per programadors -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">👨‍💻 Casos d'Ús per Programadors</h3>
            
            <ul class="nav nav-tabs" id="useCasesTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="coding-tab" data-bs-toggle="tab" data-bs-target="#coding" type="button">
                        Programació
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="debug-tab" data-bs-toggle="tab" data-bs-target="#debug" type="button">
                        Debugging
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="research-tab" data-bs-toggle="tab" data-bs-target="#research" type="button">
                        Recerca
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="trends-tab" data-bs-toggle="tab" data-bs-target="#trends" type="button">
                        Tendències
                    </button>
                </li>
            </ul>

            <div class="tab-content border border-top-0 p-4 bg-white" id="useCasesTabsContent">
                <!-- Programació -->
                <div class="tab-pane fade show active" id="coding" role="tabpanel">
                    <h5 class="mb-3">Generació i millora de codi</h5>
                    
                    <div class="card bg-light mb-3">
                        <div class="card-body">
                            <h6 class="text-primary">📝 Exemple: Crear una API REST en Laravel</h6>
                            <p class="mb-2"><strong>Prompt:</strong></p>
                            <div class="bg-white p-2 rounded border">
                                <code>"Crea un Controller API REST per a un model Product amb mètodes index, 
                                store, show, update i destroy. Inclou validació de dades i gestió d'errors. 
                                Usa Laravel 12 i retorna respostes JSON amb codis HTTP adequats."</code>
                            </div>
                        </div>
                    </div>

                    <div class="card bg-light">
                        <div class="card-body">
                            <h6 class="text-success">✅ Avantatge de Grok:</h6>
                            <p class="mb-0">Pot buscar patrons recents de Laravel a 𝕏 i documentació actualitzada 
                            per donar-te les millors pràctiques actuals.</p>
                        </div>
                    </div>
                </div>

                <!-- Debugging -->
                <div class="tab-pane fade" id="debug" role="tabpanel">
                    <h5 class="mb-3">Detecció i solució d'errors</h5>
                    
                    <div class="card bg-light mb-3">
                        <div class="card-body">
                            <h6 class="text-danger">🐛 Exemple: Error SQLSTATE</h6>
                            <p class="mb-2"><strong>Prompt:</strong></p>
                            <div class="bg-white p-2 rounded border">
                                <code>"Tinc aquest error: SQLSTATE[42S22]: Column not found: 1054 Unknown column 
                                'proveidor_id' in 'field list'. El meu codi és: [enganxa codi]. 
                                Explica'm per què passa i com solucionar-ho."</code>
                            </div>
                        </div>
                    </div>

                    <div class="card bg-light">
                        <div class="card-body">
                            <h6 class="text-info">💡 Tip:</h6>
                            <p class="mb-0">Grok pot buscar errors similars en discussions recents de 𝕏 
                            i trobar solucions que altres desenvolupadors han compartit.</p>
                        </div>
                    </div>
                </div>

                <!-- Recerca -->
                <div class="tab-pane fade" id="research" role="tabpanel">
                    <h5 class="mb-3">Investigació de tecnologies</h5>
                    
                    <p class="mb-3">Grok destaca aquí perquè pot accedir a informació actualitzada:</p>

                    <ul class="list-group mb-3">
                        <li class="list-group-item">
                            <strong>📦 Llibreries noves:</strong> "Quines són les millors llibreries Laravel 
                            per gestió de permissions llançades el 2024?"
                        </li>
                        <li class="list-group-item">
                            <strong>🔍 Comparatives:</strong> "Compara Filament vs Nova vs Backpack per admin 
                            panels Laravel amb dades actualitzades"
                        </li>
                        <li class="list-group-item">
                            <strong>⚠️ Vulnerabilitats:</strong> "Hi ha alguna vulnerabilitat recent en Laravel 11 
                            que hagi de conèixer?"
                        </li>
                        <li class="list-group-item">
                            <strong>📊 Benchmarks:</strong> "Rendiment de MySQL vs PostgreSQL per Laravel 
                            segons tests recents"
                        </li>
                    </ul>

                    <div class="alert alert-success mb-0">
                        <strong>🎯 Avantatge clau:</strong> Mentre ChatGPT té dades tallades (setembre 2023 
                        o abril 2024), Grok pot buscar informació publicada avui mateix.
                    </div>
                </div>

                <!-- Tendències -->
                <div class="tab-pane fade" id="trends" role="tabpanel">
                    <h5 class="mb-3">Seguiment de tendències tecnològiques</h5>
                    
                    <p class="mb-3">Usa Grok per estar al dia amb el món tech:</p>

                    <div class="row g-3">
                        <div class="col-md-6">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h6><i class="bi bi-graph-up text-success"></i> Frameworks populars</h6>
                                    <p class="small mb-0">"Quins frameworks PHP estan guanyant popularitat 
                                    aquest mes segons 𝕏 i GitHub?"</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h6><i class="bi bi-people text-primary"></i> Opinions d'experts</h6>
                                    <p class="small mb-0">"Què diuen desenvolupadors influents sobre 
                                    Livewire 3 a 𝕏?"</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h6><i class="bi bi-newspaper text-warning"></i> Notícies tech</h6>
                                    <p class="small mb-0">"Resum de novetats importants en el món Laravel 
                                    de la darrera setmana"</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h6><i class="bi bi-trophy text-danger"></i> Best practices</h6>
                                    <p class="small mb-0">"Quines són les millors pràctiques actuals 
                                    per seguretat en APIs Laravel?"</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Comparativa amb altres IAs -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">⚖️ Grok vs Altres Assistents IA</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>Característica</th>
                            <th>Grok</th>
                            <th>ChatGPT</th>
                            <th>GitHub Copilot</th>
                            <th>Claude</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Dades actualitzades</strong></td>
                            <td><span class="badge bg-success">Temps real (𝕏)</span></td>
                            <td><span class="badge bg-warning text-dark">Set 2023</span></td>
                            <td><span class="badge bg-secondary">Codi només</span></td>
                            <td><span class="badge bg-warning text-dark">Abr 2024</span></td>
                        </tr>
                        <tr>
                            <td><strong>Personalitat</strong></td>
                            <td>Amb humor, sarcàstic</td>
                            <td>Professional, neutral</td>
                            <td>Tècnic, directe</td>
                            <td>Amable, detallat</td>
                        </tr>
                        <tr>
                            <td><strong>Millor per</strong></td>
                            <td>Recerca actual, tendències</td>
                            <td>Ús general, educació</td>
                            <td>Escriure codi ràpid</td>
                            <td>Tasques complexes</td>
                        </tr>
                        <tr>
                            <td><strong>Integració VS Code</strong></td>
                            <td>Via API (Continue, Cline)</td>
                            <td>Extensions 3rd party</td>
                            <td>Nativa oficial</td>
                            <td>Via Continue/Cline</td>
                        </tr>
                        <tr>
                            <td><strong>Cost</strong></td>
                            <td>€9.50/mes (𝕏 Premium)</td>
                            <td>Gratuït / $20/mes</td>
                            <td>$10/mes</td>
                            <td>Gratuït / $20/mes</td>
                        </tr>
                        <tr>
                            <td><strong>API disponible</strong></td>
                            <td><span class="badge bg-success">Sí</span></td>
                            <td><span class="badge bg-success">Sí</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-success">Sí</span></td>
                        </tr>
                        <tr>
                            <td><strong>Model open-source</strong></td>
                            <td><span class="badge bg-success">Grok-1</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Visió (imatges)</strong></td>
                            <td><span class="badge bg-success">Grok-2</span></td>
                            <td><span class="badge bg-success">GPT-4V</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-success">Claude 3</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="alert alert-info mt-3">
                <i class="bi bi-lightbulb"></i> <strong>Recomanació:</strong> 
                Usa Grok quan necessitis informació actual o vulguis saber què es parla a 𝕏 sobre un tema. 
                Usa ChatGPT/Claude per tasques generals i Copilot per autocompletat mentre escrius codi.
            </div>
        </div>
    </div>

    <!-- Avantatges i limitacions -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">📊 Avantatges i Limitacions</h3>
            
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card border-success h-100">
                        <div class="card-header bg-success text-white">
                            <h5 class="mb-0"><i class="bi bi-check-circle"></i> Avantatges</h5>
                        </div>
                        <div class="card-body">
                            <ul class="mb-0">
                                <li><strong>Dades en temps real</strong> - Accés a 𝕏 i web actual</li>
                                <li><strong>Personalitat única</strong> - Respostes amb humor i caràcter</li>
                                <li><strong>Model open-source</strong> - Grok-1 disponible públicament</li>
                                <li><strong>Visió millorada</strong> - Anàlisi d'imatges amb Grok-2</li>
                                <li><strong>Competitiu en preu</strong> - Més barat que GPT-4</li>
                                <li><strong>Tendències tech</strong> - Perfecte per seguir novetats</li>
                                <li><strong>Context de 𝕏</strong> - Pot analitzar discussions i threads</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card border-danger h-100">
                        <div class="card-header bg-danger text-white">
                            <h5 class="mb-0"><i class="bi bi-x-circle"></i> Limitacions</h5>
                        </div>
                        <div class="card-body">
                            <ul class="mb-0">
                                <li><strong>Requereix subscripció</strong> - 𝕏 Premium o API de pagament</li>
                                <li><strong>Sense extensió oficial</strong> - No integració nativa VS Code</li>
                                <li><strong>Menys madur</strong> - Més nou que ChatGPT/Copilot</li>
                                <li><strong>Documentació limitada</strong> - Menys recursos d'aprenentatge</li>
                                <li><strong>Personalitat</strong> - El humor pot ser molest per alguns</li>
                                <li><strong>Comunitat petita</strong> - Menys exemples i tutorials</li>
                                <li><strong>Disponibilitat</strong> - Pot tenir límits d'ús en 𝕏 Premium</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Recursos -->
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="card bg-light border-0">
                <div class="card-body p-4">
                    <h5 class="card-title">📚 Recursos i Enllaços</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <h6>Plataformes oficials:</h6>
                            <ul class="list-unstyled mb-4">
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://x.ai" target="_blank" class="text-decoration-none">
                                        xAI - Web oficial
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://x.com" target="_blank" class="text-decoration-none">
                                        𝕏 (Twitter) - Accés a Grok
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://console.x.ai" target="_blank" class="text-decoration-none">
                                        Console API de Grok
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://github.com/xai-org/grok-1" target="_blank" class="text-decoration-none">
                                        Grok-1 Open Source (GitHub)
                                    </a>
                                </li>
                            </ul>

                            <h6>Extensions recomanades:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-box text-success"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=Continue.continue" target="_blank" class="text-decoration-none">
                                        Continue - AI Assistant
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-box text-success"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev" target="_blank" class="text-decoration-none">
                                        Cline (Claude Dev)
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-box text-success"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=humao.rest-client" target="_blank" class="text-decoration-none">
                                        REST Client
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h6>Aprendre més:</h6>
                            <ul class="list-unstyled mb-4">
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-info"></i>
                                    <a href="https://docs.x.ai/docs" target="_blank" class="text-decoration-none">
                                        Documentació API
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-info"></i>
                                    <a href="https://docs.x.ai/docs/guides" target="_blank" class="text-decoration-none">
                                        Guies d'ús
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-file-text text-info"></i>
                                    <a href="https://docs.x.ai/api" target="_blank" class="text-decoration-none">
                                        Referència API
                                    </a>
                                </li>
                            </ul>

                            <h6>Comunitat:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-discord text-primary"></i>
                                    Cerca "Grok AI" a 𝕏 per discussions
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-github text-dark"></i>
                                    <a href="https://github.com/xai-org" target="_blank" class="text-decoration-none">
                                        GitHub xAI Organization
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-reddit text-danger"></i>
                                    r/xAI a Reddit
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="alert alert-dark mt-4 mb-0">
                        <strong>🚀 Comença ara:</strong> 
                        Subscriu-te a <a href="https://x.com/i/premium_sign_up" target="_blank" class="alert-link">𝕏 Premium</a> 
                        per provar Grok o obté una <a href="https://console.x.ai" target="_blank" class="alert-link">API key</a> 
                        per integrar-lo amb VS Code.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
