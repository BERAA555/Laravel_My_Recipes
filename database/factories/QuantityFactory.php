<?php

namespace Database\Factories;

use App\Models\Food;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Quantity>
 */
class QuantityFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $names = [  "1 adet soğan ve 1 yemek kaşığı salça" ,
                    "2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su" ,
                    "Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz" ,
                    "1 adet yumurta ve 1 su bardağı yoğurt" , 
                    "200 gr kıyma ve 2 yemek kaşığı köftelik bulgur" ,
                ] ;
            return [
                'food_id' => fake()->randomElement(['1', '2' ,"3" , '4', '5' ,"6" , '7', '8' ,"9" , "10" ,"11" , "12" ,"13" , "14" ,"15"  ]),
                'name' => fake()->randomElement([$names[0] , $names[1] , $names[2] , $names[3] , $names[4]]) ,
            ];
    }
}
