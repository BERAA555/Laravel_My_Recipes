<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Food;
use App\Models\Menu;
use App\Models\Photo;
use App\Models\Quantity;
use App\Models\Step;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Menu::factory(4)->create();
        Food::factory(15)->create();
        Photo::factory(60)->create();
        Step::factory(60)->create();
        Quantity::factory(60)->create();
        
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
