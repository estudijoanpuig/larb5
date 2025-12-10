<?php

namespace App\Filament\Pages;

use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Form;
use Filament\Pages\Auth\EditProfile as BaseEditProfile;

class EditProfile extends BaseEditProfile
{
    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Informació del Perfil')
                    ->description('Actualitza la teva informació personal')
                    ->schema([
                        FileUpload::make('avatar')
                            ->label('Foto de Perfil')
                            ->image()
                            ->avatar()
                            ->imageEditor()
                            ->circleCropper()
                            ->directory('avatars')
                            ->disk('public')
                            ->maxSize(2048)
                            ->helperText('Imatge circular de màxim 2MB')
                            ->columnSpanFull(),
                        
                        TextInput::make('name')
                            ->label('Nom')
                            ->required()
                            ->maxLength(255),
                        
                        TextInput::make('email')
                            ->label('Correu Electrònic')
                            ->email()
                            ->required()
                            ->maxLength(255)
                            ->unique(ignoreRecord: true),
                    ])
                    ->columns(2),

                Section::make('Canviar Contrasenya')
                    ->description('Deixa en blanc si no vols canviar la contrasenya')
                    ->schema([
                        TextInput::make('current_password')
                            ->label('Contrasenya Actual')
                            ->password()
                            ->revealable()
                            ->currentPassword()
                            ->dehydrated(false)
                            ->required(fn ($state, $get) => filled($get('password'))),
                        
                        TextInput::make('password')
                            ->label('Nova Contrasenya')
                            ->password()
                            ->revealable()
                            ->confirmed()
                            ->dehydrated(fn ($state) => filled($state)),
                        
                        TextInput::make('password_confirmation')
                            ->label('Confirma Nova Contrasenya')
                            ->password()
                            ->revealable()
                            ->dehydrated(false)
                            ->required(fn ($state, $get) => filled($get('password'))),
                    ])
                    ->columns(2),
            ]);
    }
}
