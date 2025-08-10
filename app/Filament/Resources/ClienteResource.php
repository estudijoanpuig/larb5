<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ClienteResource\Pages;
use App\Filament\Resources\ClienteResource\RelationManagers;
use App\Models\Cliente;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ClienteResource extends Resource
{
    protected static ?string $model = Cliente::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
        ->schema([
            Forms\Components\TextInput::make('nombre')
                ->required()
                ->maxLength(100),
            Forms\Components\Textarea::make('direccion')
                ->columnSpanFull(),
            Forms\Components\TextInput::make('nif')
                ->maxLength(20),
            Forms\Components\TextInput::make('telefono')
                ->tel()
                ->maxLength(20),
            Forms\Components\TextInput::make('email')
                ->email()
                ->maxLength(100),
            Forms\Components\Select::make('id_categoria_cliente')
                ->relationship('categoria', 'nombre_categoria')
                ->required()
                ->default(1),
            Forms\Components\FileUpload::make('img')
                ->image()
                ->directory('clientes')
                ->preserveFilenames() // Manté el nom original del fitxer
                ->maxSize(2048) // Màxim 2MB
                ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif']),
            Forms\Components\Textarea::make('notas')
                ->columnSpanFull(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nombre')
                    ->searchable()->limit(20),
                Tables\Columns\TextColumn::make('nif')
				->toggleable(isToggledHiddenByDefault: true)
                    ->searchable(),
                Tables\Columns\TextColumn::make('telefono')
                    ->searchable()->limit(16),
                Tables\Columns\TextColumn::make('email')
                    ->searchable()->limit(18),
                
            Tables\Columns\ImageColumn::make('img')
                ->disk('public')
                ->visibility('public')
                ->searchable(),
                
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListClientes::route('/'),
            'create' => Pages\CreateCliente::route('/create'),
            'edit' => Pages\EditCliente::route('/{record}/edit'),
        ];
    }
}
