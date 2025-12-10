@extends('layouts.app')
@section('title', 'Registrar-se')
@section('content')
<!-- Page Title -->
<div class="page-title light-background">
    <div class="container">
        <div class="row align-items-center mb-3">
            <div class="col-12 col-md-6">
                <h1 class="mb-2">Registrar-se</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="/">Inici</a></li>
                        <li><a href="/admin/login">Login Admin</a></li>
                        <li class="current">Registrar-se</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title -->

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg" style="background: #f7fafd; border: 1px solid #e3eafc;">
                <div class="card-body" style="background: #e3eafc; border-radius: 8px;">
                    <div class="m-sm-3">
                        <form method="POST" action="{{ route('filament.register') }}">
                            @csrf
                            <div class="mb-3">
                                <label class="form-label">Nom complet *</label>
                                <input class="form-control form-control-lg" type="text" name="name" placeholder="Introdueix el teu nom complet" value="{{ old('name') }}" required />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email *</label>
                                <input class="form-control form-control-lg" type="email" name="email" placeholder="Introdueix el teu email" value="{{ old('email') }}" required />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Contrasenya *</label>
                                <div class="input-group">
                                    <input class="form-control form-control-lg" type="password" name="password" id="password" placeholder="Crea una contrasenya" required />
                                    <button class="btn btn-outline-secondary" type="button" id="togglePassword" tabindex="-1" style="background: #e3eafc;">
                                        <i class="bi bi-eye" id="eyeIconPassword"></i>
                                    </button>
                                </div>
                                <div class="form-text">Mínim 8 caràcters</div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Confirma la contrasenya *</label>
                                <div class="input-group">
                                    <input class="form-control form-control-lg" type="password" name="password_confirmation" id="password_confirmation" placeholder="Repeteix la contrasenya" required />
                                    <button class="btn btn-outline-secondary" type="button" id="togglePasswordConfirm" tabindex="-1" style="background: #e3eafc;">
                                        <i class="bi bi-eye" id="eyeIconPasswordConfirm"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="d-grid gap-2 mt-3">
                                <button type="submit" class="btn btn-lg btn-primary" style="background: #a3c9f7; border: none; color: #2c3e50;">Crear Compte</button>
                            </div>
                        </form>
                        <div class="mt-3 text-center">
                            <a href="/admin/login" class="text-primary">Ja tens compte? Inicia sessió</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.card {
    background: #f7fafd !important;
    border: 1px solid #e3eafc !important;
}
.card-body {
    background: #e3eafc !important;
    border-radius: 8px !important;
}
.btn-primary {
    background: #a3c9f7 !important;
    border: none !important;
    color: #2c3e50 !important;
}
.form-label {
    color: #2c3e50 !important;
}
</style>

<!-- Icones Bootstrap per l'ull -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const passwordInput = document.getElementById('password');
        const togglePassword = document.getElementById('togglePassword');
        const eyeIconPassword = document.getElementById('eyeIconPassword');
        togglePassword.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            eyeIconPassword.classList.toggle('bi-eye');
            eyeIconPassword.classList.toggle('bi-eye-slash');
        });

        const passwordConfirmInput = document.getElementById('password_confirmation');
        const togglePasswordConfirm = document.getElementById('togglePasswordConfirm');
        const eyeIconPasswordConfirm = document.getElementById('eyeIconPasswordConfirm');
        togglePasswordConfirm.addEventListener('click', function() {
            const type = passwordConfirmInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordConfirmInput.setAttribute('type', type);
            eyeIconPasswordConfirm.classList.toggle('bi-eye');
            eyeIconPasswordConfirm.classList.toggle('bi-eye-slash');
        });
    });
</script>
</style>
@endsection
