<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $fillable = ['name', 'image', 'url', 'description', 'category_id'];

    /**
     * Relació: Un projecte pertany a una categoria.
     */
    public function category()
 {
        return $this->belongsTo(Category::class);
    }

    /**
     * Relació: Un projecte pot tenir moltes etiquetes.
     */
    public function tags()
    {
        return $this->belongsToMany(Tag::class, 'project_tags', 'project_id', 'tag_id')
                    ->withTimestamps();
    }
}
