@extends('layouts.app')

@section('title', 'Guia de GitHub Copilot')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">GitHub Copilot a Visual Studio Code</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li class="current">Copilot</li>
                    </ol>
                </nav>
            </div>
            <div class="col-12 col-md-6 text-center">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/jXp5D5ZnxGM" 
                            title="GitHub Copilot Demo" 
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
                        <i class="bi bi-robot" style="font-size: 4rem; color: #7CB9E8;"></i>
                        <h2 class="mt-3">Què és GitHub Copilot?</h2>
                    </div>
                    <p class="lead text-center">
                        GitHub Copilot és el teu assistent de programació amb IA que t'ajuda a escriure codi més ràpid 
                        i amb més confiança. Funciona directament dins de Visual Studio Code.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Característiques principals -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4 text-center">✨ Característiques Principals</h3>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-code-slash text-primary" style="font-size: 2.5rem;"></i>
                            <h5 class="mt-3">Autocompletat Intel·ligent</h5>
                            <p class="text-muted">Suggereix línies de codi completes mentre escrius</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-chat-dots text-success" style="font-size: 2.5rem;"></i>
                            <h5 class="mt-3">Xat Integrat</h5>
                            <p class="text-muted">Fes preguntes i obté respostes contextuals</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-file-earmark-code text-info" style="font-size: 2.5rem;"></i>
                            <h5 class="mt-3">Generació de Codi</h5>
                            <p class="text-muted">Crea funcions completes des de comentaris</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Com utilitzar-lo -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">🚀 Com Utilitzar GitHub Copilot</h3>
            
            <!-- Tab Navigation -->
            <ul class="nav nav-tabs" id="copilotTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="basics-tab" data-bs-toggle="tab" data-bs-target="#basics" type="button">
                        Bàsic
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="chat-tab" data-bs-toggle="tab" data-bs-target="#chat" type="button">
                        Xat
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="shortcuts-tab" data-bs-toggle="tab" data-bs-target="#shortcuts" type="button">
                        Dreceres
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="tips-tab" data-bs-toggle="tab" data-bs-target="#tips" type="button">
                        Consells
                    </button>
                </li>
            </ul>

            <!-- Tab Content -->
            <div class="tab-content border border-top-0 p-4 bg-white" id="copilotTabsContent">
                <!-- Bàsic -->
                <div class="tab-pane fade show active" id="basics" role="tabpanel">
                    <h5 class="mb-3">Funcions Bàsiques</h5>
                    
                    <div class="mb-4">
                        <h6><i class="bi bi-1-circle-fill text-primary"></i> Autocompletat en línia</h6>
                        <p>Mentre escrius codi, Copilot suggereix la continuació:</p>
                        <div class="bg-light p-3 rounded">
                            <code class="text-dark">
// Escriu un comentari<br>
// Funció per calcular el total amb IVA<br>
<span class="text-muted">// Copilot suggerirà automàticament la funció</span>
                            </code>
                        </div>
                        <p class="mt-2"><kbd>Tab</kbd> per acceptar · <kbd>Esc</kbd> per rebutjar</p>
                    </div>

                    <div class="mb-4">
                        <h6><i class="bi bi-2-circle-fill text-primary"></i> Múltiples suggeriments</h6>
                        <p>Veure alternatives al suggeriment actual:</p>
                        <ul>
                            <li><kbd>Alt</kbd> + <kbd>]</kbd> - Següent suggeriment</li>
                            <li><kbd>Alt</kbd> + <kbd>[</kbd> - Suggeriment anterior</li>
                            <li><kbd>Ctrl</kbd> + <kbd>Enter</kbd> - Veure tots els suggeriments</li>
                        </ul>
                    </div>

                    <div class="alert alert-info">
                        <i class="bi bi-lightbulb"></i> <strong>Consell:</strong> Els comentaris descriptius ajuden a Copilot a generar millor codi.
                    </div>
                </div>

                <!-- Xat -->
                <div class="tab-pane fade" id="chat" role="tabpanel">
                    <h5 class="mb-3">GitHub Copilot Chat</h5>
                    
                    <div class="mb-4">
                        <h6><i class="bi bi-chat-square-text-fill text-success"></i> Obrir el xat</h6>
                        <ul>
                            <li><kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>I</kbd> - Obre el panell de xat</li>
                            <li>Icona de xat a la barra lateral esquerra</li>
                        </ul>
                    </div>

                    <div class="mb-4">
                        <h6><i class="bi bi-question-circle-fill text-warning"></i> Exemples de preguntes</h6>
                        <div class="bg-light p-3 rounded">
                            <p class="mb-2"><strong>Explicar codi:</strong></p>
                            <code>"Explica'm què fa aquesta funció"</code>
                            
                            <p class="mb-2 mt-3"><strong>Generar codi:</strong></p>
                            <code>"Crea una funció per validar emails en PHP"</code>
                            
                            <p class="mb-2 mt-3"><strong>Resoldre errors:</strong></p>
                            <code>"Com puc solucionar aquest error de SQL?"</code>
                            
                            <p class="mb-2 mt-3"><strong>Refactoritzar:</strong></p>
                            <code>"Millora aquesta funció per fer-la més eficient"</code>
                        </div>
                    </div>

                    <div class="mb-4">
                        <h6><i class="bi bi-slash-circle text-info"></i> Comandes especials</h6>
                        <table class="table table-sm">
                            <tbody>
                                <tr>
                                    <td><code>/explain</code></td>
                                    <td>Explica el codi seleccionat</td>
                                </tr>
                                <tr>
                                    <td><code>/fix</code></td>
                                    <td>Proposa solucions per errors</td>
                                </tr>
                                <tr>
                                    <td><code>/tests</code></td>
                                    <td>Genera tests unitaris</td>
                                </tr>
                                <tr>
                                    <td><code>/doc</code></td>
                                    <td>Afegeix documentació al codi</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Dreceres -->
                <div class="tab-pane fade" id="shortcuts" role="tabpanel">
                    <h5 class="mb-3">Dreceres de Teclat</h5>
                    
                    <table class="table table-hover">
                        <thead class="table-light">
                            <tr>
                                <th>Acció</th>
                                <th>Windows/Linux</th>
                                <th>Mac</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Acceptar suggeriment</td>
                                <td><kbd>Tab</kbd></td>
                                <td><kbd>Tab</kbd></td>
                            </tr>
                            <tr>
                                <td>Rebutjar suggeriment</td>
                                <td><kbd>Esc</kbd></td>
                                <td><kbd>Esc</kbd></td>
                            </tr>
                            <tr>
                                <td>Veure suggeriments alternatius</td>
                                <td><kbd>Ctrl</kbd> + <kbd>Enter</kbd></td>
                                <td><kbd>Cmd</kbd> + <kbd>Enter</kbd></td>
                            </tr>
                            <tr>
                                <td>Següent suggeriment</td>
                                <td><kbd>Alt</kbd> + <kbd>]</kbd></td>
                                <td><kbd>Option</kbd> + <kbd>]</kbd></td>
                            </tr>
                            <tr>
                                <td>Suggeriment anterior</td>
                                <td><kbd>Alt</kbd> + <kbd>[</kbd></td>
                                <td><kbd>Option</kbd> + <kbd>[</kbd></td>
                            </tr>
                            <tr>
                                <td>Obrir xat</td>
                                <td><kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>I</kbd></td>
                                <td><kbd>Cmd</kbd> + <kbd>Shift</kbd> + <kbd>I</kbd></td>
                            </tr>
                            <tr>
                                <td>Xat en línia</td>
                                <td><kbd>Ctrl</kbd> + <kbd>I</kbd></td>
                                <td><kbd>Cmd</kbd> + <kbd>I</kbd></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Consells -->
                <div class="tab-pane fade" id="tips" role="tabpanel">
                    <h5 class="mb-3">💡 Consells Professionals</h5>
                    
                    <div class="accordion" id="tipsAccordion">
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#tip1">
                                    Escriu comentaris clars
                                </button>
                            </h2>
                            <div id="tip1" class="accordion-collapse collapse show" data-bs-parent="#tipsAccordion">
                                <div class="accordion-body">
                                    Copilot funciona millor quan els comentaris són específics i descriptius:
                                    <div class="bg-light p-3 rounded mt-2">
                                        <code class="text-success">// ✅ BO: Funció per calcular el preu amb IVA del 21%</code><br>
                                        <code class="text-danger">// ❌ DOLENT: Calcula preu</code>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#tip2">
                                    Proporciona context
                                </button>
                            </h2>
                            <div id="tip2" class="accordion-collapse collapse" data-bs-parent="#tipsAccordion">
                                <div class="accordion-body">
                                    Selecciona codi relacionat abans de fer preguntes al xat. Copilot utilitzarà aquest context per donar millors respostes.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#tip3">
                                    Revisa sempre el codi generat
                                </button>
                            </h2>
                            <div id="tip3" class="accordion-collapse collapse" data-bs-parent="#tipsAccordion">
                                <div class="accordion-body">
                                    Copilot és una eina d'ajuda, no un substitut del programador. Sempre revisa i comprèn el codi que genera abans d'utilitzar-lo en producció.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#tip4">
                                    Utilitza exemples
                                </button>
                            </h2>
                            <div id="tip4" class="accordion-collapse collapse" data-bs-parent="#tipsAccordion">
                                <div class="accordion-body">
                                    Si vols un estil concret de codi, escriu un exemple primer. Copilot seguirà el patró establert.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#tip5">
                                    Experimenta amb les preguntes
                                </button>
                            </h2>
                            <div id="tip5" class="accordion-collapse collapse" data-bs-parent="#tipsAccordion">
                                <div class="accordion-body">
                                    Si no obtens la resposta desitjada, reformula la pregunta o proporciona més detalls. Copilot millora amb iteracions.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Casos d'ús comuns -->
    <div class="row mb-5">
        <div class="col-lg-10 offset-lg-1">
            <h3 class="mb-4">📋 Casos d'Ús Comuns en Aquest Projecte</h3>
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card border-start border-primary border-4">
                        <div class="card-body">
                            <h6 class="card-title">Generar migrations de Laravel</h6>
                            <p class="card-text small text-muted">
                                "Crea una migration per afegir el camp 'observacions' a la taula ventas"
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card border-start border-success border-4">
                        <div class="card-body">
                            <h6 class="card-title">Crear recursos de Filament</h6>
                            <p class="card-text small text-muted">
                                "Com puc afegir un filtre per dates al meu FilamentResource?"
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card border-start border-info border-4">
                        <div class="card-body">
                            <h6 class="card-title">Optimitzar consultes SQL</h6>
                            <p class="card-text small text-muted">
                                "Millora aquesta query per fer-la més eficient amb eager loading"
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card border-start border-warning border-4">
                        <div class="card-body">
                            <h6 class="card-title">Generar vistes Blade</h6>
                            <p class="card-text small text-muted">
                                "Crea una taula Bootstrap per mostrar els productes amb paginació"
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Recursos addicionals -->
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="card bg-light border-0">
                <div class="card-body p-4">
                    <h5 class="card-title">📚 Recursos Addicionals</h5>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2">
                            <i class="bi bi-link-45deg text-primary"></i>
                            <a href="https://docs.github.com/copilot" target="_blank" class="text-decoration-none">
                                Documentació oficial de GitHub Copilot
                            </a>
                        </li>
                        <li class="mb-2">
                            <i class="bi bi-link-45deg text-primary"></i>
                            <a href="https://code.visualstudio.com/docs/copilot/overview" target="_blank" class="text-decoration-none">
                                Guia de Copilot a VS Code
                            </a>
                        </li>
                        <li>
                            <i class="bi bi-link-45deg text-primary"></i>
                            <a href="https://github.com/features/copilot" target="_blank" class="text-decoration-none">
                                GitHub Copilot - Característiques
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
