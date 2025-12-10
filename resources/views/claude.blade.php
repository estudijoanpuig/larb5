@extends('layouts.app')

@section('title', 'Guia de Claude Sonnet AI')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">Claude Sonnet - L'IA d'Anthropic</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li class="current">Claude Sonnet</li>
                    </ol>
                </nav>
            </div>
            <div class="col-12 col-md-6 text-center">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/dwrIWWv8DgI" 
                            title="Claude AI Tutorial" 
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
                        <i class="bi bi-chat-square-text" style="font-size: 4rem; color: #D97757;"></i>
                        <h2 class="mt-3">Què és Claude Sonnet?</h2>
                    </div>
                    <p class="lead text-center">
                        Claude és una família d'IAs desenvolupades per Anthropic (fundada per ex-membres d'OpenAI) 
                        amb focus en **seguretat, precisió i conversacions llargues**. Claude 3.5 Sonnet és 
                        el model més popular pel seu equilibri perfecte entre intel·ligència, velocitat i cost.
                    </p>
                    <div class="alert alert-warning mt-3 mb-0">
                        <strong>🎯 Especialitat:</strong> Claude destaca en raonament complex, anàlisi de codi, 
                        escritura creativa i tasques que requereixen context llarg (200K tokens).
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Característiques principals -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4 text-center">✨ Per Què Claude És Especial</h3>
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-shield-check" style="font-size: 2.5rem; color: #D97757;"></i>
                            <h6 class="mt-3">Segur i Honest</h6>
                            <p class="small text-muted">Menys biaixos, més precís</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-code-slash" style="font-size: 2.5rem; color: #5436DA;"></i>
                            <h6 class="mt-3">Excel·lent en Codi</h6>
                            <p class="small text-muted">Supera GPT-4 en programació</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-file-earmark-text" style="font-size: 2.5rem; color: #AB68FF;"></i>
                            <h6 class="mt-3">Context Llarg</h6>
                            <p class="small text-muted">200K tokens (~150K paraules)</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-pencil-square" style="font-size: 2.5rem; color: #191919;"></i>
                            <h6 class="mt-3">Escritura</h6>
                            <p class="small text-muted">Creativitat i estil natural</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Models de Claude -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🤖 Models de la Família Claude 3</h3>
            
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card h-100 border-warning">
                        <div class="card-header bg-warning text-dark">
                            <h5 class="mb-0">Claude 3.5 Sonnet</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-success">Recomanat - Des Oct 2024</span></p>
                            <p class="small text-muted">El millor equilibri entre intel·ligència, velocitat i preu. 
                            Supera GPT-4o en molts benchmarks.</p>
                            <ul class="small">
                                <li><strong>Millor en codi</strong> que GPT-4 i Claude Opus</li>
                                <li>Context de 200K tokens</li>
                                <li>2x més ràpid que Opus</li>
                                <li>Raonament graduat superior</li>
                                <li>Excel·lent visió (imatges)</li>
                                <li>Artifacts (genera apps interactives)</li>
                            </ul>
                            <div class="alert alert-success small mb-0">
                                <strong>Benchmark HumanEval (codi):</strong> 92% vs 90.2% GPT-4o
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Claude 3 Opus</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-info text-dark">Màxima Intel·ligència</span></p>
                            <p class="small text-muted">El model més potent de Claude, comparable a GPT-4 Turbo 
                            en capacitats però més car.</p>
                            <ul class="small">
                                <li>Màxima precisió i raonament</li>
                                <li>Context de 200K tokens</li>
                                <li>Excel·lent en tasques complexes</li>
                                <li>Matemàtiques i lògica avançada</li>
                                <li>Més lent i car que Sonnet</li>
                            </ul>
                            <div class="alert alert-info small mb-0">
                                <strong>Ús recomanat:</strong> Tasques críticament importants que 
                                necessiten màxima qualitat
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-success">
                        <div class="card-header bg-success text-white">
                            <h5 class="mb-0">Claude 3 Haiku</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-secondary">Ràpid i Econòmic</span></p>
                            <p class="small text-muted">Model lleuger per tasques simples.</p>
                            <ul class="small">
                                <li>Ultra ràpid</li>
                                <li>Molt econòmic</li>
                                <li>Context 200K</li>
                                <li>Bo per xat simple</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-danger">
                        <div class="card-header bg-danger text-white">
                            <h5 class="mb-0">Claude 2.1</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-dark">Legacy</span></p>
                            <p class="small text-muted">Versió anterior (deprecated).</p>
                            <ul class="small">
                                <li>200K context</li>
                                <li>Menys potent que v3</li>
                                <li>No recomanat</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-secondary">
                        <div class="card-header bg-secondary text-white">
                            <h5 class="mb-0">Claude Instant</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-dark">Deprecated</span></p>
                            <p class="small text-muted">Model antic ràpid.</p>
                            <ul class="small">
                                <li>Substituït per Haiku</li>
                                <li>Usa Haiku en el seu lloc</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Com utilitzar Claude -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">💻 Com Utilitzar Claude</h3>
            
            <div class="accordion" id="usageAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#usage1">
                            1. Claude Web (Recomanat per començar)
                        </button>
                    </h2>
                    <div id="usage1" class="accordion-collapse collapse show" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Accés:</strong> <a href="https://claude.ai" target="_blank">claude.ai</a></p>
                            
                            <p class="mb-2"><strong>Plans disponibles:</strong></p>
                            <ul>
                                <li><strong>Gratuït</strong> - Accés limitat a Claude 3.5 Sonnet</li>
                                <li><strong>Claude Pro</strong> - $20/mes (€20/mes) - Ús prioritari, 5x més missatges</li>
                            </ul>

                            <p class="mb-2"><strong>Característiques úniques:</strong></p>
                            <ul>
                                <li><strong>Projects</strong> - Carpetes amb context persistent (documents, codi)</li>
                                <li><strong>Artifacts</strong> - Genera apps React, HTML, SVG interactives</li>
                                <li><strong>Visió</strong> - Carrega imatges, PDFs, diagrames</li>
                                <li><strong>200K context</strong> - Penja codebases senceres</li>
                                <li><strong>Estil de conversa</strong> - Més natural i menys "robot"</li>
                            </ul>

                            <div class="alert alert-info mt-2 mb-0">
                                <strong>💡 Artifacts:</strong> Claude pot generar codi que s'executa en temps real 
                                al navegador (React components, HTML, gràfics SVG, diagrames Mermaid...)
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage2">
                            2. API de Claude (Anthropic)
                        </button>
                    </h2>
                    <div id="usage2" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Plataforma:</strong> <a href="https://console.anthropic.com" target="_blank">console.anthropic.com</a></p>
                            
                            <p class="mb-2"><strong>Preus (per 1M tokens):</strong></p>
                            <table class="table table-sm">
                                <thead>
                                    <tr>
                                        <th>Model</th>
                                        <th>Input</th>
                                        <th>Output</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="table-success">
                                        <td>Claude 3.5 Sonnet</td>
                                        <td>$3</td>
                                        <td>$15</td>
                                    </tr>
                                    <tr>
                                        <td>Claude 3 Opus</td>
                                        <td>$15</td>
                                        <td>$75</td>
                                    </tr>
                                    <tr>
                                        <td>Claude 3 Haiku</td>
                                        <td>$0.25</td>
                                        <td>$1.25</td>
                                    </tr>
                                </tbody>
                            </table>

                            <p class="mb-2"><strong>Exemple amb Python (SDK oficial):</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>import anthropic

client = anthropic.Anthropic(
    api_key="LA_TEVA_API_KEY"
)

message = client.messages.create(
    model="claude-3-5-sonnet-20241022",
    max_tokens=1024,
    messages=[
        {"role": "user", "content": "Crea una API REST en Laravel"}
    ]
)

print(message.content[0].text)</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Amb visió (imatges):</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>import base64

with open("screenshot.jpg", "rb") as f:
    image_data = base64.b64encode(f.read()).decode("utf-8")

message = client.messages.create(
    model="claude-3-5-sonnet-20241022",
    max_tokens=1024,
    messages=[{
        "role": "user",
        "content": [
            {
                "type": "image",
                "source": {
                    "type": "base64",
                    "media_type": "image/jpeg",
                    "data": image_data
                }
            },
            {
                "type": "text",
                "text": "Descriu aquesta imatge"
            }
        ]
    }]
)</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Amb cURL:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>curl https://api.anthropic.com/v1/messages \
  -H "x-api-key: $ANTHROPIC_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -H "content-type: application/json" \
  -d '{
    "model": "claude-3-5-sonnet-20241022",
    "max_tokens": 1024,
    "messages": [{
      "role": "user",
      "content": "Hola Claude!"
    }]
  }'</code></pre>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage3">
                            3. Claude via AWS Bedrock / Google Vertex AI
                        </button>
                    </h2>
                    <div id="usage3" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Per empreses amb infraestructura cloud</strong></p>
                            
                            <p class="mb-2"><strong>AWS Bedrock:</strong></p>
                            <ul class="small">
                                <li>Integració nativa amb AWS</li>
                                <li>Preus similars a l'API directa</li>
                                <li>Compleix normatives empresarials</li>
                                <li>Suport per Claude 3.5 Sonnet, Opus, Haiku</li>
                            </ul>

                            <div class="bg-dark text-light p-3 rounded mt-2">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>import boto3

bedrock = boto3.client('bedrock-runtime')

response = bedrock.invoke_model(
    modelId='anthropic.claude-3-5-sonnet-20241022-v2:0',
    body=json.dumps({
        "anthropic_version": "bedrock-2023-05-31",
        "max_tokens": 1024,
        "messages": [{
            "role": "user",
            "content": "Hola Claude!"
        }]
    })
)</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Google Vertex AI:</strong></p>
                            <ul class="small mb-0">
                                <li>Disponible a regions d'Europa</li>
                                <li>Integració amb GCP</li>
                                <li>GDPR compliant</li>
                            </ul>
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
            
            <!-- Extension 1: Cline (abans Claude Dev) -->
            <div class="card mb-3 shadow-sm border-warning">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-terminal-fill" style="font-size: 3rem; color: #D97757;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Cline (Claude Dev) ⭐</h5>
                            <p class="mb-2"><span class="badge bg-warning text-dark">Més Popular</span> <span class="badge bg-success">Agent Autònom</span></p>
                            <p class="card-text text-muted mb-2">
                                Agent de codificació autònom dissenyat específicament per Claude. Pot executar 
                                comandes, editar fitxers, navegar pel web i completar tasques complexes sol.
                            </p>
                            
                            <p class="mb-2"><strong>Funcions destacades:</strong></p>
                            <ul class="small">
                                <li><strong>Agent autònom</strong> - Completa tasques de programació sense supervisió constant</li>
                                <li><strong>Executa comandes</strong> - Terminal integrat, npm install, git, etc.</li>
                                <li><strong>Edició multi-fitxer</strong> - Modifica diversos fitxers simultàniament</li>
                                <li><strong>Navegació web</strong> - Busca documentació en temps real</li>
                                <li><strong>Mode diff visual</strong> - Revisa canvis abans d'aplicar-los</li>
                                <li><strong>Claude 3.5 Sonnet</strong> - Optimitzat per aquest model</li>
                            </ul>

                            <p class="mb-2"><strong>Configuració:</strong></p>
                            <ol class="small">
                                <li>Instal·la: <code>saoudrizwan.claude-dev</code></li>
                                <li>Obté API key de <a href="https://console.anthropic.com" target="_blank">console.anthropic.com</a></li>
                                <li>Obre Cline (icona a la sidebar)</li>
                                <li>Introdueix la teva API key</li>
                                <li>Selecciona model: <code>claude-3-5-sonnet-20241022</code></li>
                            </ol>

                            <div class="alert alert-warning small mb-0">
                                <strong>🚀 Cas d'ús:</strong> "Crea una aplicació Laravel amb autenticació, 
                                CRUD de posts i tests" - Cline ho farà tot automàticament!
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 2: Continue -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-lightning-charge" style="font-size: 3rem; color: #5436DA;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Continue + Claude</h5>
                            <p class="mb-2"><span class="badge bg-primary">Multi-Model</span></p>
                            <p class="card-text text-muted mb-2">
                                Assistant AI versàtil amb suport per Claude, GPT, Gemini i altres.
                            </p>
                            
                            <p class="mb-2"><strong>Configuració per Claude:</strong></p>
                            <div class="bg-dark text-light p-3 rounded mt-2">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>{
  "models": [
    {
      "title": "Claude 3.5 Sonnet",
      "provider": "anthropic",
      "model": "claude-3-5-sonnet-20241022",
      "apiKey": "LA_TEVA_API_KEY"
    }
  ]
}</code></pre>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 3: Amazon Q -->
            <div class="card shadow-sm border-info">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-cloud" style="font-size: 3rem; color: #FF9900;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Amazon Q Developer (usa Claude)</h5>
                            <p class="mb-2"><span class="badge bg-info text-dark">AWS</span> <span class="badge bg-secondary">Gratuït</span></p>
                            <p class="card-text text-muted mb-2">
                                Assistant d'AWS que utilitza Claude per sota. Gratuït per particulars.
                            </p>
                            
                            <p class="mb-2"><strong>Característiques:</strong></p>
                            <ul class="small">
                                <li>Autocompletat inline tipus Copilot</li>
                                <li>Xat amb Claude integrat</li>
                                <li>Gratuït per ús individual</li>
                                <li>Optimitzat per AWS</li>
                            </ul>

                            <p class="mb-0"><strong>ID:</strong> <code>AmazonWebServices.amazon-q-vscode</code></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Casos d'ús -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">👨‍💻 Casos d'Ús Ideals per Claude</h3>
            
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card h-100 border-warning">
                        <div class="card-header bg-warning text-dark">
                            <h6 class="mb-0"><i class="bi bi-code-slash"></i> Programació Avançada</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Claude 3.5 Sonnet supera GPT-4 en codi:</p>
                            <ul class="small mb-0">
                                <li>Refactoritzar codebases grans (200K context)</li>
                                <li>Debugging de problemes complexos</li>
                                <li>Arquitectura de sistemes</li>
                                <li>Code reviews detallats</li>
                                <li>Conversió entre llenguatges</li>
                                <li>Optimització de rendiment</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h6 class="mb-0"><i class="bi bi-pencil"></i> Escriptura i Contingut</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Millor estil natural que altres IAs:</p>
                            <ul class="small mb-0">
                                <li>Articles i blog posts</li>
                                <li>Documentació tècnica</li>
                                <li>Emails professionals</li>
                                <li>Contingut creatiu (històries, guions)</li>
                                <li>Traduccions amb context</li>
                                <li>Resums de documents llargs</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-success">
                        <div class="card-header bg-success text-white">
                            <h6 class="mb-0"><i class="bi bi-file-earmark-pdf"></i> Anàlisi de Documents</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Context de 200K tokens (~500 pàgines):</p>
                            <ul class="small mb-0">
                                <li>Analitza PDFs complets</li>
                                <li>Revisa contractes legals</li>
                                <li>Resume papers científics</li>
                                <li>Compara múltiples documents</li>
                                <li>Extreu informació específica</li>
                                <li>Q&A sobre documentació</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-info">
                        <div class="card-header bg-info text-white">
                            <h6 class="mb-0"><i class="bi bi-lightning-charge"></i> Artifacts Interactius</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Característica única de Claude:</p>
                            <ul class="small mb-0">
                                <li>Apps React en temps real</li>
                                <li>Pàgines HTML/CSS completes</li>
                                <li>Gràfics SVG personalitzats</li>
                                <li>Diagrames Mermaid</li>
                                <li>Calculadores interactives</li>
                                <li>Mini-games i visualitzacions</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Comparativa -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">⚖️ Claude vs Altres Assistents IA</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>Característica</th>
                            <th>Claude 3.5 Sonnet</th>
                            <th>GPT-4o</th>
                            <th>Gemini 1.5 Pro</th>
                            <th>DeepSeek</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Qualitat codi</strong></td>
                            <td><span class="badge bg-success">92% HumanEval</span></td>
                            <td>90.2%</td>
                            <td>84%</td>
                            <td>89%</td>
                        </tr>
                        <tr>
                            <td><strong>Context</strong></td>
                            <td>200K tokens</td>
                            <td>128K tokens</td>
                            <td><span class="badge bg-success">2M tokens</span></td>
                            <td>128K tokens</td>
                        </tr>
                        <tr>
                            <td><strong>Cost API</strong></td>
                            <td>$3 / $15 per 1M</td>
                            <td>$2.50 / $10 per 1M</td>
                            <td>$1.25 / $5 per 1M</td>
                            <td>$0.14 / $0.28 per 1M</td>
                        </tr>
                        <tr>
                            <td><strong>Artifacts</strong></td>
                            <td><span class="badge bg-success">Sí</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Estil conversa</strong></td>
                            <td><span class="badge bg-success">Molt natural</span></td>
                            <td>Bo</td>
                            <td>Tècnic</td>
                            <td>Directe</td>
                        </tr>
                        <tr>
                            <td><strong>Visió</strong></td>
                            <td><span class="badge bg-success">Excel·lent</span></td>
                            <td>Molt bo</td>
                            <td>Natiu</td>
                            <td><span class="badge bg-danger">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Seguretat</strong></td>
                            <td><span class="badge bg-success">Focus Anthropic</span></td>
                            <td>Bo</td>
                            <td>Bo</td>
                            <td>Estàndard</td>
                        </tr>
                        <tr>
                            <td><strong>Velocitat</strong></td>
                            <td>Ràpid</td>
                            <td>Molt ràpid</td>
                            <td>Ràpid</td>
                            <td>Molt ràpid</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="alert alert-warning mt-3">
                <i class="bi bi-star-fill"></i> <strong>Veredicte:</strong> 
                Claude 3.5 Sonnet és el millor per programació complexa, escriptura natural i tasques 
                que requereixen precisió. Més car que DeepSeek/Gemini però supera GPT-4 en codi.
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
                                <li><strong>Millor en codi</strong> - Supera GPT-4 en HumanEval</li>
                                <li><strong>Estil natural</strong> - Menys "robòtic" que altres</li>
                                <li><strong>Context 200K</strong> - Analitza codebases grans</li>
                                <li><strong>Artifacts</strong> - Apps interactives en temps real</li>
                                <li><strong>Seguretat</strong> - Focus en Constitutional AI</li>
                                <li><strong>Precisió</strong> - Menys al·lucinacions que GPT-4</li>
                                <li><strong>Projects</strong> - Context persistent per projecte</li>
                                <li><strong>Visió excel·lent</strong> - Anàlisi d'imatges superior</li>
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
                                <li><strong>Més car</strong> - $3-15/1M vs $0.14 DeepSeek</li>
                                <li><strong>Sense web search</strong> - No accés a internet en temps real</li>
                                <li><strong>Límits gratuïts</strong> - Pocs missatges al pla free</li>
                                <li><strong>Context menor</strong> - 200K vs 2M de Gemini</li>
                                <li><strong>Comunitat</strong> - Més petita que OpenAI</li>
                                <li><strong>Integracions</strong> - Menys que ChatGPT</li>
                                <li><strong>Disponibilitat</strong> - Alguns països restringits</li>
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
                                    <a href="https://claude.ai" target="_blank" class="text-decoration-none">
                                        Claude Web (Xat)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://console.anthropic.com" target="_blank" class="text-decoration-none">
                                        Anthropic Console (API)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://www.anthropic.com" target="_blank" class="text-decoration-none">
                                        Anthropic - Web Oficial
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://www.anthropic.com/news" target="_blank" class="text-decoration-none">
                                        Blog i Novetats
                                    </a>
                                </li>
                            </ul>

                            <h6>Documentació:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-warning"></i>
                                    <a href="https://docs.anthropic.com" target="_blank" class="text-decoration-none">
                                        API Documentation
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-warning"></i>
                                    <a href="https://docs.anthropic.com/claude/docs/intro-to-claude" target="_blank" class="text-decoration-none">
                                        Intro to Claude
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-github text-dark"></i>
                                    <a href="https://github.com/anthropics" target="_blank" class="text-decoration-none">
                                        GitHub Anthropic
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h6>Extensions VS Code:</h6>
                            <ul class="list-unstyled mb-4">
                                <li class="mb-2">
                                    <i class="bi bi-box text-info"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev" target="_blank" class="text-decoration-none">
                                        Cline (Claude Dev) ⭐
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-box text-info"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=Continue.continue" target="_blank" class="text-decoration-none">
                                        Continue - AI Assistant
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-box text-info"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.amazon-q-vscode" target="_blank" class="text-decoration-none">
                                        Amazon Q Developer
                                    </a>
                                </li>
                            </ul>

                            <h6>Aprendre més:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-book text-success"></i>
                                    <a href="https://docs.anthropic.com/claude/docs/guide-to-anthropics-prompt-engineering-resources" target="_blank" class="text-decoration-none">
                                        Prompt Engineering Guide
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-youtube text-danger"></i>
                                    <a href="https://www.youtube.com/@AnthropicAI" target="_blank" class="text-decoration-none">
                                        YouTube Anthropic
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-discord text-primary"></i>
                                    Comunitat a Discord i Reddit
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="alert alert-warning mt-4 mb-0">
                        <strong>🚀 Comença ara:</strong> 
                        Prova Claude gratuït a <a href="https://claude.ai" target="_blank" class="alert-link">claude.ai</a> 
                        o obté una API key a <a href="https://console.anthropic.com" target="_blank" class="alert-link">console.anthropic.com</a>. 
                        Instal·la <strong>Cline</strong> per programació autònoma!
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
