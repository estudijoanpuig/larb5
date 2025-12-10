<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Project;
use App\Models\Tag;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
    public function index()
    {
        // Consultar totes les categories
        $categories = Category::all();
        
        // Consultar totes les etiquetes
        $tags = Tag::all();
        
        // Consultar tots els projectes amb les seves categories i tags
        $projects = Project::with(['category', 'tags'])->get();
        
        // Passar les variables a la vista
        return view('portfolio.index', compact('categories', 'tags', 'projects'));
    }
}