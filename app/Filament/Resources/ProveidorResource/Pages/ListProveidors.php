<?php

namespace App\Filament\Resources\ProveidorResource\Pages;

use App\Filament\Resources\ProveidorResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListProveidors extends ListRecords
{
    protected static string $resource = ProveidorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
