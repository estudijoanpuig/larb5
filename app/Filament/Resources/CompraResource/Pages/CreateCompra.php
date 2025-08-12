<?php

namespace App\Filament\Resources\CompraResource\Pages;

use App\Filament\Resources\CompraResource;
use Filament\Resources\Pages\CreateRecord;

class CreateCompra extends CreateRecord
{
    protected static string $resource = CompraResource::class;

    protected function afterCreate(): void
    {
        $this->record->calcularTotals();
    }
}