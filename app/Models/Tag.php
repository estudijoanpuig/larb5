<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = ['name', 'svg'];

    /**
     * Relació: Una etiqueta pot estar associada a molts projectes.
     */
    public function projects()
    {
        return $this->belongsToMany(Project::class, 'project_tags', 'tag_id', 'project_id')
                    ->withTimestamps();
    }
}
