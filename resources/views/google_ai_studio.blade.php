@extends('layouts.app')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <h1>Google AI Studio</h1>
        <nav class="breadcrumbs">
            <ol>
                <li><a href="/">Inici</a></li>
                <li><a href="#guies">Guies IA</a></li>
                <li class="current">Google AI Studio</li>
            </ol>
        </nav>
    </div>
</div><!-- End Page Title -->

<section id="google-ai-studio" class="google-ai-studio section">
    <div class="container">

        <!-- Hero Introduction -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <div class="card border-0 shadow-lg" style="background: linear-gradient(135deg, #4285F4 0%, #EA4335 50%, #FBBC04 100%);">
                    <div class="card-body p-5 text-white">
                        <div class="row align-items-center">
                            <div class="col-lg-8">
                                <h2 class="mb-3">🎨 Google AI Studio - Prototipa amb Gemini</h2>
                                <p class="lead mb-4">
                                    Google AI Studio és l'eina oficial de Google per experimentar amb els models Gemini. 
                                    Crea prompts, prova diferents configuracions i exporta codi per integrar la IA al teu projecte.
                                    <strong>Tot de forma gratuïta!</strong>
                                </p>
                                <div class="d-flex gap-3 flex-wrap">
                                    <a href="https://aistudio.google.com" target="_blank" class="btn btn-light btn-lg">
                                        <i class="bi bi-box-arrow-up-right me-2"></i>Accedir a AI Studio
                                    </a>
                                    <span class="badge bg-white text-primary fs-6 py-2 px-3">
                                        <i class="bi bi-check-circle me-2"></i>API Gratuïta
                                    </span>
                                </div>
                            </div>
                            <div class="col-lg-4 text-center">
                                <i class="bi bi-cpu" style="font-size: 8rem; opacity: 0.3;"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Què és Google AI Studio -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🤔 Què és Google AI Studio?</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <p class="lead mb-4">
                            Google AI Studio és una plataforma web per <strong>experimentar amb Gemini</strong> (la IA de Google) 
                            sense escriure codi. Dissenya prompts, afina models i obtén la clau API per usar-la als teus projectes.
                        </p>
                        
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-lightning-charge-fill text-warning me-3 fs-4"></i>
                                    <div>
                                        <h5>Prototipat Ràpid</h5>
                                        <p class="text-muted">Prova prompts sense codi, ajusta paràmetres i veu resultats a l'instant</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-code-slash text-primary me-3 fs-4"></i>
                                    <div>
                                        <h5>Exporta Codi</h5>
                                        <p class="text-muted">Un cop tens el prompt perfecte, exporta'l a Python, JavaScript o cURL</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-coin text-success me-3 fs-4"></i>
                                    <div>
                                        <h5>API Gratuïta</h5>
                                        <p class="text-muted">Fins a 1.500 peticions/dia gratis amb el nivell gratuït</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-image text-danger me-3 fs-4"></i>
                                    <div>
                                        <h5>Multimodal</h5>
                                        <p class="text-muted">Treballa amb text, imatges, àudio i vídeo simultàniament</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Models Disponibles -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🎯 Models Gemini Disponibles</h2>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100 border-primary">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Gemini 2.0 Flash</h4>
                        <small>Experimental</small>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <span class="badge bg-success mb-2">Més Ràpid</span>
                            <span class="badge bg-info mb-2">Multimodal</span>
                        </div>
                        <p><strong>Millor per:</strong></p>
                        <ul class="mb-3">
                            <li>Prototips ràpids</li>
                            <li>Aplicacions en temps real</li>
                            <li>Anàlisi d'imatges i vídeo</li>
                            <li>Costos baixos</li>
                        </ul>
                        <p class="small text-muted mb-2"><strong>Context:</strong> 1M tokens</p>
                        <p class="small text-muted"><strong>Preu:</strong> Molt econòmic</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100 border-warning">
                    <div class="card-header bg-warning text-dark">
                        <h4 class="mb-0">Gemini 1.5 Pro</h4>
                        <small>Producció</small>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <span class="badge bg-primary mb-2">Equilibrat</span>
                            <span class="badge bg-success mb-2">Multimodal</span>
                        </div>
                        <p><strong>Millor per:</strong></p>
                        <ul class="mb-3">
                            <li>Tasques complexes</li>
                            <li>Anàlisi de documents llargs</li>
                            <li>Raonament avançat</li>
                            <li>Producció estable</li>
                        </ul>
                        <p class="small text-muted mb-2"><strong>Context:</strong> 2M tokens</p>
                        <p class="small text-muted"><strong>Preu:</strong> Moderat</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100 border-info">
                    <div class="card-header bg-info text-white">
                        <h4 class="mb-0">Gemini 1.5 Flash</h4>
                        <small>Econòmic</small>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <span class="badge bg-success mb-2">Ràpid</span>
                            <span class="badge bg-warning mb-2">Econòmic</span>
                        </div>
                        <p><strong>Millor per:</strong></p>
                        <ul class="mb-3">
                            <li>Grans volums de peticions</li>
                            <li>Resums i extraccions</li>
                            <li>Chatbots senzills</li>
                            <li>Aplicacions low-cost</li>
                        </ul>
                        <p class="small text-muted mb-2"><strong>Context:</strong> 1M tokens</p>
                        <p class="small text-muted"><strong>Preu:</strong> Molt baix</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Guia Pas a Pas -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🚀 Guia Pas a Pas</h2>
            </div>

            <!-- Pas 1 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0"><span class="badge bg-white text-primary me-3">1</span>Accedir a Google AI Studio</h4>
                    </div>
                    <div class="card-body p-4">
                        <ol class="mb-0">
                            <li class="mb-2">Ves a <a href="https://aistudio.google.com" target="_blank"><strong>aistudio.google.com</strong></a></li>
                            <li class="mb-2">Inicia sessió amb el teu compte de Google</li>
                            <li class="mb-2">Accepta els termes i condicions</li>
                            <li class="mb-2">Ja pots començar a experimentar!</li>
                        </ol>
                        <div class="alert alert-success mt-3">
                            <i class="bi bi-check-circle me-2"></i><strong>Gratuït:</strong> No cal targeta de crèdit per començar
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 2 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-success text-white">
                        <h4 class="mb-0"><span class="badge bg-white text-success me-3">2</span>Crear un Nou Prompt</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="mb-3">Google AI Studio ofereix 3 tipus de prompts:</p>
                        
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <div class="card bg-light h-100">
                                    <div class="card-body">
                                        <h5><i class="bi bi-chat-dots text-primary me-2"></i>Freeform</h5>
                                        <p class="small mb-2"><strong>Per:</strong> Prompts senzills, preguntes directes</p>
                                        <p class="small text-muted mb-0">Ex: "Explica'm què és la fotosíntesi"</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="card bg-light h-100">
                                    <div class="card-body">
                                        <h5><i class="bi bi-table text-success me-2"></i>Structured</h5>
                                        <p class="small mb-2"><strong>Per:</strong> Dades tabulars, exemples múltiples</p>
                                        <p class="small text-muted mb-0">Ex: Classificar emails com spam/no-spam</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="card bg-light h-100">
                                    <div class="card-body">
                                        <h5><i class="bi bi-chat-left-dots text-warning me-2"></i>Chat</h5>
                                        <p class="small mb-2"><strong>Per:</strong> Converses, assistents virtuals</p>
                                        <p class="small text-muted mb-0">Ex: Chatbot d'atenció al client</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h6>Com crear:</h6>
                            <ol>
                                <li>Clic a <strong>"Create new"</strong></li>
                                <li>Selecciona el tipus de prompt</li>
                                <li>Escriu el teu prompt al camp de text</li>
                                <li>Clic a <strong>"Run"</strong> per veure el resultat</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 3 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-warning text-dark">
                        <h4 class="mb-0"><span class="badge bg-dark text-warning me-3">3</span>Ajustar Configuració</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="mb-3">Personalitza el comportament del model:</p>
                        
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <h6><i class="bi bi-thermometer-half text-danger me-2"></i>Temperature</h6>
                                <p class="small"><strong>0.0 - 2.0</strong></p>
                                <ul class="small">
                                    <li><strong>Baixa (0.0-0.3):</strong> Respostes precises i consistents</li>
                                    <li><strong>Mitjana (0.7-1.0):</strong> Equilibri creativitat/precisió</li>
                                    <li><strong>Alta (1.5-2.0):</strong> Respostes creatives i variades</li>
                                </ul>
                            </div>
                            <div class="col-md-6 mb-3">
                                <h6><i class="bi bi-hash text-primary me-2"></i>Top-K</h6>
                                <p class="small"><strong>1 - 40</strong></p>
                                <p class="small">Limita les opcions de paraules. Valors baixos = més previsible.</p>
                            </div>
                            <div class="col-md-6 mb-3">
                                <h6><i class="bi bi-percent text-success me-2"></i>Top-P</h6>
                                <p class="small"><strong>0.0 - 1.0</strong></p>
                                <p class="small">Probabilitat acumulada. 0.9 = 90% de les opcions més probables.</p>
                            </div>
                            <div class="col-md-6 mb-3">
                                <h6><i class="bi bi-textarea-t text-info me-2"></i>Max Output Tokens</h6>
                                <p class="small"><strong>1 - 8192</strong></p>
                                <p class="small">Longitud màxima de la resposta. 1 token ≈ 4 caràcters.</p>
                            </div>
                        </div>

                        <div class="alert alert-info">
                            <i class="bi bi-lightbulb me-2"></i><strong>Consell:</strong> Comença amb Temperature=0.7, Top-K=40, Top-P=0.95
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 4 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-info text-white">
                        <h4 class="mb-0"><span class="badge bg-white text-info me-3">4</span>Treballar amb Imatges i Fitxers</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="mb-3">Gemini és multimodal! Pots afegir:</p>
                        
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-file-image fs-1 text-primary mb-2"></i>
                                    <h6>Imatges</h6>
                                    <p class="small text-muted">JPG, PNG, WEBP</p>
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-camera-video fs-1 text-danger mb-2"></i>
                                    <h6>Vídeos</h6>
                                    <p class="small text-muted">MP4, MOV</p>
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-file-earmark-text fs-1 text-success mb-2"></i>
                                    <h6>Documents</h6>
                                    <p class="small text-muted">PDF, TXT</p>
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-music-note fs-1 text-warning mb-2"></i>
                                    <h6>Àudio</h6>
                                    <p class="small text-muted">MP3, WAV</p>
                                </div>
                            </div>
                        </div>

                        <div class="mt-3">
                            <h6>Exemples d'ús:</h6>
                            <div class="bg-light p-3 rounded">
                                <ul class="mb-0">
                                    <li class="mb-2"><strong>Imatge + Text:</strong> "Descriu què hi ha en aquesta foto i suggereix millores"</li>
                                    <li class="mb-2"><strong>PDF + Pregunta:</strong> "Resumeix els punts principals d'aquest document"</li>
                                    <li class="mb-2"><strong>Vídeo + Anàlisi:</strong> "Transcriu aquest vídeo i extreu les idees clau"</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 5 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-danger text-white">
                        <h4 class="mb-0"><span class="badge bg-white text-danger me-3">5</span>Obtenir l'API Key</h4>
                    </div>
                    <div class="card-body p-4">
                        <ol class="mb-3">
                            <li class="mb-2">A Google AI Studio, clic a <strong>"Get API key"</strong> (dalt a la dreta)</li>
                            <li class="mb-2">Clic a <strong>"Create API key"</strong></li>
                            <li class="mb-2">Selecciona o crea un projecte de Google Cloud</li>
                            <li class="mb-2">Copia la clau API (comença per <code>AIza...</code>)</li>
                        </ol>

                        <div class="alert alert-warning">
                            <i class="bi bi-exclamation-triangle me-2"></i><strong>Seguretat:</strong> No comparteixis mai la teva API key públicament!
                        </div>

                        <h6 class="mt-4">Límits gratuïts:</h6>
                        <ul>
                            <li>1.500 peticions per dia (RPD)</li>
                            <li>1 milió de tokens gratis per mes</li>
                            <li>Sense targeta de crèdit</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Pas 6 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                        <h4 class="mb-0 text-white"><span class="badge bg-white text-dark me-3">6</span>Exportar Codi</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="mb-3">Un cop tinguis el prompt perfecte, exporta'l per usar-lo al teu projecte:</p>
                        
                        <ol class="mb-4">
                            <li class="mb-2">Clic a <strong>"Get code"</strong> (icona <code>&lt;/&gt;</code>)</li>
                            <li class="mb-2">Selecciona el llenguatge: <strong>Python</strong>, <strong>JavaScript</strong>, <strong>cURL</strong> o <strong>Kotlin</strong></li>
                            <li class="mb-2">Copia el codi generat</li>
                            <li class="mb-2">Enganxa'l al teu projecte</li>
                        </ol>

                        <div class="mb-4">
                            <h6>Exemple Python:</h6>
                            <pre class="bg-dark text-light p-3 rounded"><code>import google.generativeai as genai

genai.configure(api_key="LA_TEVA_API_KEY")

model = genai.GenerativeModel('gemini-2.0-flash-exp')
response = model.generate_content("Explica'm la teoria de la relativitat")
print(response.text)</code></pre>
                        </div>

                        <div>
                            <h6>Exemple JavaScript:</h6>
                            <pre class="bg-dark text-light p-3 rounded"><code>const { GoogleGenerativeAI } = require("@google/generative-ai");

const genAI = new GoogleGenerativeAI("LA_TEVA_API_KEY");
const model = genAI.getGenerativeModel({ model: "gemini-2.0-flash-exp" });

const result = await model.generateContent("Explica'm la teoria de la relativitat");
console.log(result.response.text());</code></pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Casos d'Ús -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">💡 Casos d'Ús Pràctics</h2>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-search text-primary me-2"></i>Anàlisi d'Imatges</h5>
                        <p class="text-muted">Descriu productes en fotos, extreu text de captures, analitza gràfics</p>
                        <div class="bg-light p-2 rounded small">
                            <strong>Prompt:</strong> "Descriu tots els elements que veus en aquesta imatge i suggereix com millorar-la"
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-translate text-success me-2"></i>Traducció i Localització</h5>
                        <p class="text-muted">Tradueix contingut mantenint context cultural i to</p>
                        <div class="bg-light p-2 rounded small">
                            <strong>Prompt:</strong> "Tradueix aquest text al català mantenint el to informal i adapta les expressions"
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-file-code text-warning me-2"></i>Generació de Codi</h5>
                        <p class="text-muted">Crea funcions, debugga errors, optimitza rendiment</p>
                        <div class="bg-light p-2 rounded small">
                            <strong>Prompt:</strong> "Crea una funció Python que ordeni una llista de diccionaris per múltiples camps"
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-chat-square-text text-info me-2"></i>Resums i Extractes</h5>
                        <p class="text-muted">Resumeix articles, PDFs, vídeos llargs</p>
                        <div class="bg-light p-2 rounded small">
                            <strong>Prompt:</strong> "Resumeix aquest PDF en 5 punts clau amb bullet points"
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-robot text-danger me-2"></i>Chatbots Personalitzats</h5>
                        <p class="text-muted">Assistents virtuals per atenció al client, educació</p>
                        <div class="bg-light p-2 rounded small">
                            <strong>System:</strong> "Ets un assistent de suport tècnic especialitzat en Laravel. Respon sempre en català."
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-tags text-purple me-2"></i>Classificació de Dades</h5>
                        <p class="text-muted">Categoritza emails, productes, comentaris</p>
                        <div class="bg-light p-2 rounded small">
                            <strong>Structured Prompt:</strong> Input: "Email text" → Output: "spam/no-spam"
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Comparació -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">⚖️ Google AI Studio vs Altres Plataformes</h2>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead class="table-primary">
                            <tr>
                                <th>Característica</th>
                                <th>Google AI Studio</th>
                                <th>OpenAI Playground</th>
                                <th>Anthropic Console</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>Models</strong></td>
                                <td>Gemini 1.5/2.0</td>
                                <td>GPT-4, GPT-3.5</td>
                                <td>Claude 3.5 Sonnet</td>
                            </tr>
                            <tr>
                                <td><strong>Multimodal</strong></td>
                                <td><span class="badge bg-success">Text, Imatge, Vídeo, Àudio</span></td>
                                <td>Text, Imatge (limitat)</td>
                                <td>Text, Imatge, PDF</td>
                            </tr>
                            <tr>
                                <td><strong>Context Window</strong></td>
                                <td><span class="badge bg-success">Fins a 2M tokens</span></td>
                                <td>128K tokens</td>
                                <td>200K tokens</td>
                            </tr>
                            <tr>
                                <td><strong>API Gratuïta</strong></td>
                                <td><span class="badge bg-success">Sí (1.500 RPD)</span></td>
                                <td>No (trial crèdits)</td>
                                <td>No</td>
                            </tr>
                            <tr>
                                <td><strong>Exportar Codi</strong></td>
                                <td><span class="badge bg-success">Sí (4 llenguatges)</span></td>
                                <td>Sí (Python)</td>
                                <td>Sí (curl)</td>
                            </tr>
                            <tr>
                                <td><strong>Preu (Pro)</strong></td>
                                <td>$0.00125/1K tokens</td>
                                <td>$0.01/1K tokens</td>
                                <td>$0.003/1K tokens</td>
                            </tr>
                            <tr>
                                <td><strong>Millor Per</strong></td>
                                <td>Multimodal, prototipat</td>
                                <td>Aplicacions de text</td>
                                <td>Programació, anàlisi</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Tips -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🎯 Tips i Millors Pràctiques</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Sigues Específic</h6>
                                        <p class="text-muted small">Millor: "Crea una funció Python que..." que "Fes-me un programa"</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Usa Exemples</h6>
                                        <p class="text-muted small">Afegeix exemples d'entrada i sortida esperada (structured prompts)</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Itera els Prompts</h6>
                                        <p class="text-muted small">Prova diferents versions, ajusta paràmetres fins trobar l'òptim</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Guarda els Bons Prompts</h6>
                                        <p class="text-muted small">Usa "Save" per crear una biblioteca de prompts reutilitzables</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-warning me-3" style="height: fit-content;">AVÍS</span>
                                    <div>
                                        <h6>Comprova els Costos</h6>
                                        <p class="text-muted small">Revisa l'ús d'API al Google Cloud Console</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-info me-3" style="height: fit-content;">IDEA</span>
                                    <div>
                                        <h6>Combina Models</h6>
                                        <p class="text-muted small">Usa Flash per tasques senzilles i Pro per complexes</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Limitacions -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">⚠️ Limitacions</h2>
                <div class="card border-warning">
                    <div class="card-body">
                        <ul class="mb-0">
                            <li class="mb-2"><strong>Límit diari gratuït:</strong> 1.500 peticions/dia (després cal pagar)</li>
                            <li class="mb-2"><strong>Mida de fitxers:</strong> Màxim 20MB per imatge/vídeo/document</li>
                            <li class="mb-2"><strong>Idiomes:</strong> Funciona millor en anglès que en altres idiomes</li>
                            <li class="mb-2"><strong>Dades en temps real:</strong> No té accés a internet (només els documents que puges)</li>
                            <li class="mb-2"><strong>Resposta garantida:</strong> Pot generar informació incorrecta (hallucinations)</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Call to Action -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card border-0 shadow-lg" style="background: linear-gradient(135deg, #4285F4 0%, #34A853 100%);">
                    <div class="card-body p-5 text-white text-center">
                        <h2 class="mb-4">🚀 Comença a Experimentar amb Gemini!</h2>
                        <p class="lead mb-4">
                            Prova els models més avançats de Google de forma gratuïta. Crea, prototipa i exporta.
                        </p>
                        <div class="d-flex gap-3 justify-content-center flex-wrap">
                            <a href="https://aistudio.google.com" target="_blank" class="btn btn-light btn-lg">
                                <i class="bi bi-box-arrow-up-right me-2"></i>Obrir Google AI Studio
                            </a>
                            <a href="https://ai.google.dev/gemini-api/docs" target="_blank" class="btn btn-outline-light btn-lg">
                                <i class="bi bi-book me-2"></i>Documentació API
                            </a>
                            <a href="/guies/gemini" class="btn btn-outline-light btn-lg">
                                <i class="bi bi-info-circle me-2"></i>Més sobre Gemini
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

@endsection
