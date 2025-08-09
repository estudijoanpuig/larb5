<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name'];

    /**
     * Relació: Una categoria pot tenir molts projectes.
     */
    public function projects()
    {
        return $this->hasMany(Project::class);
    }
}

