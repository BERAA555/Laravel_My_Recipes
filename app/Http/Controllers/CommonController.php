<?php

namespace App\Http\Controllers;

use App\Models\Common;
use App\Models\Food;
use App\Models\Menu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class CommonController extends Controller
{

    public function addcommon (){
        $menus = Menu::get();
        $foods = Food::get();
        $foodHaves = array();
        foreach($foods as $food){
            if ($food->commons != "[]"){
                array_push($foodHaves , $food );
            }
        }
        return view('foodData.addCommon', compact("menus" ,"foods" , "foodHaves" ));
    }


    public function store(Request $request){
        $food = Food::find($request->food_id);
            if ($food->commons == "[]"){
            for ($i = 0; $i < count($request->name); $i++){

                $request->validate([
                    'name' => 'required' ,  
                    "name.*"  => 'required' ,  
                    'food_id' => 'required' ,
                ]);
                Common::create([
                    'food_id' => $request->food_id,
                    'name' => $request->name[$i],
                ]);
            } 
            return redirect()->route("index") ;
        }else{
            return Redirect::back()->withErrors("Already There Are Commons For This Food. For Change Commons Delete It And Re-Upload Again ");
        }
    }  

    public function destroy($id) {
        $users = Common::get()->where('food_id', $id);   
        foreach($users as $user){
            $user->delete();
        }
        return redirect()->back() ;
    }
}
