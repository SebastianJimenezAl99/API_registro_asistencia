<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Docente>
 */
class DocenteFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        /* $table->string('nombre');
            $table->string('apellido');
            $table->string('email');
            $table->string('telefono'); */
        return [
            'nombre' =>fake()->firstName(),
            'apellido' => fake()->lastName(),
            'email' => fake()->email(),
            'telefono' =>fake()->phoneNumber(),
        ];
    }
}
