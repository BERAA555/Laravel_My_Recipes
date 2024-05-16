<?php

namespace Database\Factories;

use App\Models\Food;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Step>
 */
class StepFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $names = [  "Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım." ,
                    "Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım." ,
                    "Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım." ,
                    "Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t" , 
                    "Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım" ,
                  ] ;
        return [
            'food_id' => fake()->randomElement(['1', '2' ,"3" , '4', '5' ,"6" , '7', '8' ,"9" , "10" ,"11" , "12" ,"13" , "14" ,"15"]),
            'name' => fake()->randomElement([$names[0] , $names[1] , $names[2] , $names[3] , $names[4]]) ,
     
        ];
    }
}
