@section('meta_keywords', 'gemini, google, intel·ligència artificial, multimodal, guia, IA')
@extends('layouts.app')

@section('title', 'Guia de Gemini AI')
@section('meta_description', 'Guia sobre Gemini AI, el model multimodal avançat de Google. Característiques i integració.')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">Gemini AI - La IA de Google</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li class="current">Gemini</li>
                    </ol>
                </nav>
            </div>
            <div class="col-12 col-md-6 text-center">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/UIZAiXYceBI" 
                            title="Google Gemini AI" 
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
                        <i class="bi bi-stars" style="font-size: 4rem; color: #4285F4;"></i>
                        <h2 class="mt-3">Què és Gemini?</h2>
                    </div>
                    <p class="lead text-center">
                        Gemini és el model d'intel·ligència artificial multimodal més avançat de Google, 
                        dissenyat per entendre i generar text, codi, imatges, àudio i vídeo. Integrat 
                        amb tot l'ecosistema de Google (Search, Gmail, Docs, YouTube...).
                    </p>
                    <div class="alert alert-info mt-3 mb-0">
                        <strong>🌟 Novetat Gemini 2.0:</strong> Llançat desembre 2024, amb capacitats 
                        multimodals avançades, raonament més profund i integració nativa amb agents.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Característiques principals -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4 text-center">✨ Característiques Destacades</h3>
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-eye" style="font-size: 2.5rem; color: #4285F4;"></i>
                            <h6 class="mt-3">Multimodal</h6>
                            <p class="small text-muted">Text, imatge, àudio, vídeo natiu</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-search" style="font-size: 2.5rem; color: #EA4335;"></i>
                            <h6 class="mt-3">Google Search</h6>
                            <p class="small text-muted">Integrat amb cerca en temps real</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-grid-3x3" style="font-size: 2.5rem; color: #FBBC04;"></i>
                            <h6 class="mt-3">Ecosistema</h6>
                            <p class="small text-muted">Gmail, Docs, Drive, YouTube...</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-file-earmark-code" style="font-size: 2.5rem; color: #34A853;"></i>
                            <h6 class="mt-3">Context Llarg</h6>
                            <p class="small text-muted">Fins a 2M tokens (Gemini 1.5)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Models de Gemini -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🤖 Models Disponibles</h3>
            
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Gemini 2.0 Flash</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-success">Última versió: Des 2024</span></p>
                            <p class="small text-muted">Model més ràpid i eficient de segona generació. 
                            Millor raonament i capacitats multimodals natives.</p>
                            <ul class="small">
                                <li><strong>Multimodal natiu</strong> - Entén text, imatge, àudio, vídeo</li>
                                <li>Context de 1M tokens</li>
                                <li>Velocitat 2x més ràpida que 1.5</li>
                                <li>Millor raonament complex</li>
                                <li>Generació d'àudio en temps real</li>
                                <li>Capacitats d'agent (tool use)</li>
                            </ul>
                            <div class="alert alert-success small mb-0">
                                <strong>Ideal per:</strong> Aplicacions en producció que necessiten 
                                velocitat i multimodalitat
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-warning">
                        <div class="card-header bg-warning text-dark">
                            <h5 class="mb-0">Gemini 1.5 Pro</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-info text-dark">Estable</span></p>
                            <p class="small text-muted">Model més potent amb context extremadament llarg 
                            i capacitats avançades d'anàlisi.</p>
                            <ul class="small">
                                <li><strong>2 milions de tokens</strong> de context</li>
                                <li>Analitza vídeos complets (fins 11h)</li>
                                <li>Processa codebases senceres</li>
                                <li>Raonament profund</li>
                                <li>Excel·lent per tasques complexes</li>
                                <li>Millor precisió en respostes llargues</li>
                            </ul>
                            <div class="alert alert-warning small mb-0">
                                <strong>Ideal per:</strong> Anàlisi de documents grans, vídeos, 
                                codebases completes
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-success">
                        <div class="card-header bg-success text-white">
                            <h5 class="mb-0">Gemini 1.5 Flash</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-secondary">Lleuger</span></p>
                            <p class="small text-muted">Ràpid i econòmic per tasques simples.</p>
                            <ul class="small">
                                <li>Context 1M tokens</li>
                                <li>Molt ràpid</li>
                                <li>Econòmic</li>
                                <li>Bo per xat general</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-info">
                        <div class="card-header bg-info text-white">
                            <h5 class="mb-0">Gemini Ultra</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-danger">Gemini Advanced</span></p>
                            <p class="small text-muted">Versió més potent disponible només amb subscripció.</p>
                            <ul class="small">
                                <li>Màxima qualitat</li>
                                <li>Raonament superior</li>
                                <li>Millor en codi complex</li>
                                <li>$20/mes (Google One AI Premium)</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card h-100 border-secondary">
                        <div class="card-header bg-secondary text-white">
                            <h5 class="mb-0">Gemma (Open)</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-dark">Open Source</span></p>
                            <p class="small text-muted">Models open-source per executar localment.</p>
                            <ul class="small">
                                <li>Gemma 2B, 7B</li>
                                <li>CodeGemma 7B</li>
                                <li>Apache 2.0</li>
                                <li>Ollama compatible</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Com utilitzar Gemini -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">💻 Com Utilitzar Gemini</h3>
            
            <div class="accordion" id="usageAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#usage1">
                            1. Gemini Web (Recomanat per començar)
                        </button>
                    </h2>
                    <div id="usage1" class="accordion-collapse collapse show" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Accés:</strong> <a href="https://gemini.google.com" target="_blank">gemini.google.com</a></p>
                            
                            <p class="mb-2"><strong>Versions disponibles:</strong></p>
                            <ul>
                                <li><strong>Gemini (Gratuït)</strong> - Accés a Gemini 1.5 Flash i Pro amb límits</li>
                                <li><strong>Gemini Advanced</strong> - €21.99/mes - Ultra, 2M tokens, Gmail/Docs integration</li>
                            </ul>

                            <p class="mb-2"><strong>Característiques del xat web:</strong></p>
                            <ul>
                                <li>Xat amb text, imatges, documents</li>
                                <li>Integració amb Google Search en temps real</li>
                                <li>Carrega PDFs, vídeos, imatges</li>
                                <li>Extensions: Gmail, Drive, Maps, YouTube, Google Flights...</li>
                                <li>Genera imatges amb Imagen 3</li>
                                <li>Xats compartits i exportació</li>
                            </ul>

                            <div class="alert alert-info mt-2 mb-0">
                                <strong>💡 Consell:</strong> Activa les extensions de Google a la configuració 
                                per integrar Gemini amb Gmail, Drive, Docs i altres serveis.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage2">
                            2. API de Gemini (Google AI Studio)
                        </button>
                    </h2>
                    <div id="usage2" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Plataforma:</strong> <a href="https://aistudio.google.com" target="_blank">aistudio.google.com</a></p>
                            
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
                                    <tr>
                                        <td>Gemini 2.0 Flash</td>
                                        <td>Gratuït (límits)</td>
                                        <td>Gratuït (límits)</td>
                                    </tr>
                                    <tr>
                                        <td>Gemini 1.5 Flash</td>
                                        <td>$0.075</td>
                                        <td>$0.30</td>
                                    </tr>
                                    <tr>
                                        <td>Gemini 1.5 Pro</td>
                                        <td>$1.25</td>
                                        <td>$5.00</td>
                                    </tr>
                                    <tr class="table-info">
                                        <td colspan="3"><strong>Quota gratuïta diària disponible!</strong></td>
                                    </tr>
                                </tbody>
                            </table>

                            <p class="mb-2"><strong>Exemple amb Python (SDK oficial):</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>import google.generativeai as genai

genai.configure(api_key="LA_TEVA_API_KEY")

model = genai.GenerativeModel('gemini-2.0-flash')
response = model.generate_content('Crea una API REST en Laravel')

print(response.text)</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Amb imatges (multimodal):</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>import PIL.Image

img = PIL.Image.open('screenshot.jpg')
model = genai.GenerativeModel('gemini-2.0-flash')

response = model.generate_content([
    "Què hi ha en aquesta imatge?",
    img
])
print(response.text)</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Amb cURL:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>curl "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$API_KEY" \
  -H 'Content-Type: application/json' \
  -d '{
    "contents": [{
      "parts": [{
        "text": "Explica què és Laravel"
      }]
    }]
  }'</code></pre>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage3">
                            3. Gemma (Models Open Source)
                        </button>
                    </h2>
                    <div id="usage3" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Per privacitat i ús local</strong></p>
                            
                            <p class="mb-2"><strong>Instal·lar amb Ollama:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code># Gemma general (7B)
ollama pull gemma:7b

# CodeGemma per programació (7B)
ollama pull codegemma:7b

# Gemma petit (2B) - Requereix menys recursos
ollama pull gemma:2b</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Utilitzar:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code># Xat interactiu
ollama run codegemma:7b

# Des de Python
import ollama

response = ollama.chat(
    model='codegemma:7b',
    messages=[{
        'role': 'user',
        'content': 'Crea una migration de Laravel'
    }]
)
print(response['message']['content'])</code></pre>
                            </div>

                            <div class="alert alert-success mt-3 mb-0">
                                <strong>✅ Avantatge:</strong> CodeGemma està específicament entrenat 
                                per programació i funciona excel·lent en local.
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
            
            <!-- Extension 1: Continue -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-lightning-charge" style="font-size: 3rem; color: #4285F4;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Continue + Gemini</h5>
                            <p class="mb-2"><span class="badge bg-success">Recomanat</span> <span class="badge bg-primary">API Gratuïta</span></p>
                            <p class="card-text text-muted mb-2">
                                Continue suporta Gemini via API de Google amb quota gratuïta diària.
                            </p>
                            
                            <p class="mb-2"><strong>Configuració:</strong></p>
                            <ol class="small">
                                <li>Instal·la Continue: <code>Continue.continue</code></li>
                                <li>Obté API key de <a href="https://aistudio.google.com/apikey" target="_blank">AI Studio</a></li>
                                <li>Edita <code>~/.continue/config.json</code>:</li>
                            </ol>

                            <div class="bg-dark text-light p-3 rounded mt-2">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>{
  "models": [
    {
      "title": "Gemini 2.0 Flash",
      "provider": "gemini",
      "model": "gemini-2.0-flash-exp",
      "apiKey": "LA_TEVA_API_KEY"
    }
  ]
}</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>O amb Gemma (local via Ollama):</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>{
  "models": [
    {
      "title": "CodeGemma Local",
      "provider": "ollama",
      "model": "codegemma:7b"
    }
  ]
}</code></pre>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 2: Cline -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-terminal" style="font-size: 3rem; color: #34A853;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Cline + Gemini</h5>
                            <p class="mb-2"><span class="badge bg-info text-dark">Agent Autònom</span></p>
                            <p class="card-text text-muted mb-2">
                                Agent de codificació compatible amb Gemini API.
                            </p>
                            
                            <p class="mb-2"><strong>Configuració:</strong></p>
                            <ol class="small">
                                <li>Instal·la: <code>saoudrizwan.claude-dev</code></li>
                                <li>Selecciona "Google Gemini"</li>
                                <li>Introdueix la teva API key</li>
                                <li>Tria model: <code>gemini-2.0-flash-exp</code></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 3: Twinny amb Gemma -->
            <div class="card shadow-sm border-success">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-code-square" style="font-size: 3rem; color: #FBBC04;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Twinny + CodeGemma</h5>
                            <p class="mb-2"><span class="badge bg-success">Open Source</span> <span class="badge bg-dark">Local</span></p>
                            <p class="card-text text-muted mb-2">
                                Autocompletat tipus Copilot amb CodeGemma executant localment.
                            </p>
                            
                            <p class="mb-2"><strong>Configuració:</strong></p>
                            <ol class="small">
                                <li>Instal·la: <code>rjmacarthy.twinny</code></li>
                                <li>Instal·la Ollama: <code>ollama pull codegemma:7b</code></li>
                                <li>Config Twinny:
                                    <ul>
                                        <li>Provider: Ollama</li>
                                        <li>Model: codegemma:7b</li>
                                        <li>URL: http://localhost:11434</li>
                                    </ul>
                                </li>
                            </ol>

                            <div class="alert alert-success small mb-0">
                                <strong>🚀 Perfecte:</strong> CodeGemma local et dona autocompletat gratuït 
                                i privat amb tecnologia Google.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Casos d'ús -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">👨‍💻 Casos d'Ús Ideals per Gemini</h3>
            
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h6 class="mb-0"><i class="bi bi-file-earmark-text"></i> Anàlisi de Documents</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Gemini 1.5 Pro amb 2M tokens:</p>
                            <ul class="small mb-0">
                                <li>Analitza PDFs complets (fins 1500 pàgines)</li>
                                <li>Codebases senceres (tot el projecte Laravel)</li>
                                <li>Contractes legals extensos</li>
                                <li>Documentació tècnica completa</li>
                                <li>Llibres complets</li>
                                <li>Resumeix i extreu insights</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-danger">
                        <div class="card-header bg-danger text-white">
                            <h6 class="mb-0"><i class="bi bi-camera-video"></i> Processament de Vídeo</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Capacitat única de Gemini:</p>
                            <ul class="small mb-0">
                                <li>Analitza vídeos fins 11 hores</li>
                                <li>Transcripció i resum automàtic</li>
                                <li>Busca moments específics</li>
                                <li>Genera subtítols</li>
                                <li>Identifica objectes i persones</li>
                                <li>Analitza tutorials i cursos</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-success">
                        <div class="card-header bg-success text-white">
                            <h6 class="mb-0"><i class="bi bi-search"></i> Recerca amb Context Actualitzat</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Integració amb Google Search:</p>
                            <ul class="small mb-0">
                                <li>Informació en temps real del web</li>
                                <li>Notícies i actualitzacions recents</li>
                                <li>Comparatives de productes actualitzades</li>
                                <li>Llibreries i frameworks nous</li>
                                <li>Vulnerabilitats de seguretat recents</li>
                                <li>Tendències tecnològiques actuals</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-warning">
                        <div class="card-header bg-warning text-dark">
                            <h6 class="mb-0"><i class="bi bi-diagram-3"></i> Integració Ecosistema Google</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Extensions de Workspace:</p>
                            <ul class="small mb-0">
                                <li>Cerca emails específics a Gmail</li>
                                <li>Analitza documents de Drive</li>
                                <li>Resume reunions de Meet/Calendar</li>
                                <li>Busca informació a YouTube</li>
                                <li>Planifica viatges amb Flights/Hotels</li>
                                <li>Troba llocs amb Maps</li>
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
            <h3 class="mb-4">⚖️ Gemini vs Altres Assistents IA</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>Característica</th>
                            <th>Gemini</th>
                            <th>ChatGPT</th>
                            <th>Claude</th>
                            <th>DeepSeek</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Context màxim</strong></td>
                            <td><span class="badge bg-success">2M tokens</span></td>
                            <td>128K tokens</td>
                            <td>200K tokens</td>
                            <td>128K tokens</td>
                        </tr>
                        <tr>
                            <td><strong>Multimodal</strong></td>
                            <td><span class="badge bg-success">Natiu</span></td>
                            <td>GPT-4V (limitat)</td>
                            <td>Claude 3.5</td>
                            <td><span class="badge bg-danger">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Processa vídeo</strong></td>
                            <td><span class="badge bg-success">Sí (11h)</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Integració web</strong></td>
                            <td>Google Search nativa</td>
                            <td>Web browsing ($20/mes)</td>
                            <td><span class="badge bg-secondary">No</span></td>
                            <td><span class="badge bg-secondary">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Cost API (Flash)</strong></td>
                            <td>$0.075 / 1M</td>
                            <td>$0.15 / 1M</td>
                            <td>$0.25 / 1M</td>
                            <td>$0.14 / 1M</td>
                        </tr>
                        <tr>
                            <td><strong>Quota gratuïta</strong></td>
                            <td><span class="badge bg-success">Sí</span></td>
                            <td>Limitada</td>
                            <td>Limitada</td>
                            <td>Il·limitada (xat)</td>
                        </tr>
                        <tr>
                            <td><strong>Ecosistema</strong></td>
                            <td>Gmail, Drive, Docs, Maps...</td>
                            <td><span class="badge bg-secondary">N/A</span></td>
                            <td><span class="badge bg-secondary">N/A</span></td>
                            <td><span class="badge bg-secondary">N/A</span></td>
                        </tr>
                        <tr>
                            <td><strong>Open Source</strong></td>
                            <td>Gemma (2B, 7B)</td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td>DeepSeek (671B)</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="alert alert-info mt-3">
                <i class="bi bi-trophy"></i> <strong>Avantatges únics:</strong> 
                Gemini destaca per context extremadament llarg (2M), processament de vídeo, 
                i integració profunda amb tot l'ecosistema Google.
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
                                <li><strong>Context enorme</strong> - 2M tokens (1.5 Pro)</li>
                                <li><strong>Multimodal natiu</strong> - Text, imatge, àudio, vídeo</li>
                                <li><strong>Processament vídeo</strong> - Fins 11 hores</li>
                                <li><strong>Google Search</strong> - Dades actualitzades</li>
                                <li><strong>Ecosistema</strong> - Gmail, Drive, Docs, Maps...</li>
                                <li><strong>API econòmica</strong> - Quota gratuïta diària</li>
                                <li><strong>Gemma open-source</strong> - CodeGemma per programació</li>
                                <li><strong>Gemini 2.0</strong> - Agents i generació d'àudio</li>
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
                                <li><strong>Privacitat</strong> - Google recull dades (18 mesos)</li>
                                <li><strong>Menys "creatiu"</strong> - Més factual que ChatGPT</li>
                                <li><strong>Extensions limitades</strong> - Només ecosistema Google</li>
                                <li><strong>Gemini Ultra</strong> - Requereix subscripció ($20/mes)</li>
                                <li><strong>Codi</strong> - No tan bo com DeepSeek-Coder</li>
                                <li><strong>Rate limits</strong> - API gratuïta amb límits</li>
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
                                    <a href="https://gemini.google.com" target="_blank" class="text-decoration-none">
                                        Gemini Web (Xat)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://aistudio.google.com" target="_blank" class="text-decoration-none">
                                        Google AI Studio (API)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://deepmind.google/technologies/gemini/" target="_blank" class="text-decoration-none">
                                        Informació Tècnica
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://cloud.google.com/vertex-ai/generative-ai/docs/model-reference/gemini" target="_blank" class="text-decoration-none">
                                        Vertex AI (Empreses)
                                    </a>
                                </li>
                            </ul>

                            <h6>Models open-source:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-github text-dark"></i>
                                    <a href="https://github.com/google/gemma_pytorch" target="_blank" class="text-decoration-none">
                                        Gemma PyTorch
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-download text-success"></i>
                                    <a href="https://ollama.ai" target="_blank" class="text-decoration-none">
                                        Ollama (CodeGemma)
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://huggingface.co/google" target="_blank" class="text-decoration-none">
                                        HuggingFace Models
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h6>Extensions VS Code:</h6>
                            <ul class="list-unstyled mb-4">
                                <li class="mb-2">
                                    <i class="bi bi-box text-info"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=Continue.continue" target="_blank" class="text-decoration-none">
                                        Continue - AI Assistant
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-box text-info"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev" target="_blank" class="text-decoration-none">
                                        Cline (Agent)
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-box text-info"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=rjmacarthy.twinny" target="_blank" class="text-decoration-none">
                                        Twinny (Autocompletat)
                                    </a>
                                </li>
                            </ul>

                            <h6>Documentació:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-warning"></i>
                                    <a href="https://ai.google.dev/gemini-api/docs" target="_blank" class="text-decoration-none">
                                        API Documentation
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-warning"></i>
                                    <a href="https://ai.google.dev/gemini-api/docs/quickstart" target="_blank" class="text-decoration-none">
                                        Quickstart Guide
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-youtube text-danger"></i>
                                    <a href="https://www.youtube.com/@Google" target="_blank" class="text-decoration-none">
                                        YouTube Tutorials
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="alert alert-primary mt-4 mb-0">
                        <strong>🚀 Comença ara:</strong> 
                        Prova Gemini gratuït a <a href="https://gemini.google.com" target="_blank" class="alert-link">gemini.google.com</a> 
                        o obté una API key a <a href="https://aistudio.google.com/apikey" target="_blank" class="alert-link">AI Studio</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
