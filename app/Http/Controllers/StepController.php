<?php

namespace App\Http\Controllers;

use App\Models\Food;
use App\Models\Menu;
use App\Models\Step;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class StepController extends Controller
{

    public function addstep (){
        $menus = Menu::get();
        $foods = Food::get();
        $foodHaves = array();
        foreach($foods as $food){
            if ($food->steps != "[]"){
                array_push($foodHaves , $food );
            }
        }
        return view('foodData.addStep' , compact('menus', "foods" , "foodHaves"));
    }

    public function store(Request $request){
        $food = Food::find($request->food_id);
        if ($food->steps == "[]"){
            for ($i = 0; $i < count($request->name); $i++){
                $request->validate([
                    'name' => 'required' ,  
                    "name.*"  => 'required' ,  
                    'food_id' => 'required' ,
                ]);
                Step::create([
                    'food_id' => $request->food_id,
                    'name' => $request->name[$i],
                ]);
            } 
            return redirect()->route("add_commons")  ;
        }else{
            return Redirect::back()->withErrors("Already There Are Steps For This Food. For Change Steps Delete It And Re-Upload Again ");
        }
    }
    
    
    public function destroy($id) {
        $users = Step::get()->where('food_id', $id);   
        foreach($users as $user){
            $user->delete();
        }
        return redirect()->back() ;
    }
}
