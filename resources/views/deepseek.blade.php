@extends('layouts.app')

@section('title', 'Guia de DeepSeek AI')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">DeepSeek AI - La IA Xinesa de Codi Obert</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li class="current">DeepSeek</li>
                    </ol>
                </nav>
            </div>
            <div class="col-12 col-md-6 text-center">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/Z0kTC3LKta0" 
                            title="DeepSeek AI Tutorial" 
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
                        <i class="bi bi-cpu" style="font-size: 4rem; color: #0066FF;"></i>
                        <h2 class="mt-3">Què és DeepSeek?</h2>
                    </div>
                    <p class="lead text-center">
                        DeepSeek és un model d'intel·ligència artificial desenvolupat per una startup xinesa 
                        que ha sorprès el món tech per la seva qualitat **gratuïta** i capacitats competitives 
                        amb GPT-4 i Claude. És completament **open-source** i destaca en programació.
                    </p>
                    <div class="alert alert-success mt-3 mb-0">
                        <strong>🎁 Totalment GRATUÏT:</strong> DeepSeek ofereix accés il·limitat sense 
                        subscripció, API econòmica i models open-source que pots executar localment.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Característiques principals -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4 text-center">✨ Per Què DeepSeek És Especial</h3>
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-gift" style="font-size: 2.5rem; color: #10B981;"></i>
                            <h6 class="mt-3">100% Gratis</h6>
                            <p class="small text-muted">Sense límits d'ús ni subscripció</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-code-slash" style="font-size: 2.5rem; color: #0066FF;"></i>
                            <h6 class="mt-3">Expert en Codi</h6>
                            <p class="small text-muted">Especialitzat en programació</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-github" style="font-size: 2.5rem; color: #333;"></i>
                            <h6 class="mt-3">Open Source</h6>
                            <p class="small text-muted">Models MIT i Apache 2.0</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-speedometer2" style="font-size: 2.5rem; color: #F59E0B;"></i>
                            <h6 class="mt-3">Rendiment</h6>
                            <p class="small text-muted">Competeix amb GPT-4</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Models de DeepSeek -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🤖 Models Disponibles</h3>
            
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">DeepSeek-V3</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-success">Última versió: Des 2024</span></p>
                            <p class="small text-muted">Model més avançat amb 671B paràmetres (MoE). 
                            Competeix directament amb GPT-4 i Claude 3.5.</p>
                            <ul class="small">
                                <li><strong>671 mil milions de paràmetres</strong></li>
                                <li>Context de 128K tokens</li>
                                <li>Raonament avançat</li>
                                <li>Excel·lent en matemàtiques i codi</li>
                                <li>Arquitectura MoE (Mixture of Experts)</li>
                                <li>Entrenament amb 14.8T tokens</li>
                            </ul>
                            <div class="alert alert-info small mb-0">
                                <strong>Benchmark:</strong> Supera GPT-4o en HumanEval (codi) 
                                i competeix en MMLU (coneixement general)
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-success">
                        <div class="card-header bg-success text-white">
                            <h5 class="mb-0">DeepSeek-Coder-V2</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-warning text-dark">Especialitzat</span></p>
                            <p class="small text-muted">Model específicament entrenat per programació 
                            amb suport per 338 llenguatges de programació.</p>
                            <ul class="small">
                                <li><strong>236B paràmetres</strong></li>
                                <li>Context de 128K tokens</li>
                                <li>Suporta 338 llenguatges</li>
                                <li>Fill-in-the-middle (autocompletat)</li>
                                <li>Entrenament amb 6T tokens de codi</li>
                                <li>Millor que GPT-4 Turbo en HumanEval</li>
                            </ul>
                            <div class="alert alert-success small mb-0">
                                <strong>Ideal per:</strong> Autocompletat, generació de codi, 
                                refactorització i debugging
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-info">
                        <div class="card-header bg-info text-white">
                            <h5 class="mb-0">DeepSeek-R1</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-danger">Experimental</span></p>
                            <p class="small text-muted">Model de raonament profund amb capacitats 
                            avançades de "chain-of-thought" (cadena de pensament).</p>
                            <ul class="small">
                                <li>Raonament pas a pas transparent</li>
                                <li>Excel·lent en problemes complexos</li>
                                <li>Matemàtiques avançades</li>
                                <li>Lògica i puzzles</li>
                                <li>Debugging complex</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-secondary">
                        <div class="card-header bg-secondary text-white">
                            <h5 class="mb-0">Models Locals (Llama compatible)</h5>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-dark">Open Source</span></p>
                            <p class="small text-muted">Versions quantitzades per executar localment 
                            amb Ollama, LM Studio, etc.</p>
                            <ul class="small">
                                <li><code>deepseek-coder:6.7b</code></li>
                                <li><code>deepseek-coder:33b</code></li>
                                <li><code>deepseek-v2:16b</code></li>
                                <li><code>deepseek-v2:236b</code> (requereix GPU potent)</li>
                            </ul>
                            <div class="alert alert-secondary small mb-0">
                                <strong>Privacitat total:</strong> Executa el model al teu 
                                ordinador sense enviar dades a internet
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Com utilitzar DeepSeek -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">💻 Com Utilitzar DeepSeek</h3>
            
            <div class="accordion" id="usageAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#usage1">
                            1. Xat Web (Recomanat per començar)
                        </button>
                    </h2>
                    <div id="usage1" class="accordion-collapse collapse show" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Accés:</strong> <a href="https://chat.deepseek.com" target="_blank">chat.deepseek.com</a></p>
                            
                            <p class="mb-2"><strong>Característiques:</strong></p>
                            <ul>
                                <li><strong>Gratuït</strong> - Sense registre inicial (opcions limitades)</li>
                                <li><strong>Compte gratuït</strong> - Registrant-te amb email/Google (recomanat)</li>
                                <li><strong>Models disponibles:</strong> DeepSeek-V3, DeepSeek-R1</li>
                                <li><strong>Sense límits</strong> - Ús il·limitat (pot tenir rate limits temporals)</li>
                            </ul>

                            <p class="mb-2"><strong>Com començar:</strong></p>
                            <ol>
                                <li>Ves a <a href="https://chat.deepseek.com" target="_blank">chat.deepseek.com</a></li>
                                <li>Registra't amb email o Google (opcional però recomanat)</li>
                                <li>Selecciona el model: <strong>DeepSeek-V3</strong> (general) o <strong>DeepSeek-R1</strong> (raonament)</li>
                                <li>Comença a fer preguntes!</li>
                            </ol>

                            <div class="alert alert-success mt-2 mb-0">
                                <strong>💡 Consell:</strong> Utilitza DeepSeek-V3 per programació general 
                                i DeepSeek-R1 quan necessitis raonament profund o solucions pas a pas.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage2">
                            2. API de DeepSeek (Molt econòmica)
                        </button>
                    </h2>
                    <div id="usage2" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Plataforma:</strong> <a href="https://platform.deepseek.com" target="_blank">platform.deepseek.com</a></p>
                            
                            <p class="mb-2"><strong>Preus (Pay-as-you-go):</strong></p>
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
                                        <td>DeepSeek-V3</td>
                                        <td>$0.14 / 1M tokens</td>
                                        <td>$0.28 / 1M tokens</td>
                                    </tr>
                                    <tr>
                                        <td>DeepSeek-Coder</td>
                                        <td>$0.14 / 1M tokens</td>
                                        <td>$0.28 / 1M tokens</td>
                                    </tr>
                                    <tr class="table-success">
                                        <td colspan="3"><strong>10-20x més barat que GPT-4!</strong></td>
                                    </tr>
                                </tbody>
                            </table>

                            <p class="mb-2"><strong>Exemple amb cURL:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>curl https://api.deepseek.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DEEPSEEK_API_KEY" \
  -d '{
    "model": "deepseek-chat",
    "messages": [
      {
        "role": "user",
        "content": "Crea una funció Laravel per validar emails"
      }
    ],
    "temperature": 0.7
  }'</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>Compatible amb OpenAI SDK:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>from openai import OpenAI

client = OpenAI(
    api_key="LA_TEVA_API_KEY",
    base_url="https://api.deepseek.com"
)

response = client.chat.completions.create(
    model="deepseek-chat",
    messages=[{"role": "user", "content": "Hello!"}]
)</code></pre>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#usage3">
                            3. Execució Local amb Ollama
                        </button>
                    </h2>
                    <div id="usage3" class="accordion-collapse collapse" data-bs-parent="#usageAccordion">
                        <div class="accordion-body">
                            <p><strong>Per privacitat total i ús offline</strong></p>
                            
                            <p class="mb-2"><strong>1. Instal·lar Ollama:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code># macOS / Linux
curl -fsSL https://ollama.ai/install.sh | sh

# Windows
# Descarrega desde https://ollama.ai/download</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>2. Descarregar model DeepSeek:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code># Model petit (6.7B) - Requereix ~8GB RAM
ollama pull deepseek-coder:6.7b

# Model mitjà (33B) - Requereix ~32GB RAM
ollama pull deepseek-coder:33b

# Model gran (236B) - Requereix GPU potent
ollama pull deepseek-coder:236b</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>3. Utilitzar el model:</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code># Xat interactiu
ollama run deepseek-coder:6.7b

# Des de Python
import ollama

response = ollama.chat(
    model='deepseek-coder:6.7b',
    messages=[{
        'role': 'user',
        'content': 'Crea una API REST en Laravel'
    }]
)
print(response['message']['content'])</code></pre>
                            </div>

                            <div class="alert alert-warning mt-3 mb-0">
                                <strong>⚠️ Requisits:</strong> El model 6.7B necessita mínim 8GB RAM. 
                                Per models grans necessites GPU NVIDIA amb CUDA.
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
                            <i class="bi bi-lightning-charge" style="font-size: 3rem; color: #0066FF;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Continue + DeepSeek</h5>
                            <p class="mb-2"><span class="badge bg-success">Recomanat</span> <span class="badge bg-primary">Gratuït</span></p>
                            <p class="card-text text-muted mb-2">
                                Continue suporta DeepSeek tant via API com localment amb Ollama.
                            </p>
                            
                            <p class="mb-2"><strong>Configuració amb API DeepSeek:</strong></p>
                            <ol class="small">
                                <li>Instal·la Continue: <code>Continue.continue</code></li>
                                <li>Obté API key de <a href="https://platform.deepseek.com" target="_blank">platform.deepseek.com</a></li>
                                <li>Edita <code>~/.continue/config.json</code>:</li>
                            </ol>

                            <div class="bg-dark text-light p-3 rounded mt-2">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>{
  "models": [
    {
      "title": "DeepSeek V3",
      "provider": "openai",
      "model": "deepseek-chat",
      "apiBase": "https://api.deepseek.com",
      "apiKey": "LA_TEVA_API_KEY"
    }
  ]
}</code></pre>
                            </div>

                            <p class="mt-3 mb-2"><strong>O amb Ollama (local):</strong></p>
                            <div class="bg-dark text-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code>{
  "models": [
    {
      "title": "DeepSeek Coder Local",
      "provider": "ollama",
      "model": "deepseek-coder:6.7b"
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
                            <i class="bi bi-terminal" style="font-size: 3rem; color: #10B981;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Cline + DeepSeek</h5>
                            <p class="mb-2"><span class="badge bg-info text-dark">Agent Autònom</span></p>
                            <p class="card-text text-muted mb-2">
                                Agent de codificació autònom compatible amb DeepSeek API.
                            </p>
                            
                            <p class="mb-2"><strong>Configuració:</strong></p>
                            <ol class="small">
                                <li>Instal·la: <code>saoudrizwan.claude-dev</code></li>
                                <li>Selecciona "OpenAI Compatible"</li>
                                <li>API URL: <code>https://api.deepseek.com</code></li>
                                <li>Model: <code>deepseek-chat</code></li>
                                <li>API Key: La teva clau de DeepSeek</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 3: Twinny -->
            <div class="card mb-3 shadow-sm border-success">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-code-square" style="font-size: 3rem; color: #059669;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Twinny - Autocompletat amb DeepSeek</h5>
                            <p class="mb-2"><span class="badge bg-success">Open Source</span> <span class="badge bg-primary">Gratuït</span></p>
                            <p class="card-text text-muted mb-2">
                                Alternativa open-source a GitHub Copilot que funciona amb DeepSeek local (Ollama).
                            </p>
                            
                            <p class="mb-2"><strong>Característiques:</strong></p>
                            <ul class="small">
                                <li>Autocompletat inline tipus Copilot</li>
                                <li>Funciona amb Ollama (DeepSeek local)</li>
                                <li>Xat integrat al sidebar</li>
                                <li>100% gratuït i privat</li>
                                <li>Fill-in-the-middle per autocompletat</li>
                            </ul>

                            <p class="mb-2"><strong>Configuració:</strong></p>
                            <ol class="small">
                                <li>Instal·la Twinny: <code>rjmacarthy.twinny</code></li>
                                <li>Instal·la Ollama i descarrega: <code>ollama pull deepseek-coder:6.7b</code></li>
                                <li>A configuració de Twinny:
                                    <ul>
                                        <li>Provider: Ollama</li>
                                        <li>Model: deepseek-coder:6.7b</li>
                                        <li>URL: http://localhost:11434</li>
                                    </ul>
                                </li>
                            </ol>

                            <div class="alert alert-success small mb-0">
                                <strong>🚀 Perfecte per:</strong> Tenir autocompletat tipus Copilot 
                                completament gratuït i privat al teu ordinador
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
            <h3 class="mb-4">👨‍💻 Casos d'Ús Ideals per DeepSeek</h3>
            
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h6 class="mb-0"><i class="bi bi-code-slash"></i> Programació Professional</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">DeepSeek-Coder és Excel·lent per:</p>
                            <ul class="small mb-0">
                                <li>Generar funcions i classes completes</li>
                                <li>Refactoritzar codi existent</li>
                                <li>Crear tests unitaris</li>
                                <li>Documentar codi automàticament</li>
                                <li>Convertir entre llenguatges</li>
                                <li>APIs REST i GraphQL</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-success">
                        <div class="card-header bg-success text-white">
                            <h6 class="mb-0"><i class="bi bi-bug"></i> Debugging Avançat</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Troba i soluciona errors ràpidament:</p>
                            <ul class="small mb-0">
                                <li>Analitza stack traces</li>
                                <li>Identifica problemes de rendiment</li>
                                <li>Detecta vulnerabilitats</li>
                                <li>Suggereix millores de seguretat</li>
                                <li>Optimitza queries SQL</li>
                                <li>Memory leaks i race conditions</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-warning">
                        <div class="card-header bg-warning text-dark">
                            <h6 class="mb-0"><i class="bi bi-calculator"></i> Matemàtiques i Lògica</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">DeepSeek-R1 excel·leix en:</p>
                            <ul class="small mb-0">
                                <li>Problemes matemàtics complexos</li>
                                <li>Algoritmes i estructures de dades</li>
                                <li>Proves matemàtiques</li>
                                <li>Optimització i recursivitat</li>
                                <li>Teoria de grafs</li>
                                <li>Explicacions pas a pas</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card h-100 border-info">
                        <div class="card-header bg-info text-white">
                            <h6 class="mb-0"><i class="bi bi-shield-lock"></i> Projectes Privats</h6>
                        </div>
                        <div class="card-body">
                            <p class="small">Amb Ollama (local):</p>
                            <ul class="small mb-0">
                                <li>Codi propietari o sensible</li>
                                <li>Compliment de GDPR/privacitat</li>
                                <li>Treball offline sense internet</li>
                                <li>Secrets i credencials al codi</li>
                                <li>Prototips confidencials</li>
                                <li>Sense enviar dades a tercers</li>
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
            <h3 class="mb-4">⚖️ DeepSeek vs Altres Assistents IA</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>Característica</th>
                            <th>DeepSeek</th>
                            <th>ChatGPT</th>
                            <th>GitHub Copilot</th>
                            <th>Claude</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Cost</strong></td>
                            <td><span class="badge bg-success">GRATUÏT</span></td>
                            <td>Gratuït / $20/mes</td>
                            <td>$10/mes</td>
                            <td>Gratuït / $20/mes</td>
                        </tr>
                        <tr>
                            <td><strong>API</strong></td>
                            <td>$0.14/1M (20x més barat)</td>
                            <td>$2.50/1M (GPT-4o mini)</td>
                            <td>No disponible</td>
                            <td>$3/1M (Haiku)</td>
                        </tr>
                        <tr>
                            <td><strong>Open Source</strong></td>
                            <td><span class="badge bg-success">Sí (MIT)</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Execució local</strong></td>
                            <td><span class="badge bg-success">Sí (Ollama)</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                            <td><span class="badge bg-danger">No</span></td>
                        </tr>
                        <tr>
                            <td><strong>Qualitat codi</strong></td>
                            <td><span class="badge bg-success">Excel·lent</span></td>
                            <td>Molt bona</td>
                            <td>Excel·lent</td>
                            <td>Excel·lent</td>
                        </tr>
                        <tr>
                            <td><strong>Context</strong></td>
                            <td>128K tokens</td>
                            <td>128K tokens</td>
                            <td>~8K tokens</td>
                            <td>200K tokens</td>
                        </tr>
                        <tr>
                            <td><strong>Raonament</strong></td>
                            <td><span class="badge bg-success">R1 model</span></td>
                            <td>o1/o1-pro ($$$)</td>
                            <td><span class="badge bg-secondary">N/A</span></td>
                            <td>Claude 3.5</td>
                        </tr>
                        <tr>
                            <td><strong>Integració VS Code</strong></td>
                            <td>Continue, Cline, Twinny</td>
                            <td>Extensions 3rd party</td>
                            <td>Nativa</td>
                            <td>Continue, Cline</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="alert alert-success mt-3">
                <i class="bi bi-trophy"></i> <strong>Veredicte:</strong> 
                DeepSeek és imbatible en relació qualitat/preu. Gratuït amb qualitat GPT-4, 
                open-source i execució local. Ideal per programadors que volen independència.
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
                                <li><strong>Totalment gratuït</strong> - Xat i API econòmica</li>
                                <li><strong>Open source</strong> - Pots estudiar i modificar</li>
                                <li><strong>Excel·lent en codi</strong> - Supera GPT-4 en HumanEval</li>
                                <li><strong>Execució local</strong> - Privacitat total amb Ollama</li>
                                <li><strong>Context gran</strong> - 128K tokens</li>
                                <li><strong>Raonament profund</strong> - Model R1 gratuït</li>
                                <li><strong>Multilingüe</strong> - Xinès i anglès natiu</li>
                                <li><strong>Transparent</strong> - Metodologia publicada</li>
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
                                <li><strong>Menys conegut</strong> - Comunitat més petita</li>
                                <li><strong>Documentació</strong> - Menys tutorials en català</li>
                                <li><strong>Sense visió</strong> - No processa imatges (encara)</li>
                                <li><strong>Rate limits</strong> - Pot tenir límits temporals al xat gratuït</li>
                                <li><strong>Integració VS Code</strong> - No oficial, via 3rd party</li>
                                <li><strong>Llenguatge</strong> - Millor en anglès que altres idiomes</li>
                                <li><strong>Coneixement general</strong> - Menys ampli que GPT-4</li>
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
                                    <a href="https://chat.deepseek.com" target="_blank" class="text-decoration-none">
                                        DeepSeek Chat (Gratuït)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://platform.deepseek.com" target="_blank" class="text-decoration-none">
                                        DeepSeek Platform (API)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://github.com/deepseek-ai" target="_blank" class="text-decoration-none">
                                        GitHub Official
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://huggingface.co/deepseek-ai" target="_blank" class="text-decoration-none">
                                        HuggingFace Models
                                    </a>
                                </li>
                            </ul>

                            <h6>Execució local:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-download text-success"></i>
                                    <a href="https://ollama.ai" target="_blank" class="text-decoration-none">
                                        Ollama (Recomanat)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-download text-success"></i>
                                    <a href="https://lmstudio.ai" target="_blank" class="text-decoration-none">
                                        LM Studio
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-download text-success"></i>
                                    <a href="https://www.text-generation-webui.com" target="_blank" class="text-decoration-none">
                                        Text Generation WebUI
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

                            <h6>Documentació tècnica:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-warning"></i>
                                    <a href="https://api-docs.deepseek.com" target="_blank" class="text-decoration-none">
                                        API Documentation
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-file-text text-warning"></i>
                                    <a href="https://github.com/deepseek-ai/DeepSeek-Coder" target="_blank" class="text-decoration-none">
                                        DeepSeek-Coder Paper
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-file-text text-warning"></i>
                                    Arxiv Papers: DeepSeek-V2, V3, R1
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="alert alert-primary mt-4 mb-0">
                        <strong>🚀 Comença ara:</strong> 
                        Prova el xat gratuït a <a href="https://chat.deepseek.com" target="_blank" class="alert-link">chat.deepseek.com</a> 
                        o instal·la Ollama per executar-lo localment amb <code>ollama pull deepseek-coder:6.7b</code>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
