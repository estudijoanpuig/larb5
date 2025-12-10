<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function submit(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'nullable|string|max:20',
            'message' => 'required|string',
        ]);

        // Aquí pots afegir lògica per enviar un correu o emmagatzemar el missatge
        return redirect()->back()->with('success', 'Missatge enviat amb èxit!');
    }
}