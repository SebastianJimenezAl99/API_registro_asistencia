<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use App\Models\Alumnos_Clase;
use App\Models\Asistencia;
use App\Models\Curso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Stmt\Return_;

class AsistenciaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    
    public static function store($data)
    {
        $id_alumno =  $data['id_alumno'];
        $id_curso = $data['id_curso'];
        $fecha = $data['fecha'];
        $estado = $data['estado'];
        $curso = Curso::find($id_curso);
        $alumno = Alumno::find($id_alumno);

        if ($estado === "A" || $estado === "T" || $estado === "F") {
            $condicion =[
                ['id_curso', '=',$id_curso],
                ['id_alumno', '=',$id_alumno]
            ];
    
            $resultado = DB::table('alumnos__clases')->where($condicion)->get();
            
            if ($resultado->isNotEmpty()) {
                $asistencia = new Asistencia;
                $asistencia->id_curso = $id_curso;
                $asistencia->id_alumno = $id_alumno;
                $asistencia->fecha = $fecha;
                $asistencia->estado = $estado;
    
                $asistencia->save();
    
                $condicion2 = [
                    ['id_curso', '=', $id_curso],
                    ['id_alumno', '=', $id_alumno],
                    ['estado', '!=', 'F'], // Asegúrate de cambiar 'F' por el valor que deseas excluir
                ];
    
                $contador = Asistencia::where($condicion2)->count();
                Alumnos_Clase::where($condicion)->update(['total_asistencia' => $contador]);
    
                
                return 'Se ha Registrado la asistencia del alumno '.$alumno->nombre.' '.$alumno->apellido.' al curso '.$curso->nombre;  
            } else {
                // Se encontraron resultados
                return 'Lo sentimos, el alumno '.$alumno->nombre.' '.$alumno->apellido.' no se encuentra registado en el curso '.$curso->nombre;     
            } 
        } else {
            return 'Opciones de asistencia: Asistió temprano (A), Asistió tarde (T), Faltó (F)';
        }
        

        
    }

    /**
     * Display the specified resource.
     */
    public function show(Asistencia $asistencia)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Asistencia $asistencia)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Asistencia $asistencia)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $datos = Asistencia::select('id_curso', 'id_alumno')->where('id', '=', $id)->get();

        Asistencia::deleted($id);
    }
}
