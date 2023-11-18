<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use App\Models\Alumnos_Clase;
use Illuminate\Http\Request;

class AlumnoController extends Controller
{
    
    public function index()
    {
        $alumnos = Alumno::all();
        $info=[];
        foreach ($alumnos as $alumno) {
            $info[] = [
                'InfoAlumno' => $alumno,
                'InfoCursosMatriculados' => AlumnosClaseController::showCursoOfAlumno($alumno->id_alumno)
            ];
        }
        return $info;
    }


    public function store(Request $request)
    {   
        
        $alumno = new Alumno;
        $alumno->dni = $request->dni;
        $alumno->nombre = $request->nombre;
        $alumno->apellido = $request->apellido;
        $alumno->email = $request->email;
        $alumno->telefono = $request->telefono;
        $alumno->fecha_nacimiento = $request->fecha_nacimiento;
        $alumno->save();

        $resultado = [
            'Mensaje:' => 'Alumno creado con exito',
            'Informacion del Alumno' => $alumno
        ];

        return response()->json($resultado, 201);
    }

    public function show($id)
    {
        $alumno = Alumno::find($id);
        $info= [
            'InfoAlumno' => $alumno,
            'InfoCursosMatriculados' => AlumnosClaseController::showCursoOfAlumno($alumno->id_alumno)
        ];
        
        return response()->json($info, 200);
    }


    public function update(Request $request, $id)
    {
        
        $alumno = Alumno::find($id);
        $alumnoOld = Alumno::find($id);
        $alumno->dni = $request->dni;
        $alumno->nombre = $request->nombre;
        $alumno->apellido = $request->apellido;
        $alumno->email = $request->email;
        $alumno->telefono = $request->telefono;
        $alumno->fecha_nacimiento = $request->fecha_nacimiento;
        $alumno->save();

        $resultado = [
            'Mensaje:' => 'Alumno Actualizado con exito',
            'Información old del Alumno' => $alumnoOld,
            'Información new del Alumno' => $alumno
        ];

        return response()->json($resultado, 201);
    }

    public function destroy($id)
    {
        $alumno = Alumno::find($id);
        Alumnos_Clase::where('id_alumno',$alumno->id_alumno)->delete();
        $alumno->delete();
        return response()->json(null, 204);
    }


    public function matricularCurso(Request $request){
        $data=[
            'id_alumno' => $request->id_alumno,
            'id_curso' => $request->id_curso
        ];
        return AlumnosClaseController::store($data);
        
    }

}
