<?php

namespace Database\Factories;

use App\Models\Menu;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Food>
 */
class FoodFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {

        return [
           'menu_id' =>fake()->randomElement(['1', '2' ,"3" , "4"]), 
           'name' => fake()->name() ,  
           'explane' => fake()->text() , 
           'like' => fake()->randomElement(['1', '0']), 
        ];
    }

}
