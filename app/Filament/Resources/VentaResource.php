<?php

namespace App\Filament\Resources;

use App\Filament\Resources\VentaResource\Pages;
use App\Filament\Resources\VentaResource\RelationManagers;
use App\Models\Venta;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class VentaResource extends Resource
{
    protected static ?string $model = Venta::class;

    protected static ?string $navigationIcon = 'heroicon-o-shopping-bag';
    
    protected static ?string $navigationLabel = 'Vendes';
    
    protected static ?string $modelLabel = 'Venda';
    
    protected static ?string $pluralModelLabel = 'Vendes';
    
    protected static ?string $navigationGroup = 'Comptabilitat';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\DatePicker::make('fecha')
                    ->label('Data')
                    ->required()
                    ->default(now()),
                Forms\Components\Select::make('cliente_id')
                    ->label('Client')
                    ->relationship('cliente', 'nombre')
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
                Forms\Components\Select::make('notas')
                    ->label('Mètode de Pagament')
                    ->options([
                        'efectiu' => 'Efectiu',
                        'targeta' => 'Targeta',
                        'bono' => 'Bono',
                        'bizum_neus' => 'Bizum Neus',
                        'transferencia' => 'Transferència',
                    ])
                    ->columnSpanFull(),
                Forms\Components\Repeater::make('detalles')
                    ->label('Detalls de la Venda')
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
                Tables\Columns\TextColumn::make('cliente.nombre')
                    ->label('Client')
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
                    ->label('Pagament')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'efectiu' => 'success',
                        'targeta' => 'info',
                        'bono' => 'warning',
                        'bizum_neus' => 'primary',
                        'transferencia' => 'gray',
                        default => 'gray',
                    })
                    ->formatStateUsing(fn (string $state): string => match ($state) {
                        'efectiu' => 'Efectiu',
                        'targeta' => 'Targeta',
                        'bono' => 'Bono',
                        'bizum_neus' => 'Bizum Neus',
                        'transferencia' => 'Transferència',
                        default => $state ?? 'N/A',
                    }),
            ])
            ->defaultSort('fecha', 'desc')
            ->filters([
                Tables\Filters\SelectFilter::make('cliente_id')
                    ->label('Client')
                    ->relationship('cliente', 'nombre')
                    ->searchable()
                    ->preload(),
                Tables\Filters\SelectFilter::make('notas')
                    ->label('Mètode de Pagament')
                    ->options([
                        'efectiu' => 'Efectiu',
                        'targeta' => 'Targeta',
                        'bono' => 'Bono',
                        'bizum_neus' => 'Bizum Neus',
                        'transferencia' => 'Transferència',
                    ]),
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
            'index' => Pages\ListVentas::route('/'),
            'create' => Pages\CreateVenta::route('/create'),
            'edit' => Pages\EditVenta::route('/{record}/edit'),
        ];
    }
}
