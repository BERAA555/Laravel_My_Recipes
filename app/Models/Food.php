<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    use HasFactory;
    protected $fillable = [ 'name' , 'explane',  'like', "menu_id" ];

    public function photos() {
        return $this->hasMany(Photo::class , 'food_id'); 
    }

    public function steps() {
        return $this->hasMany(Step::class , 'food_id'); 
    }

    public function commons() {
        return $this->hasMany(Common::class , 'food_id'); 
    }

    public function quantities() {
        return $this->hasMany(Quantity::class , 'food_id'); 
    }

}
