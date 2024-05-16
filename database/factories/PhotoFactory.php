<?php

namespace Database\Factories;

use App\Models\Food;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Photo>
 */
class PhotoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    
    public function definition()
    {
        $path = [  "photo1.jpg" ,
                   "photo2.jpg" ,
                   "photo3.jpg" ,
                   "photo4.jpg" ,
                   "photo5.jpg" ,
                   "photo6.jpg" ,
                   "photo7.jpg" ,
                   "photo8.jpg" ,
                   "photo9.jpg" ,
                   "photo10.jpg" ,
                ] ;
        return [
            'food_id' => fake()->randomElement(['1', '2' ,"3" , '4', '5' ,"6" , '7', '8' ,"9" , "10" ,"11" , "12" ,"13" , "14" ,"15"  ]),  
            'path' => fake()->randomElement([$path[0] , $path[1], $path[2] ,$path[3] ,$path[4] ,$path[5] ,$path[6] ,$path[7] ,$path[8] ,$path[9] ]), 
        ];
    }
}
