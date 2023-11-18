<?php

use App\Http\Controllers\AlumnoController;
use App\Http\Controllers\AlumnosClaseController;
use App\Http\Controllers\CursoController;
use App\Http\Controllers\DocenteController;
use App\Models\Alumnos_Clase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/alumnos',[AlumnoController::class,'index']);
Route::get('/alumnos/{id}',[AlumnoController::class,'show']);
Route::post('/alumnos',[AlumnoController::class,'store']);
Route::put('/alumnos/{id}',[AlumnoController::class,'update']);
Route::delete('/alumnos/{id}',[AlumnoController::class,'destroy']);
Route::post('/alumnos/matricular',[AlumnoController::class,'matricularCurso']);

Route::get('/cursos',[CursoController::class,'index']);
Route::get('/cursos/{id}',[CursoController::class,'show']);
Route::post('/cursos',[CursoController::class,'store']);
Route::put('/cursos/{id}',[CursoController::class,'update']);
Route::delete('/cursos/{id}',[CursoController::class,'destroy']);
Route::post('/cursos/matricular',[CursoController::class,'matricularAlumno']);

Route::get('/docentes',[DocenteController::class,'index']);
Route::get('/docentes/{id}',[DocenteController::class,'show']);
Route::post('/docentes',[DocenteController::class,'store']);
Route::put('docentes/{id}',[DocenteController::class,'update']);
Route::delete('/docentes/{id}',[DocenteController::class,'destroy']);

Route::get('/alumnoClase/showAllAlumnoOfCurso',[AlumnosClaseController::class,'showAllAlumnoOfCurso']);