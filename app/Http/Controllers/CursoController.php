<?php

namespace App\Http\Controllers;

use App\Models\Alumnos_Clase;
use App\Models\Curso;
use Illuminate\Http\Request;

class CursoController extends Controller
{
   
    public function index()
    {
        $cursos = Curso::all();
        $info =[];
        foreach ($cursos as $curso) {
            $info[] = [
                'InfoCurso' => $curso,
                'AlumnosMatriculados' => AlumnosClaseController::showAllAlumnoOfCurso($curso->id_curso)
            ];
        }
        return response()->json($info, 200);
    }

    
    public function store(Request $request)
    {
        $curso = new Curso;
        $curso->nombre = $request->nombre;
        $curso->save();

        $resultado = [
            'mensaje' => 'Curso Creado correctamente',
            'Informacion eliminada' => $curso
        ];

        return response()->json($resultado, 201);
        
    }

    
    public function show($id)
    {
        $curso = Curso::findOrFail($id);
        $info[] = [
            'InfoCurso' => $curso,
            'AlumnosMatriculados' => AlumnosClaseController::showAllAlumnoOfCurso($curso->id_curso)
        ];
        return response()->json($info, 200);
    }

    
    public function update(Request $request, $id)
    {
        $cursoOld = Curso::findOrFail($id); 
        $curso = Curso::findOrFail($id);
        $curso->nombre = $request->nombre;
        $curso->save();
        $resultado = [
            'Mensaje:' => 'Curso Actualizado con exito',
            'Información old del Curso' => $cursoOld,
            'Información new del Curso' => $curso
        ];
        return response()->json($resultado, 200);
    }

  
    public function destroy($id)
    {
        $curso = Curso::findOrFail($id);
        Alumnos_Clase::where('id_curso',$curso->id_curso)->delete();
        $curso->delete();
        return response()->json(null, 204);
    }

    public function matricularAlumno(Request $request){
        $data=[
            'id_alumno' => $request->id_alumno,
            'id_curso' => $request->id_curso
        ];
        return AlumnosClaseController::store($data);
    }

    public function registrarAsistencia(Request $request,$id){
        $data = [
            'id_curso' => $id,
            'id_alumno' => $request->id_alumno,
            'fecha' => $request->fecha
        ];
        return AsistenciaController::store($data);
    }
}
