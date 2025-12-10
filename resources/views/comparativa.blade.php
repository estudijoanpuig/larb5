@extends('layouts.app')

@section('title', 'Comparativa d\'Assistents IA')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12">
                <h1 class="mb-2 text-center">Comparativa d'Assistents IA per Programadors</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li class="current">Comparativa IA</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title -->

<div class="container my-5">
    <!-- Introducció -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <div class="card shadow-sm border-0">
                <div class="card-body p-4">
                    <div class="text-center mb-4">
                        <i class="bi bi-stars" style="font-size: 4rem; color: #0969DA;"></i>
                        <h2 class="mt-3">La Meva Elecció: GitHub Copilot + Claude Sonnet 4.5</h2>
                    </div>
                    <p class="lead text-center mb-4">
                        Després de provar tots els principals assistents IA del mercat, la meva combinació preferida 
                        és <strong>GitHub Copilot</strong> per autocompletat i <strong>Claude Sonnet 4.5</strong> 
                        com a agent conversacional dins de VS Code.
                    </p>
                    <div class="alert alert-success">
                        <h5 class="mb-3"><i class="bi bi-trophy-fill"></i> Per què aquesta combinació?</h5>
                        <ul class="mb-0">
                            <li><strong>GitHub Copilot</strong> - Millor autocompletat inline integrat directament amb VS Code</li>
                            <li><strong>Claude Sonnet 4.5</strong> - Intel·ligència superior per tasques complexes de codi</li>
                            <li><strong>Integració perfecta</strong> - GitHub Copilot natiu + extensió Cline per Claude</li>
                            <li><strong>Context complet</strong> - Accés a repositori, historial i documentació</li>
                            <li><strong>Productivitat màxima</strong> - Lo millor de cada món en un sol entorn</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Comparativa General -->
    <div class="row mb-5">
        <div class="col-lg-12">
            <h3 class="mb-4 text-center">📊 Comparativa Completa d'Assistents IA</h3>
            <div class="table-responsive">
                <table class="table table-hover table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>Característica</th>
                            <th class="table-success">GitHub Copilot ⭐</th>
                            <th class="table-warning">Claude 3.5 Sonnet ⭐</th>
                            <th>ChatGPT (GPT-4o)</th>
                            <th>Gemini 2.0 Flash</th>
                            <th>DeepSeek V3</th>
                            <th>Grok-3</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Autocompletat Inline</strong></td>
                            <td class="table-success"><span class="badge bg-success">Natiu i Excel·lent</span></td>
                            <td>Via Continue</td>
                            <td>Via Continue</td>
                            <td>Via Continue</td>
                            <td>Via Continue/Twinny</td>
                            <td>Via Continue</td>
                        </tr>
                        <tr>
                            <td><strong>Integració VS Code</strong></td>
                            <td class="table-success"><span class="badge bg-success">Oficial</span></td>
                            <td class="table-warning"><span class="badge bg-warning text-dark">Cline (Excel·lent)</span></td>
                            <td>Continue</td>
                            <td>Continue</td>
                            <td>Continue</td>
                            <td>Continue</td>
                        </tr>
                        <tr>
                            <td><strong>Qualitat Codi (HumanEval)</strong></td>
                            <td>89%</td>
                            <td class="table-warning"><span class="badge bg-warning text-dark">92%</span></td>
                            <td>90.2%</td>
                            <td>84%</td>
                            <td>89%</td>
                            <td>88%</td>
                        </tr>
                        <tr>
                            <td><strong>Context</strong></td>
                            <td class="table-success">Repositori complet</td>
                            <td class="table-warning">200K tokens</td>
                            <td>128K tokens</td>
                            <td>2M tokens</td>
                            <td>128K tokens</td>
                            <td>128K tokens</td>
                        </tr>
                        <tr>
                            <td><strong>Agent Autònom</strong></td>
                            <td class="table-success"><span class="badge bg-success">Copilot Workspace</span></td>
                            <td class="table-warning"><span class="badge bg-warning text-dark">Cline (Millor)</span></td>
                            <td>ChatGPT Agent</td>
                            <td>No natiu</td>
                            <td>No natiu</td>
                            <td>Experimental</td>
                        </tr>
                        <tr>
                            <td><strong>Preu Mensual</strong></td>
                            <td class="table-success">$10 (Individual)<br>$19 (Pro)</td>
                            <td>$20 (Pro) + API</td>
                            <td>$20 (Plus)</td>
                            <td>Gratuït/$20 (Advanced)</td>
                            <td>Gratuït + API</td>
                            <td>€9.50 (Premium)</td>
                        </tr>
                        <tr>
                            <td><strong>Cost API (1M tokens)</strong></td>
                            <td>-</td>
                            <td class="table-warning">$3 / $15</td>
                            <td>$2.50 / $10</td>
                            <td>$1.25 / $5</td>
                            <td>$0.14 / $0.28</td>
                            <td>$2 / $10</td>
                        </tr>
                        <tr>
                            <td><strong>Raonament Complex</strong></td>
                            <td>Bo</td>
                            <td class="table-warning"><span class="badge bg-warning text-dark">Excel·lent</span></td>
                            <td>Molt bo</td>
                            <td>Bo</td>
                            <td>Molt bo (DeepSeek R1)</td>
                            <td>Bo</td>
                        </tr>
                        <tr>
                            <td><strong>Web Search</strong></td>
                            <td>Sí (Bing)</td>
                            <td>No</td>
                            <td>Sí</td>
                            <td>Sí (Google Search)</td>
                            <td>No</td>
                            <td>Sí (𝕏 data)</td>
                        </tr>
                        <tr>
                            <td><strong>Multimodal (Visió)</strong></td>
                            <td>Sí</td>
                            <td class="table-warning">Sí (Excel·lent)</td>
                            <td>Sí</td>
                            <td>Sí (Natiu)</td>
                            <td>No</td>
                            <td>Sí</td>
                        </tr>
                        <tr>
                            <td><strong>Privadesa/Seguretat</strong></td>
                            <td class="table-success"><span class="badge bg-success">Alta (GitHub)</span></td>
                            <td class="table-warning"><span class="badge bg-warning text-dark">Molt alta</span></td>
                            <td>Mitjana</td>
                            <td>Mitjana</td>
                            <td>Alta (Open Source)</td>
                            <td>Mitjana</td>
                        </tr>
                        <tr>
                            <td><strong>Comunitat/Suport</strong></td>
                            <td class="table-success"><span class="badge bg-success">Enorme</span></td>
                            <td>Creixent</td>
                            <td>Molt gran</td>
                            <td>Gran</td>
                            <td>Creixent</td>
                            <td>Mitjana</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- La Meva Configuració Recomanada -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <div class="card shadow border-primary" style="border-width: 3px;">
                <div class="card-header bg-primary text-white">
                    <h3 class="mb-0"><i class="bi bi-gear-fill"></i> La Meva Configuració Recomanada</h3>
                </div>
                <div class="card-body">
                    <h5 class="mb-3">🛠️ Setup Perfecte per Programació</h5>
                    
                    <div class="row mb-4">
                        <div class="col-md-6">
                            <div class="card h-100 border-success">
                                <div class="card-body">
                                    <h6 class="card-title"><i class="bi bi-github"></i> GitHub Copilot</h6>
                                    <p class="small"><strong>Subscripció:</strong> GitHub Copilot Pro ($19/mes)</p>
                                    <p class="small mb-2"><strong>Ús:</strong></p>
                                    <ul class="small mb-0">
                                        <li>Autocompletat inline mentre escrius codi</li>
                                        <li>Sugerències contextuals del repositori</li>
                                        <li>GitHub Copilot Chat per preguntes ràpides</li>
                                        <li>Generació de tests automàtics</li>
                                        <li>Documentació de funcions</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="card h-100 border-warning">
                                <div class="card-body">
                                    <h6 class="card-title"><i class="bi bi-robot"></i> Claude Sonnet 4.5</h6>
                                    <p class="small"><strong>Accés:</strong> API d'Anthropic ($3-15/1M tokens)</p>
                                    <p class="small mb-2"><strong>Ús:</strong></p>
                                    <ul class="small mb-0">
                                        <li>Agent autònom amb extensió <strong>Cline</strong></li>
                                        <li>Refactorització de codi complex</li>
                                        <li>Arquitectura de sistemes</li>
                                        <li>Debugging avançat</li>
                                        <li>Tasques que requereixen raonament profund</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="alert alert-info">
                        <h6><i class="bi bi-lightbulb-fill"></i> Com ho utilitzo en el meu dia a dia:</h6>
                        <ol class="mb-0">
                            <li><strong>GitHub Copilot</strong> sempre actiu per autocompletat i sugerències ràpides</li>
                            <li><strong>Cline + Claude</strong> per tasques complexes: "Refactoritza aquesta classe seguint SOLID"</li>
                            <li><strong>Copilot Chat</strong> per preguntes ràpides sobre el codi actual</li>
                            <li><strong>Claude via Cline</strong> per implementar features completes de manera autònoma</li>
                        </ol>
                    </div>

                    <h6 class="mt-4 mb-3">📦 Extensions VS Code Necessàries:</h6>
                    <div class="bg-light p-3 rounded">
<pre class="mb-0" style="background-color: #1e1e1e; color: #ffffff; padding: 15px; border-radius: 5px;"><code># Extensions principals
1. GitHub Copilot (github.copilot)
2. GitHub Copilot Chat (github.copilot-chat)
3. Cline (saoudrizwan.claude-dev)

# Extensions opcionals complementàries
4. Continue - AI Code Assistant (continue.continue)
5. Error Lens (usernamehw.errorlens)
6. GitLens (eamodio.gitlens)</code></pre>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Per què NO els altres? -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🤔 Per què NO utilitzo només els altres?</h3>
            
            <div class="accordion" id="whyNotAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#whyNotChatGPT">
                            Per què NO només ChatGPT?
                        </button>
                    </h2>
                    <div id="whyNotChatGPT" class="accordion-collapse collapse show" data-bs-parent="#whyNotAccordion">
                        <div class="accordion-body">
                            <p><strong>Limitacions de ChatGPT com a eina principal:</strong></p>
                            <ul>
                                <li>❌ <strong>Autocompletat inferior</strong> - No té integració nativa tan bona com Copilot</li>
                                <li>❌ <strong>Context limitat del repo</strong> - No pot veure tot el projecte com Copilot</li>
                                <li>❌ <strong>Qualitat codi</strong> - Claude supera GPT-4 en HumanEval (92% vs 90.2%)</li>
                                <li>❌ <strong>Preu API</strong> - Més car que DeepSeek/Gemini per resultats similars</li>
                                <li>✅ <strong>Bon ús</strong> - Excel·lent per consultes generals i web search</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#whyNotGemini">
                            Per què NO només Gemini?
                        </button>
                    </h2>
                    <div id="whyNotGemini" class="accordion-collapse collapse" data-bs-parent="#whyNotAccordion">
                        <div class="accordion-body">
                            <p><strong>Limitacions de Gemini:</strong></p>
                            <ul>
                                <li>❌ <strong>Qualitat codi inferior</strong> - 84% HumanEval vs 92% de Claude</li>
                                <li>❌ <strong>Comunitat més petita</strong> - Menys extensions i recursos</li>
                                <li>❌ <strong>Agent autònom limitat</strong> - No té equivalent a Cline</li>
                                <li>✅ <strong>Avantatge</strong> - 2M tokens de context per documents grans</li>
                                <li>✅ <strong>Bon ús</strong> - Anàlisi de documentació extensa, integració Google Workspace</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#whyNotDeepSeek">
                            Per què NO només DeepSeek?
                        </button>
                    </h2>
                    <div id="whyNotDeepSeek" class="accordion-collapse collapse" data-bs-parent="#whyNotAccordion">
                        <div class="accordion-body">
                            <p><strong>Limitacions de DeepSeek:</strong></p>
                            <ul>
                                <li>❌ <strong>Sense multimodal</strong> - No pot processar imatges</li>
                                <li>❌ <strong>Comunitat incipient</strong> - Encara creixent, menys recursos</li>
                                <li>❌ <strong>Qualitat variable</strong> - Segons la tasca, pot ser inconsistent</li>
                                <li>✅ <strong>Avantatge</strong> - Preu imbatible ($0.14/1M tokens)</li>
                                <li>✅ <strong>Bon ús</strong> - Projectes open-source, experimentació, local amb Ollama</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#whyNotGrok">
                            Per què NO només Grok?
                        </button>
                    </h2>
                    <div id="whyNotGrok" class="accordion-collapse collapse" data-bs-parent="#whyNotAccordion">
                        <div class="accordion-body">
                            <p><strong>Limitacions de Grok:</strong></p>
                            <ul>
                                <li>❌ <strong>Menys madur</strong> - Encara en desenvolupament actiu</li>
                                <li>❌ <strong>Integració limitada</strong> - No té extensions dedicades tan bones</li>
                                <li>❌ <strong>Comunitat petita</strong> - Menys recursos i exemples</li>
                                <li>✅ <strong>Avantatge</strong> - Accés a dades de 𝕏 en temps real</li>
                                <li>✅ <strong>Bon ús</strong> - Anàlisi de tendències, sentiment social, informació actualitzada</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Casos d'ús específics -->
    <div class="row mb-5">
        <div class="col-lg-12">
            <h3 class="mb-4 text-center">🎯 Quin Utilitzar per Cada Tasca?</h3>
            <div class="row g-3">
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-success">
                        <div class="card-header bg-success text-white">
                            <h6 class="mb-0">Autocompletat mentre escrius</h6>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-success">1r</span> <strong>GitHub Copilot</strong></p>
                            <p class="small text-muted mb-2">Natiu, ràpid, contextual</p>
                            <p class="mb-2"><span class="badge bg-secondary">2n</span> Continue (qualsevol model)</p>
                            <p class="small text-muted mb-0">Alternativa si no tens Copilot</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-warning">
                        <div class="card-header bg-warning text-dark">
                            <h6 class="mb-0">Refactorització complexa</h6>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-warning text-dark">1r</span> <strong>Claude Sonnet (Cline)</strong></p>
                            <p class="small text-muted mb-2">Millor raonament, agent autònom</p>
                            <p class="mb-2"><span class="badge bg-secondary">2n</span> ChatGPT o Copilot Chat</p>
                            <p class="small text-muted mb-0">Alternativa sòlida</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-primary">
                        <div class="card-header bg-primary text-white">
                            <h6 class="mb-0">Crear feature nova sencera</h6>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-primary">1r</span> <strong>Cline + Claude</strong></p>
                            <p class="small text-muted mb-2">Agent que crea fitxers, edita, executa</p>
                            <p class="mb-2"><span class="badge bg-secondary">2n</span> Copilot Workspace</p>
                            <p class="small text-muted mb-0">Alternativa de GitHub</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-info">
                        <div class="card-header bg-info text-white">
                            <h6 class="mb-0">Debugging d'errors complexos</h6>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-info">1r</span> <strong>Claude Sonnet</strong></p>
                            <p class="small text-muted mb-2">Excel·lent raonament lògic</p>
                            <p class="mb-2"><span class="badge bg-secondary">2n</span> GitHub Copilot Chat</p>
                            <p class="small text-muted mb-0">Ràpid i amb context del repo</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-danger">
                        <div class="card-header bg-danger text-white">
                            <h6 class="mb-0">Anàlisi de documents grans</h6>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-danger">1r</span> <strong>Gemini 1.5 Pro</strong></p>
                            <p class="small text-muted mb-2">2M tokens de context</p>
                            <p class="mb-2"><span class="badge bg-secondary">2n</span> Claude Sonnet</p>
                            <p class="small text-muted mb-0">200K tokens</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-dark">
                        <div class="card-header bg-dark text-white">
                            <h6 class="mb-0">Cerca web + informació recent</h6>
                        </div>
                        <div class="card-body">
                            <p class="mb-2"><span class="badge bg-dark">1r</span> <strong>ChatGPT o Gemini</strong></p>
                            <p class="small text-muted mb-2">Integració web search nativa</p>
                            <p class="mb-2"><span class="badge bg-secondary">2n</span> Grok</p>
                            <p class="small text-muted mb-0">Dades de 𝕏 en temps real</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Conclusió Final -->
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="card shadow-lg border-0" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                <div class="card-body p-5 text-white">
                    <h3 class="text-center mb-4"><i class="bi bi-star-fill"></i> La Meva Recomanació Final</h3>
                    
                    <div class="alert alert-light mb-4">
                        <h5 class="text-dark mb-3">💎 Setup Òptim per Màxima Productivitat:</h5>
                        <ol class="text-dark mb-0">
                            <li><strong>GitHub Copilot Pro</strong> ($19/mes) - Autocompletat i sugerències contextuals</li>
                            <li><strong>Claude API</strong> (~$10-20/mes) - Agent autònom via Cline per tasques complexes</li>
                            <li><strong>Total: ~$30-40/mes</strong> - Inversió que s'amortitza el primer dia</li>
                        </ol>
                    </div>

                    <h5 class="mb-3">🎯 Per què aquesta combinació és imbatible:</h5>
                    <ul class="mb-4">
                        <li>✅ <strong>Copilot</strong> - Millor integració nativa VS Code del mercat</li>
                        <li>✅ <strong>Claude</strong> - Millor qualitat de codi (92% HumanEval)</li>
                        <li>✅ <strong>Cline</strong> - Millor agent autònom per implementar features</li>
                        <li>✅ <strong>Complementarietat</strong> - Copilot per ràpid, Claude per profund</li>
                        <li>✅ <strong>ROI brutal</strong> - El temps que estalvies val molt més que $40/mes</li>
                    </ul>

                    <p class="mb-0 text-center">
                        <strong>Amb aquesta configuració he multiplicat x3 la meva productivitat.</strong><br>
                        És la inversió més rendible que he fet com a programador.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
