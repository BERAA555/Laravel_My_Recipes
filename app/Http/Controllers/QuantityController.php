<?php

namespace App\Http\Controllers;

use App\Models\Food;
use App\Models\Menu;
use App\Models\Quantity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class QuantityController extends Controller
{

    public function addquantity (){
        $menus = Menu::get();
        $foods = Food::get();
        $foodHaves = array();
        foreach($foods as $food){
            if ($food->quantities != "[]"){
                array_push($foodHaves , $food );
            }
        }
        return view('foodData.addQuantity' , compact("menus" , "foods", "foodHaves"));
    }

    public function store(Request $request){
        $food = Food::find($request->food_id);
        if ($food->quantities == "[]"){
            for ($i = 0; $i < count($request->name); $i++){
                $request->validate([
                    'name' => 'required' ,  
                    "name.*"  => 'required' ,  
                    'food_id' => 'required' ,
                ]);
                Quantity::create([
                    'food_id' => $request->food_id,
                    'name' => $request->name[$i],
                ]);
            } 
            return redirect()->route("add_steps");
        }else{
            return Redirect::back()->withErrors("Already There Are Quantities For This Food. For Change Quantities Delete It And Re-Upload Again ");
        }
    } 

    public function destroy($id) {
        $users = Quantity::get()->where('food_id', $id);   
        foreach($users as $user){
            $user->delete();
        }
        return redirect()->back() ;
    }
}
