<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class WebDevelopmentController extends Controller
{
    public function index()
    {
        try {
            // Obtenir els posts de la categoria 17
            $posts = DB::connection('second')
                ->table('posts')
                ->join('categories', 'posts.category_id', '=', 'categories.id')
                ->where('posts.category_id', 17)
                ->select('posts.*', 'categories.name as category_name', 'categories.svg')
                ->get();

            // Recollir etiquetes úniques i afegir tags_list a cada post
            $allTags = [];
            foreach ($posts as $post) {
                $tags = DB::connection('second')
                    ->table('post_etiquetas')
                    ->join('etiquetas', 'post_etiquetas.etiqueta_id', '=', 'etiquetas.id')
                    ->where('post_etiquetas.post_id', $post->id)
                    ->pluck('etiquetas.name')
                    ->toArray();
                $post->tags_list = implode(',', $tags);
                foreach ($tags as $tag) {
                    $allTags[$tag] = true;
                }
            }
            $uniqueTags = array_keys($allTags);
			sort($uniqueTags); // <--- AQUESTA ÉS LA LÍNIA QUE ORDENA LES ETIQUETES

            return view('web_development', [
                'posts' => $posts,
                'uniqueTags' => $uniqueTags
            ]);

        } catch (\Exception $e) {
            Log::error('Error al carregar posts: ' . $e->getMessage());
            return view('web_development', ['error' => 'Error del servidor']);
        }
    }

    public function show($id)
    {
        try {
            $post = DB::connection('second')
                ->table('posts')
                ->where('id', $id)
                ->where('category_id', 17)
                ->first();

            if (!$post) {
                Log::error("Post no trobat amb ID: $id");
                return view('detall_post', ['error' => 'Post no trobat']);
            }

            $category_name = DB::connection('second')
                ->table('categories')
                ->where('id', $post->category_id)
                ->value('name') ?? 'Sense categoria';

            $tags = DB::connection('second')
                ->table('post_etiquetas')
                ->join('etiquetas', 'post_etiquetas.etiqueta_id', '=', 'etiquetas.id')
                ->where('post_etiquetas.post_id', $id)
                ->pluck('etiquetas.name')
                ->toArray();

            $tags_list = implode(', ', $tags);

            $previous_post = DB::connection('second')
                ->table('posts')
                ->where('category_id', 17)
                ->where('id', '<', $id)
                ->orderBy('id', 'desc')
                ->first();

            $next_post = DB::connection('second')
                ->table('posts')
                ->where('category_id', 17)
                ->where('id', '>', $id)
                ->orderBy('id', 'asc')
                ->first();

            return view('detall_post', [
                'post' => $post,
                'category_name' => $category_name,
                'tags_list' => $tags_list,
                'previous_post' => $previous_post,
                'next_post' => $next_post
            ]);

        } catch (\Exception $e) {
            Log::error('Error al mostrar post: ' . $e->getMessage());
            return view('detall_post', ['error' => 'Error del servidor']);
        }
    }
}