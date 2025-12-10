@extends('layouts.app')

@section('content')

<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <h1>NotebookLM de Google</h1>
        <nav class="breadcrumbs">
            <ol>
                <li><a href="/">Inici</a></li>
                <li><a href="#guies">Guies IA</a></li>
                <li class="current">NotebookLM</li>
            </ol>
        </nav>
    </div>
</div><!-- End Page Title -->

<section id="notebooklm" class="notebooklm section">
    <div class="container">

        <!-- Hero Introduction -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <div class="card border-0 shadow-lg" style="background: linear-gradient(135deg, #4285F4 0%, #34A853 100%);">
                    <div class="card-body p-5 text-white">
                        <div class="row align-items-center">
                            <div class="col-lg-8">
                                <h2 class="mb-3">📚 NotebookLM - El teu Assistent de Recerca Personal</h2>
                                <p class="lead mb-4">
                                    NotebookLM és una eina d'intel·ligència artificial de Google que transforma com treballes amb documents. 
                                    Puja els teus PDFs, apunts o enllaços web i NotebookLM els analitza per crear resums, 
                                    respondre preguntes i fins i tot generar podcasts!
                                </p>
                                <div class="d-flex gap-3 flex-wrap">
                                    <a href="https://notebooklm.google.com" target="_blank" class="btn btn-light btn-lg">
                                        <i class="bi bi-box-arrow-up-right me-2"></i>Accedir a NotebookLM
                                    </a>
                                    <span class="badge bg-white text-primary fs-6 py-2 px-3">
                                        <i class="bi bi-check-circle me-2"></i>100% Gratuït
                                    </span>
                                </div>
                            </div>
                            <div class="col-lg-4 text-center">
                                <i class="bi bi-journals" style="font-size: 8rem; opacity: 0.3;"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Què és NotebookLM -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🤔 Què és NotebookLM?</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <p class="lead mb-4">
                            NotebookLM és com tenir un assistent de recerca que ha llegit tots els teus documents. 
                            A diferència de ChatGPT o Claude que treballen amb coneixement general, NotebookLM 
                            <strong>només treballa amb els documents que tu li dones</strong>.
                        </p>
                        
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-check-circle-fill text-success me-3 fs-4"></i>
                                    <div>
                                        <h5>Centrat en les Teves Fonts</h5>
                                        <p class="text-muted">Només respon basant-se en els documents que puges</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-shield-check text-success me-3 fs-4"></i>
                                    <div>
                                        <h5>Privat i Segur</h5>
                                        <p class="text-muted">Els teus documents no s'usen per entrenar IA</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-link-45deg text-success me-3 fs-4"></i>
                                    <div>
                                        <h5>Cita les Fonts</h5>
                                        <p class="text-muted">Cada resposta inclou referències al document original</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex align-items-start">
                                    <i class="bi bi-mic-fill text-success me-3 fs-4"></i>
                                    <div>
                                        <h5>Genera Podcasts</h5>
                                        <p class="text-muted">Converteix els teus documents en audio conversacional</p>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                        <h4 class="mb-0"><span class="badge bg-white text-primary me-3">1</span>Accedir a NotebookLM</h4>
                    </div>
                    <div class="card-body p-4">
                        <ol class="mb-0">
                            <li class="mb-2">Ves a <a href="https://notebooklm.google.com" target="_blank"><strong>notebooklm.google.com</strong></a></li>
                            <li class="mb-2">Inicia sessió amb el teu compte de Google</li>
                            <li class="mb-2">Clic a <strong>"+ New notebook"</strong> per començar</li>
                        </ol>
                        <div class="alert alert-info mt-3">
                            <i class="bi bi-info-circle me-2"></i><strong>Nota:</strong> És 100% gratuït, no cal targeta de crèdit
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 2 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-success text-white">
                        <h4 class="mb-0"><span class="badge bg-white text-success me-3">2</span>Pujar els Teus Documents</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="mb-3">NotebookLM accepta diversos tipus de fonts:</p>
                        
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <h5><i class="bi bi-file-pdf text-danger me-2"></i>PDF</h5>
                                        <p class="small mb-0">Llibres, articles, manuals, apunts...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <h5><i class="bi bi-file-text text-primary me-2"></i>Documents de Text</h5>
                                        <p class="small mb-0">Google Docs, Word, TXT...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <h5><i class="bi bi-link-45deg text-success me-2"></i>URLs</h5>
                                        <p class="small mb-0">Pàgines web, articles online...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <h5><i class="bi bi-youtube text-danger me-2"></i>Videos de YouTube</h5>
                                        <p class="small mb-0">Enganxa l'enllaç del vídeo</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h6>Com pujar:</h6>
                            <ol>
                                <li>Clic a <strong>"+ Add source"</strong></li>
                                <li>Selecciona el tipus de font</li>
                                <li>Puja el fitxer o enganxa l'enllaç</li>
                                <li>Espera que NotebookLM processi el document (uns segons)</li>
                            </ol>
                        </div>

                        <div class="alert alert-warning mt-3">
                            <i class="bi bi-exclamation-triangle me-2"></i><strong>Límit:</strong> Fins a 50 fonts per notebook, màxim 500.000 paraules totals
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 3 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-warning text-dark">
                        <h4 class="mb-0"><span class="badge bg-dark text-warning me-3">3</span>Fer Preguntes</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="mb-3">Ara pots fer preguntes sobre els teus documents!</p>
                        
                        <h6>Exemples de preguntes:</h6>
                        <div class="bg-light p-3 rounded mb-3">
                            <ul class="mb-0">
                                <li class="mb-2"><strong>"Fes-me un resum dels punts principals"</strong></li>
                                <li class="mb-2"><strong>"Quines són les conclusions d'aquest estudi?"</strong></li>
                                <li class="mb-2"><strong>"Compara les idees del document 1 amb el document 2"</strong></li>
                                <li class="mb-2"><strong>"Extreu les dades més importants en forma de llista"</strong></li>
                                <li class="mb-2"><strong>"Quines són les dates clau mencionades?"</strong></li>
                            </ul>
                        </div>

                        <div class="alert alert-success">
                            <i class="bi bi-lightbulb me-2"></i><strong>Tip:</strong> Les respostes inclouran <strong>cites</strong> amb el número de pàgina o secció del document
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 4 -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-info text-white">
                        <h4 class="mb-0"><span class="badge bg-white text-info me-3">4</span>Generar Contingut</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="mb-3">NotebookLM pot crear automàticament:</p>

                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-file-earmark-text fs-1 text-primary mb-2"></i>
                                    <h6>Resum</h6>
                                    <p class="small text-muted">Resum automàtic dels documents</p>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-list-ul fs-1 text-success mb-2"></i>
                                    <h6>Guia d'Estudi</h6>
                                    <p class="small text-muted">Punts clau organitzats</p>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-question-circle fs-1 text-warning mb-2"></i>
                                    <h6>Preguntes Freqüents</h6>
                                    <p class="small text-muted">FAQ generat automàticament</p>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-table fs-1 text-danger mb-2"></i>
                                    <h6>Taula de Continguts</h6>
                                    <p class="small text-muted">Índex navegable</p>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-diagram-3 fs-1 text-info mb-2"></i>
                                    <h6>Cronologia</h6>
                                    <p class="small text-muted">Esdeveniments en ordre temporal</p>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="text-center p-3 border rounded">
                                    <i class="bi bi-mic fs-1 text-purple mb-2"></i>
                                    <h6>Podcast</h6>
                                    <p class="small text-muted">Audio conversacional (2 locutors)</p>
                                </div>
                            </div>
                        </div>

                        <div class="mt-3">
                            <h6>Com generar:</h6>
                            <ol>
                                <li>Cerca el botó <strong>"Notebook guide"</strong> a la part superior</li>
                                <li>Selecciona què vols generar</li>
                                <li>NotebookLM ho crearà automàticament</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pas 5 - Audio Overviews -->
            <div class="col-lg-12 mb-4">
                <div class="card border-0 shadow-sm border-danger">
                    <div class="card-header bg-danger text-white">
                        <h4 class="mb-0">
                            <span class="badge bg-white text-danger me-3">5</span>
                            Generar Podcast (Audio Overview) 
                            <span class="badge bg-warning text-dark ms-2">NOVA FUNCIÓ!</span>
                        </h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="lead mb-3">
                            La funcionalitat més impressionant de NotebookLM: converteix els teus documents en un <strong>podcast d'uns 10 minuts</strong> 
                            amb 2 locutors que discuteixen el contingut de forma natural.
                        </p>

                        <h6>Com funciona:</h6>
                        <ol class="mb-4">
                            <li class="mb-2">Un cop hagis pujat els documents, clic a <strong>"Audio Overview"</strong></li>
                            <li class="mb-2">NotebookLM genera automàticament una conversa entre 2 persones (home i dona)</li>
                            <li class="mb-2">Espera 3-5 minuts (genera àudio d'alta qualitat)</li>
                            <li class="mb-2">Escolta el podcast directament o descarrega'l</li>
                        </ol>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <h6><i class="bi bi-check-circle text-success me-2"></i>Avantatges:</h6>
                                        <ul class="mb-0">
                                            <li>Pots escoltar mentre fas altres coses</li>
                                            <li>Veus naturals i conversació fluida</li>
                                            <li>Expliquen conceptes complexos de forma senzilla</li>
                                            <li>Ideal per repassar abans d'un examen</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <h6><i class="bi bi-lightbulb text-warning me-2"></i>Casos d'Ús:</h6>
                                        <ul class="mb-0">
                                            <li>Resumir llibres mentre condueixes</li>
                                            <li>Repassar apunts fent esport</li>
                                            <li>Aprendre de manuals tècnics</li>
                                            <li>Explicar projectes a companys</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="alert alert-info mt-4">
                            <i class="bi bi-info-circle me-2"></i><strong>Nota:</strong> El podcast està en anglès per defecte, però pots demanar a NotebookLM que el transcrigui i el tradueixi
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Casos d'Ús Pràctics -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">💡 Casos d'Ús Pràctics</h2>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-book text-primary me-2"></i>Estudiants</h5>
                        <ul>
                            <li>Resumir apunts i llibres de text</li>
                            <li>Crear guies d'estudi automàtiques</li>
                            <li>Generar preguntes d'examen</li>
                            <li>Comparar diferents fonts acadèmiques</li>
                            <li>Escoltar podcasts dels teus apunts</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-briefcase text-success me-2"></i>Professionals</h5>
                        <ul>
                            <li>Analitzar informes llargs ràpidament</li>
                            <li>Extreure conclusions de múltiples documents</li>
                            <li>Preparar reunions amb resums</li>
                            <li>Organitzar informació de projectes</li>
                            <li>Crear presentacions a partir de documents</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-journal-code text-warning me-2"></i>Investigadors</h5>
                        <ul>
                            <li>Revisar literatura científica</li>
                            <li>Comparar estudis i metodologies</li>
                            <li>Extreure dades i estadístiques</li>
                            <li>Generar cronologies d'esdeveniments</li>
                            <li>Crear FAQ sobre temes complexos</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mb-4">
                <div class="card h-100 border-0 shadow-sm">
                    <div class="card-body">
                        <h5><i class="bi bi-pencil text-info me-2"></i>Escriptors</h5>
                        <ul>
                            <li>Analitzar fonts d'investigació</li>
                            <li>Organitzar notes i idees</li>
                            <li>Crear perfils de personatges</li>
                            <li>Generar cronologies de la història</li>
                            <li>Consultar bibliografia ràpidament</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Tips i Trucs -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">🎯 Tips i Trucs</h2>
                <div class="card border-0 shadow-sm">
                    <div class="card-body p-4">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Organitza per Notebooks</h6>
                                        <p class="text-muted small">Crea un notebook diferent per cada projecte o tema</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Combina Fonts Diverses</h6>
                                        <p class="text-muted small">Puja PDFs + URLs + vídeos per una visió completa</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Usa Cites com a Verificació</h6>
                                        <p class="text-muted small">Clica les cites per veure el text original</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-success me-3" style="height: fit-content;">TIP</span>
                                    <div>
                                        <h6>Exporta les Converses</h6>
                                        <p class="text-muted small">Guarda les respostes importants fent clic a l'icona de desar</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-warning me-3" style="height: fit-content;">AVÍS</span>
                                    <div>
                                        <h6>No Per Dades Sensibles</h6>
                                        <p class="text-muted small">Tot i ser privat, evita pujar informació confidencial</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="d-flex">
                                    <span class="badge bg-info me-3" style="height: fit-content;">IDEA</span>
                                    <div>
                                        <h6>Demana Formats Específics</h6>
                                        <p class="text-muted small">"Fes-me una llista amb bullet points", "Crea una taula comparativa"</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Comparació amb Altres Eines -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">⚖️ NotebookLM vs Altres Eines d'IA</h2>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead class="table-primary">
                            <tr>
                                <th>Característica</th>
                                <th>NotebookLM</th>
                                <th>ChatGPT</th>
                                <th>Claude</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>Fonts de Dades</strong></td>
                                <td><span class="badge bg-success">Només els teus documents</span></td>
                                <td>Coneixement general</td>
                                <td>Coneixement general</td>
                            </tr>
                            <tr>
                                <td><strong>Cites de Font</strong></td>
                                <td><span class="badge bg-success">Sí, sempre</span></td>
                                <td>No</td>
                                <td>Limitades</td>
                            </tr>
                            <tr>
                                <td><strong>Pujada de Documents</strong></td>
                                <td><span class="badge bg-success">Fins a 50 fonts</span></td>
                                <td>Només Plus (1 fitxer)</td>
                                <td>Fins a 5 fitxers</td>
                            </tr>
                            <tr>
                                <td><strong>Genera Podcasts</strong></td>
                                <td><span class="badge bg-success">Sí</span></td>
                                <td>No</td>
                                <td>No</td>
                            </tr>
                            <tr>
                                <td><strong>Preu</strong></td>
                                <td><span class="badge bg-success">Gratuït</span></td>
                                <td>Gratuït / $20/mes</td>
                                <td>Gratuït / $20/mes</td>
                            </tr>
                            <tr>
                                <td><strong>Millor Per</strong></td>
                                <td>Analitzar els TEUS documents</td>
                                <td>Preguntes generals</td>
                                <td>Programació i escriptura</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Limitacions -->
        <div class="row mb-5">
            <div class="col-lg-12">
                <h2 class="mb-4">⚠️ Limitacions a Tenir en Compte</h2>
                <div class="card border-warning">
                    <div class="card-body">
                        <ul class="mb-0">
                            <li class="mb-2"><strong>Només treballa amb les fonts que puges</strong> - No té coneixement general del món</li>
                            <li class="mb-2"><strong>Límit de 50 fonts per notebook</strong> i 500.000 paraules totals</li>
                            <li class="mb-2"><strong>Podcasts només en anglès</strong> (de moment)</li>
                            <li class="mb-2"><strong>No pot executar codi</strong> ni fer càlculs matemàtics complexos</li>
                            <li class="mb-2"><strong>Pot interpretar malament</strong> gràfics o taules complexes</li>
                            <li class="mb-2"><strong>Requereix compte de Google</strong></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Call to Action Final -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card border-0 shadow-lg" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                    <div class="card-body p-5 text-white text-center">
                        <h2 class="mb-4">🚀 Comença a Usar NotebookLM Avui!</h2>
                        <p class="lead mb-4">
                            Transforma la manera com treballes amb documents. Gratuït, potent i fàcil d'usar.
                        </p>
                        <div class="d-flex gap-3 justify-content-center flex-wrap">
                            <a href="https://notebooklm.google.com" target="_blank" class="btn btn-light btn-lg">
                                <i class="bi bi-box-arrow-up-right me-2"></i>Accedir a NotebookLM
                            </a>
                            <a href="https://www.youtube.com/results?search_query=notebooklm+tutorial" target="_blank" class="btn btn-outline-light btn-lg">
                                <i class="bi bi-youtube me-2"></i>Veure Tutorials
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

@endsection
