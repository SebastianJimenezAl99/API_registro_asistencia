<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('alumnos__clases', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_curso');
            $table->unsignedBigInteger('id_alumno');
            $table->unsignedInteger('total_asistencia');
            $table->timestamps();

            $table->foreign('id_curso')->references('id_curso')->on('cursos')->onDelete('cascade');
            $table->foreign('id_alumno')->references('id_alumno')->on('alumnos')->onDelete('cascade');

            // Asegurarse de que no haya duplicados de pares (curso_id, estudiante_id)
            $table->unique(['id_curso', 'id_alumno']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('alumnos__clases', function (Blueprint $table) {
            $table->dropForeign(['id_curso']);
            $table->dropForeign(['id_alumno']);
        });
        Schema::dropIfExists('alumnos__clases');
    }
};
