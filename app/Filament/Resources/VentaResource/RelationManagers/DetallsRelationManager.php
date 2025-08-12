<?php

namespace App\Filament\Resources\VentaResource\RelationManagers;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\RelationManagers\RelationManager;

class DetallsRelationManager extends RelationManager
{
    protected static string $relationship = 'detalls';

    protected static ?string $title = 'Detalls de la Venda';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('producto_id')
                    ->label('Producte')
                    ->relationship(name: 'producto', titleAttribute: 'nombre')
                    ->required()
                    ->searchable()
                    ->preload(),
                Forms\Components\TextInput::make('quantitat')
                    ->label('Quantitat')
                    ->numeric()
                    ->required()
                    ->minValue(1)
                    ->live(onBlur: true)
                    ->afterStateUpdated(function ($state, callable $set, $get) {
                        $preuUnitari = $get('preu_unitari') ?? 0;
                        $set('subtotal', $state * $preuUnitari);
                        $set('iva_monto', $state * $preuUnitari * 0.21); // IVA del 21%
                    }),
                Forms\Components\TextInput::make('preu_unitari')
                    ->label('Preu Unitari')
                    ->numeric()
                    ->required()
                    ->prefix('€')
                    ->step(0.01)
                    ->live(onBlur: true)
                    ->afterStateUpdated(function ($state, callable $set, $get) {
                        $quantitat = $get('quantitat') ?? 0;
                        $set('subtotal', $quantitat * $state);
                        $set('iva_monto', $quantitat * $state * 0.21); // IVA del 21%
                    }),
                Forms\Components\TextInput::make('subtotal')
                    ->label('Subtotal')
                    ->numeric()
                    ->prefix('€')
                    ->disabled()
                    ->dehydrated(true),
                Forms\Components\TextInput::make('iva_monto')
                    ->label('IVA (21%)')
                    ->numeric()
                    ->prefix('€')
                    ->disabled()
                    ->dehydrated(true),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('producto.nombre')
                    ->label('Producte')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('quantitat')
                    ->label('Quantitat')
                    ->sortable(),
                Tables\Columns\TextColumn::make('preu_unitari')
                    ->label('Preu Unitari')
                    ->money('eur')
                    ->sortable(),
                Tables\Columns\TextColumn::make('subtotal')
                    ->label('Subtotal')
                    ->money('eur')
                    ->sortable(),
                Tables\Columns\TextColumn::make('iva_monto')
                    ->label('IVA')
                    ->money('eur')
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->after(function ($record, $livewire) {
                        $livewire->ownerRecord->calcularTotals();
                    }),
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->after(function ($record, $livewire) {
                        $livewire->ownerRecord->calcularTotals();
                    }),
                Tables\Actions\DeleteAction::make()
                    ->after(function ($record, $livewire) {
                        $livewire->ownerRecord->calcularTotals();
                    }),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()
                    ->after(function ($records, $livewire) {
                        $livewire->ownerRecord->calcularTotals();
                    }),
            ]);
    }
}