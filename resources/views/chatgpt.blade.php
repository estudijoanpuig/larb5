@section('meta_keywords', 'chatgpt, intel·ligència artificial, extensions, vscode, desenvolupament, guia')
@extends('layouts.app')

@section('title', 'Guia de ChatGPT i Extensions')
@section('meta_description', 'Guia completa de ChatGPT i extensions per Visual Studio Code. Descobreix com aprofitar la IA per desenvolupar millor.')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">ChatGPT i Extensions per Visual Studio Code</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li class="current">ChatGPT</li>
                    </ol>
                </nav>
            </div>
            <div class="col-12 col-md-6 text-center">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/JTxsNm9IdYU" 
                            title="ChatGPT for Developers" 
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
                        <i class="bi bi-chat-left-dots" style="font-size: 4rem; color: #10A37F;"></i>
                        <h2 class="mt-3">Què és ChatGPT?</h2>
                    </div>
                    <p class="lead text-center">
                        ChatGPT és un model de llenguatge avançat desenvolupat per OpenAI que pot ajudar-te 
                        a escriure codi, debugar errors, aprendre nous conceptes i molt més. És com tenir 
                        un expert en programació disponible 24/7.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Característiques principals -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4 text-center">✨ Què Pot Fer ChatGPT per Programadors</h3>
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-code-square" style="font-size: 2.5rem; color: #10A37F;"></i>
                            <h6 class="mt-3">Generar Codi</h6>
                            <p class="small text-muted">Crea funcions, classes i scripts complets</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-bug" style="font-size: 2.5rem; color: #E74C3C;"></i>
                            <h6 class="mt-3">Debugar</h6>
                            <p class="small text-muted">Identifica i soluciona errors al codi</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-book" style="font-size: 2.5rem; color: #3498DB;"></i>
                            <h6 class="mt-3">Explicar</h6>
                            <p class="small text-muted">Entén codi complex amb explicacions clares</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-arrow-repeat" style="font-size: 2.5rem; color: #9B59B6;"></i>
                            <h6 class="mt-3">Refactoritzar</h6>
                            <p class="small text-muted">Millora i optimitza el teu codi</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Extensions de VS Code -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🔌 Extensions Recomanades per Visual Studio Code</h3>
            
            <!-- Extension 1: ChatGPT - Genie AI -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-puzzle" style="font-size: 3rem; color: #10A37F;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">ChatGPT - Genie AI</h5>
                            <p class="mb-2"><span class="badge bg-success">Recomanada</span> <span class="badge bg-primary">Gratuïta</span></p>
                            <p class="card-text text-muted mb-2">
                                Integra ChatGPT directament a VS Code. Pots fer preguntes, generar codi i obtenir 
                                explicacions sense sortir de l'editor.
                            </p>
                            <p class="mb-2"><strong>Funcions destacades:</strong></p>
                            <ul class="small">
                                <li>Genera codi des de prompts en llenguatge natural</li>
                                <li>Explica el codi seleccionat</li>
                                <li>Troba i soluciona bugs</li>
                                <li>Optimitza el rendiment del codi</li>
                                <li>Genera tests unitaris automàticament</li>
                            </ul>
                            <p class="mb-0"><strong>ID:</strong> <code>genieai.chatgpt-vscode</code></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 2: CodeGPT -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-cpu" style="font-size: 3rem; color: #3498DB;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">CodeGPT</h5>
                            <p class="mb-2"><span class="badge bg-info text-dark">Popular</span> <span class="badge bg-primary">Gratuïta</span></p>
                            <p class="card-text text-muted mb-2">
                                Extension versàtil que suporta múltiples models d'IA (ChatGPT, Claude, etc.) 
                                per maximitzar la productivitat.
                            </p>
                            <p class="mb-2"><strong>Funcions destacades:</strong></p>
                            <ul class="small">
                                <li>Suport per diversos models d'IA (GPT-4, Claude, etc.)</li>
                                <li>Chat en context amb els teus fitxers</li>
                                <li>Autocompletat intel·ligent</li>
                                <li>Generació de documentació</li>
                                <li>Refactorització automàtica</li>
                            </ul>
                            <p class="mb-0"><strong>ID:</strong> <code>DanielSanMedium.dscodegpt</code></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 3: Continue -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-lightning-charge" style="font-size: 3rem; color: #F39C12;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Continue - AI Assistant</h5>
                            <p class="mb-2"><span class="badge bg-warning text-dark">Nova</span> <span class="badge bg-success">Open Source</span></p>
                            <p class="card-text text-muted mb-2">
                                Assistant d'IA de codi obert amb suport per models locals i remots. 
                                Perfecte per qui valora la privacitat.
                            </p>
                            <p class="mb-2"><strong>Funcions destacades:</strong></p>
                            <ul class="small">
                                <li>Codi 100% obert i personalitzable</li>
                                <li>Models locals (Llama, Mistral) o remots (GPT, Claude)</li>
                                <li>Xat en context amb la teva codebase</li>
                                <li>Edició de codi en temps real</li>
                                <li>Sense límits d'ús amb models locals</li>
                            </ul>
                            <p class="mb-0"><strong>ID:</strong> <code>Continue.continue</code></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Extension 4: Tabnine -->
            <div class="card mb-3 shadow-sm">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-2 text-center">
                            <i class="bi bi-stars" style="font-size: 3rem; color: #9B59B6;"></i>
                        </div>
                        <div class="col-md-10">
                            <h5 class="card-title mb-2">Tabnine AI</h5>
                            <p class="mb-2"><span class="badge bg-secondary">Privadesa</span> <span class="badge bg-warning text-dark">Freemium</span></p>
                            <p class="card-text text-muted mb-2">
                                Assistant d'IA centrat en la privadesa amb autocompletat intel·ligent i 
                                models entrenats amb el teu codi.
                            </p>
                            <p class="mb-2"><strong>Funcions destacades:</strong></p>
                            <ul class="small">
                                <li>Autocompletat de línies completes</li>
                                <li>Aprèn del teu estil de codi</li>
                                <li>Funciona offline amb models locals</li>
                                <li>Respecta la privacitat del codi</li>
                                <li>Suport per més de 30 llenguatges</li>
                            </ul>
                            <p class="mb-0"><strong>ID:</strong> <code>TabNine.tabnine-vscode</code></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Com utilitzar ChatGPT -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🚀 Com Utilitzar ChatGPT Efectivament</h3>
            
            <ul class="nav nav-tabs" id="chatgptTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="prompts-tab" data-bs-toggle="tab" data-bs-target="#prompts" type="button">
                        Prompts Efectius
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="examples-tab" data-bs-toggle="tab" data-bs-target="#examples" type="button">
                        Exemples Pràctics
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="best-practices-tab" data-bs-toggle="tab" data-bs-target="#best-practices" type="button">
                        Bones Pràctiques
                    </button>
                </li>
            </ul>

            <div class="tab-content border border-top-0 p-4 bg-white" id="chatgptTabsContent">
                <!-- Prompts -->
                <div class="tab-pane fade show active" id="prompts" role="tabpanel">
                    <h5 class="mb-3">Estructura d'un Bon Prompt</h5>
                    
                    <div class="alert alert-info mb-4">
                        <strong>💡 Fórmula bàsica:</strong> Context + Tasca + Format desitjat + Restriccions
                    </div>

                    <div class="mb-4">
                        <h6 class="text-success">✅ Exemple BO:</h6>
                        <div class="bg-light p-3 rounded">
                            <p class="mb-2"><strong>Prompt:</strong></p>
                            <code class="text-dark">
                                "Actua com un expert en Laravel. Necessito crear una funció en PHP que 
                                validi formularis de registre amb les següents regles: email únic, 
                                contrasenya mínima de 8 caràcters amb majúscules i números. 
                                Retorna el codi amb gestió d'errors i comentaris explicatius."
                            </code>
                        </div>
                    </div>

                    <div class="mb-4">
                        <h6 class="text-danger">❌ Exemple DOLENT:</h6>
                        <div class="bg-light p-3 rounded">
                            <p class="mb-2"><strong>Prompt:</strong></p>
                            <code class="text-dark">"Fes-me una funció de validació"</code>
                            <p class="small text-muted mt-2 mb-0">
                                ⚠️ Massa genèric, falta context i detalls específics
                            </p>
                        </div>
                    </div>

                    <h6 class="mt-4">Elements Clau d'un Bon Prompt:</h6>
                    <ul>
                        <li><strong>Rol:</strong> "Actua com un expert en..."</li>
                        <li><strong>Context:</strong> Explica què estàs fent i per què</li>
                        <li><strong>Tasca específica:</strong> Sigues clar sobre el que necessites</li>
                        <li><strong>Format:</strong> Com vols la resposta (codi, explicació, pas a pas...)</li>
                        <li><strong>Restriccions:</strong> Límits, tecnologies específiques, etc.</li>
                    </ul>
                </div>

                <!-- Exemples -->
                <div class="tab-pane fade" id="examples" role="tabpanel">
                    <h5 class="mb-3">Exemples per Aquest Projecte Laravel</h5>
                    
                    <div class="accordion" id="examplesAccordion">
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#ex1">
                                    1. Crear una Migration
                                </button>
                            </h2>
                            <div id="ex1" class="accordion-collapse collapse show" data-bs-parent="#examplesAccordion">
                                <div class="accordion-body">
                                    <strong>Prompt:</strong>
                                    <div class="bg-light p-2 rounded mt-2 mb-2">
                                        <code>"Crea una migration de Laravel per afegir els camps 'telefon' (string 15 caràcters) 
                                        i 'data_naixement' (date nullable) a la taula wp_contabilidad_clientes. 
                                        Inclou també el mètode down per revertir els canvis."</code>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#ex2">
                                    2. Optimitzar una Query
                                </button>
                            </h2>
                            <div id="ex2" class="accordion-collapse collapse" data-bs-parent="#examplesAccordion">
                                <div class="accordion-body">
                                    <strong>Prompt:</strong>
                                    <div class="bg-light p-2 rounded mt-2 mb-2">
                                        <code>"Aquesta query Laravel té el problema N+1. Optimitza-la utilitzant eager loading: 
                                        [enganxa aquí el teu codi]. Explica els canvis que fas i per què milloren el rendiment."</code>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#ex3">
                                    3. Crear un Filament Resource
                                </button>
                            </h2>
                            <div id="ex3" class="accordion-collapse collapse" data-bs-parent="#examplesAccordion">
                                <div class="accordion-body">
                                    <strong>Prompt:</strong>
                                    <div class="bg-light p-2 rounded mt-2 mb-2">
                                        <code>"Crea un Filament Resource per al model Empleat amb aquests camps en el formulari: 
                                        nom (TextInput), cognoms (TextInput), email (unique), sou (Money). 
                                        A la taula mostra nom complet, email i sou. Afegeix un filtre per sou (mínim/màxim)."</code>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#ex4">
                                    4. Debugar un Error
                                </button>
                            </h2>
                            <div id="ex4" class="accordion-collapse collapse" data-bs-parent="#examplesAccordion">
                                <div class="accordion-body">
                                    <strong>Prompt:</strong>
                                    <div class="bg-light p-2 rounded mt-2 mb-2">
                                        <code>"Tinc aquest error en Laravel: [enganxa l'error]. Aquest és el codi relacionat: 
                                        [enganxa el codi]. Explica'm per què passa i dona'm la solució amb el codi corregit."</code>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Best Practices -->
                <div class="tab-pane fade" id="best-practices" role="tabpanel">
                    <h5 class="mb-3">💎 Bones Pràctiques</h5>
                    
                    <div class="row g-3">
                        <div class="col-md-6">
                            <div class="card border-success">
                                <div class="card-header bg-success text-white">
                                    <i class="bi bi-check-circle"></i> Fer
                                </div>
                                <div class="card-body">
                                    <ul class="mb-0">
                                        <li>Sigues específic i detallat</li>
                                        <li>Proporciona context del projecte</li>
                                        <li>Demana explicacions amb el codi</li>
                                        <li>Itera i refina les respostes</li>
                                        <li>Verifica sempre el codi generat</li>
                                        <li>Demana alternatives quan calgui</li>
                                        <li>Inclou versions de llibreries</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="card border-danger">
                                <div class="card-header bg-danger text-white">
                                    <i class="bi bi-x-circle"></i> Evitar
                                </div>
                                <div class="card-body">
                                    <ul class="mb-0">
                                        <li>Prompts massa genèrics</li>
                                        <li>Copiar codi sense entendre'l</li>
                                        <li>No revisar seguretat del codi</li>
                                        <li>Assumir que tot és correcte</li>
                                        <li>No testejar el codi generat</li>
                                        <li>Enviar dades sensibles</li>
                                        <li>Dependre 100% de la IA</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="alert alert-warning mt-4">
                        <strong>⚠️ Recordatori:</strong> ChatGPT és una eina d'ajuda, no un substitut del programador. 
                        Sempre revisa, comprèn i testa el codi abans d'utilitzar-lo en producció.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Comparativa -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">⚖️ ChatGPT vs GitHub Copilot</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>Característica</th>
                            <th>ChatGPT</th>
                            <th>GitHub Copilot</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Tipus</strong></td>
                            <td>Xat conversacional</td>
                            <td>Autocompletat en línia</td>
                        </tr>
                        <tr>
                            <td><strong>Integració VS Code</strong></td>
                            <td>Extensions de tercers</td>
                            <td>Nativa i oficial</td>
                        </tr>
                        <tr>
                            <td><strong>Millor per</strong></td>
                            <td>Explicacions, debugging, aprendre</td>
                            <td>Escriure codi ràpid, autocompletat</td>
                        </tr>
                        <tr>
                            <td><strong>Context</strong></td>
                            <td>Conversa completa</td>
                            <td>Fitxer actual + fitxers oberts</td>
                        </tr>
                        <tr>
                            <td><strong>Cost</strong></td>
                            <td>Gratuït/Plus ($20/mes)</td>
                            <td>$10/mes (Individual)</td>
                        </tr>
                        <tr>
                            <td><strong>Interacció</strong></td>
                            <td>Fas preguntes explícites</td>
                            <td>Suggeriments automàtics</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="alert alert-info">
                <i class="bi bi-lightbulb"></i> <strong>Consell Pro:</strong> 
                Utilitza els dos! ChatGPT per planificar i entendre, Copilot per implementar ràpidament.
            </div>
        </div>
    </div>

    <!-- Recursos -->
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="card bg-light border-0">
                <div class="card-body p-4">
                    <h5 class="card-title">📚 Recursos Útils</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <h6>Aprendre més:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://chat.openai.com" target="_blank" class="text-decoration-none">
                                        ChatGPT Web (Oficial)
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://platform.openai.com/docs" target="_blank" class="text-decoration-none">
                                        Documentació API OpenAI
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-link-45deg text-primary"></i>
                                    <a href="https://www.promptingguide.ai/" target="_blank" class="text-decoration-none">
                                        Guia de Prompt Engineering
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h6>Extensions:</h6>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2">
                                    <i class="bi bi-box text-success"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=genieai.chatgpt-vscode" target="_blank" class="text-decoration-none">
                                        ChatGPT - Genie AI
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-box text-success"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=DanielSanMedium.dscodegpt" target="_blank" class="text-decoration-none">
                                        CodeGPT
                                    </a>
                                </li>
                                <li>
                                    <i class="bi bi-box text-success"></i>
                                    <a href="https://marketplace.visualstudio.com/items?itemName=Continue.continue" target="_blank" class="text-decoration-none">
                                        Continue - AI Assistant
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
