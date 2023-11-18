<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use App\Models\Alumnos_Clase;
use App\Models\Curso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AlumnosClaseController extends Controller
{
    
   

   
    public static function store($data)
    {
        $id_alumno =$data['id_alumno'];
        $id_curso = $data['id_curso'];

        $alumno = Alumno::find($id_alumno);
        if ($alumno === null) {
            return "No se encontró ningún alumno con el ID: $id_alumno";
        } else {
            $curso = Curso::find($id_curso);
            if ($curso === null) {
                return "No se encontró ningún curso con el ID: $id_curso";
            }else{
                $condicion =[
                    ['id_curso', '=',$id_curso],
                    ['id_alumno', '=',$id_alumno]
                ];

                $resultado = DB::table('alumnos__clases')->where($condicion)->get();
                $a_c= new Alumnos_Clase;
                if ($resultado->isEmpty()) {
                   $a_c->id_curso = $id_curso;
                    $a_c->id_alumno = $id_alumno;
                    $a_c->total_asistencia = 0;
                    $a_c->save();
                    return 'Se ha matriculado el alumno '.$alumno->nombre.' '.$alumno->apellido.' al curso '.$curso->nombre;  
                } else {
                    // Se encontraron resultados
                    return 'Lo sentimos, el alumno '.$alumno->nombre.' '.$alumno->apellido.' ya se encuentra registado en el curso '.$curso->nombre;     
                } 
            }
            
        }
       
    }


    public static function showCursoOfAlumno($id)
    {
        $id_alumno = $id;
        $condicion =[
            ['id_alumno', '=',$id_alumno]
        ];

        $resultados = DB::table('alumnos__clases')->where($condicion)->get();

        if ($resultados->isEmpty()) {
            
            return "El alumno no tienes cursos matriculado";
        } else {
            $info = [];
            foreach ($resultados as $resultado) {
                $curso = Curso::find($resultado->id_curso);
                $info[]=[
                    'Curso' => $curso->nombre,
                    'Asistencias' => $resultado->total_asistencia
                ];
            }
            return $info;
        }
    }

    public static function showAllAlumnoOfCurso($id)
    {
        $id_curso = $id;
        $condicion =[
            ['id_curso', '=',$id_curso]
        ];

        $resultados = DB::table('alumnos__clases')->where($condicion)->get();

        if ($resultados->isEmpty()) {
            
            return "El curso no tienes alumnos matriculados";
        } else {
            $info = [];
            foreach ($resultados as $resultado) {
                $alumno = Alumno::find($resultado->id_alumno);
                $info[]=$alumno->nombre.' '.$alumno->apellido;
            }
            return $info;
        }
    }

    
}
