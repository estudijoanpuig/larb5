<?php

namespace App\Filament\Resources;

use App\Filament\Resources\VentaResource\Pages;
use App\Filament\Resources\VentaResource\RelationManagers\DetallsRelationManager;
use App\Models\Venta;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class VentaResource extends Resource
{
    protected static ?string $model = Venta::class;

    protected static ?string $navigationIcon = 'heroicon-o-shopping-bag';

    protected static ?string $navigationLabel = 'Vendes';

    protected static ?string $pluralLabel = 'Vendes';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Informació de la Venda')
                    ->schema([
                        Forms\Components\DatePicker::make('fecha')
                            ->label('Data de la Venda')
                            ->required()
                            ->default(now()),
                        Forms\Components\Select::make('cliente_id')
                            ->label('Client')
                            ->relationship(name: 'cliente', titleAttribute: 'nombre')
                            ->searchable()
                            ->preload()
                            ->nullable(),
                    ])
                    ->columns(2),
                Forms\Components\Section::make('Detalls de la Venda')
                    ->schema([
                        Forms\Components\Repeater::make('detalls')
                            ->relationship('detalls')
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
                            ])
                            ->columns(3)
                            ->live()
                            ->afterStateUpdated(function ($state, callable $set) {
                                $subtotal = collect($state)->sum('subtotal');
                                $iva_monto = collect($state)->sum('iva_monto');
                                $total = $subtotal + $iva_monto;
                                $set('subtotal', $subtotal);
                                $set('iva_monto', $iva_monto);
                                $set('total', $total);
                            }),
                    ]),
                Forms\Components\Section::make('Totals')
                    ->schema([
                        Forms\Components\TextInput::make('subtotal')
                            ->label('Subtotal')
                            ->numeric()
                            ->prefix('€')
                            ->disabled()
                            ->dehydrated(true),
                        Forms\Components\TextInput::make('iva_monto')
                            ->label('IVA Total')
                            ->numeric()
                            ->prefix('€')
                            ->disabled()
                            ->dehydrated(true),
                        Forms\Components\TextInput::make('total')
                            ->label('Total')
                            ->numeric()
                            ->prefix('€')
                            ->disabled()
                            ->dehydrated(true),
                    ])
                    ->columns(3),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('fecha')
                    ->label('Data')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('cliente.nombre')
                    ->label('Client')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('subtotal')
                    ->label('Subtotal')
                    ->money('eur')
                    ->sortable(),
                Tables\Columns\TextColumn::make('iva_monto')
                    ->label('IVA')
                    ->money('eur')
                    ->sortable(),
                Tables\Columns\TextColumn::make('total')
                    ->label('Total')
                    ->money('eur')
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            DetallsRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListVentas::route('/'),
            'create' => Pages\CreateVenta::route('/create'),
            'edit' => Pages\EditVenta::route('/{record}/edit'),
        ];
    }
}