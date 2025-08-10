<?php

namespace App\Filament\Resources\ProveidorResource\Pages;

use App\Filament\Resources\ProveidorResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditProveidor extends EditRecord
{
    protected static string $resource = ProveidorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
