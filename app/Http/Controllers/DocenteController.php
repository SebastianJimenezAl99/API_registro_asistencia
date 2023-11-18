<?php

namespace App\Http\Controllers;

use App\Models\Docente;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;

class DocenteController extends Controller
{
    public function index()
    {
        $docentes = Docente::all();
        return response()->json($docentes, 200);
    }

    public function store(Request $request)
    {
        $docente = new Docente;
        $docente->nombre = $request->nombre;
        $docente->apellido = $request->apellido;
        $docente->email = $request->email;
        $docente->telefono = $request->telefono;
        $docente->save();

        $resultado = [
            'Mensaje:' => 'Docente creado con exito',
            'Informacion del Docente' => $docente
        ];

        return response()->json($resultado, 201);
    }

    public function show($id)
    {
        try {
            $docente = Docente::findOrFail($id);
            return response()->json($docente, 200);
        } catch (ModelNotFoundException $e) {
            return response()->json('No se encontró ningún docente con el ID '.$id, 404);
        }
        
    }

    public function update(Request $request, $id)
    {
        $docente = Docente::findOrFail($id);
        $docenteOld = Docente::findOrFail($id);

        $docente->nombre = $request->nombre;
        $docente->apellido = $request->apellido;
        $docente->email = $request->email;
        $docente->telefono = $request->telefono;
        $docente->save();

        $resultado = [
            'Mensaje:' => 'Docente Actualizado con exito',
            'Información old del Docente' => $docenteOld,
            'Información new del Docente' => $docente
        ]; 

        return response()->json($resultado, 200);
    }

    public function destroy($id)
    {
        $docente = Docente::findOrFail($id);
        $docente->delete();

        return response()->json(null, 204);
    }
}
