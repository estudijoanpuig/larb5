<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CompraResource\Pages;
use App\Filament\Resources\CompraResource\RelationManagers;
use App\Models\Compra;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class CompraResource extends Resource
{
    protected static ?string $model = Compra::class;

    protected static ?string $navigationIcon = 'heroicon-o-shopping-cart';
    
    protected static ?string $navigationLabel = 'Compres';
    
    protected static ?string $modelLabel = 'Compra';
    
    protected static ?string $pluralModelLabel = 'Compres';
    
    protected static ?string $navigationGroup = 'Comptabilitat';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\DatePicker::make('fecha')
                    ->label('Data')
                    ->required()
                    ->default(now()),
                Forms\Components\Select::make('proveedor_id')
                    ->label('Proveïdor')
                    ->relationship('proveedor', 'nombre')
                    ->searchable()
                    ->preload()
                    ->required(),
                Forms\Components\Select::make('empleado_id')
                    ->label('Empleat')
                    ->relationship('empleado', 'nombre')
                    ->searchable()
                    ->preload()
                    ->required(),
                Forms\Components\TextInput::make('iva_porcentaje')
                    ->label('IVA (%)')
                    ->required()
                    ->numeric()
                    ->default(21.00)
                    ->suffix('%'),
                Forms\Components\TextInput::make('subtotal')
                    ->label('Subtotal')
                    ->required()
                    ->numeric()
                    ->prefix('€')
                    ->disabled()
                    ->dehydrated(),
                Forms\Components\TextInput::make('iva_monto')
                    ->label('Import IVA')
                    ->required()
                    ->numeric()
                    ->prefix('€')
                    ->disabled()
                    ->dehydrated(),
                Forms\Components\TextInput::make('total')
                    ->label('Total')
                    ->required()
                    ->numeric()
                    ->prefix('€')
                    ->disabled()
                    ->dehydrated(),
                Forms\Components\Textarea::make('notas')
                    ->label('Notes')
                    ->columnSpanFull()
                    ->rows(3),
                Forms\Components\Repeater::make('detalles')
                    ->label('Detalls de la Compra')
                    ->relationship()
                    ->schema([
                        Forms\Components\Select::make('producto_id')
                            ->label('Producte')
                            ->relationship('producto', 'nombre')
                            ->searchable()
                            ->preload()
                            ->required(),
                        Forms\Components\TextInput::make('cantidad')
                            ->label('Quantitat')
                            ->required()
                            ->numeric()
                            ->default(1)
                            ->minValue(1),
                        Forms\Components\TextInput::make('precio_unitario')
                            ->label('Preu Unitari')
                            ->required()
                            ->numeric()
                            ->prefix('€'),
                        Forms\Components\TextInput::make('subtotal')
                            ->label('Subtotal')
                            ->numeric()
                            ->prefix('€')
                            ->disabled()
                            ->dehydrated(),
                    ])
                    ->columns(4)
                    ->columnSpanFull()
                    ->defaultItems(1)
                    ->addActionLabel('Afegir Producte'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('ID')
                    ->sortable(),
                Tables\Columns\TextColumn::make('fecha')
                    ->label('Data')
                    ->date('d/m/Y')
                    ->sortable(),
                Tables\Columns\TextColumn::make('proveedor.nombre')
                    ->label('Proveïdor')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('empleado.nombre')
                    ->label('Empleat')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('subtotal')
                    ->label('Subtotal')
                    ->money('EUR')
                    ->sortable(),
                Tables\Columns\TextColumn::make('iva_porcentaje')
                    ->label('IVA %')
                    ->numeric(decimalPlaces: 2)
                    ->suffix('%')
                    ->sortable(),
                Tables\Columns\TextColumn::make('total')
                    ->label('Total')
                    ->money('EUR')
                    ->sortable(),
                Tables\Columns\TextColumn::make('notas')
                    ->label('Notes')
                    ->limit(30)
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->defaultSort('fecha', 'desc')
            ->filters([
                Tables\Filters\SelectFilter::make('proveedor_id')
                    ->label('Proveïdor')
                    ->relationship('proveedor', 'nombre')
                    ->searchable()
                    ->preload(),
                Tables\Filters\Filter::make('fecha')
                    ->label('Data')
                    ->form([
                        Forms\Components\DatePicker::make('desde')
                            ->label('Des de'),
                        Forms\Components\DatePicker::make('hasta')
                            ->label('Fins a'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['desde'],
                                fn (Builder $query, $date): Builder => $query->whereDate('fecha', '>=', $date),
                            )
                            ->when(
                                $data['hasta'],
                                fn (Builder $query, $date): Builder => $query->whereDate('fecha', '<=', $date),
                            );
                    }),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
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
            'index' => Pages\ListCompras::route('/'),
            'create' => Pages\CreateCompra::route('/create'),
            'edit' => Pages\EditCompra::route('/{record}/edit'),
        ];
    }
}
