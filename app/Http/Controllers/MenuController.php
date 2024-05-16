<?php

namespace App\Http\Controllers;

use App\Models\Food;
use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{

    public function index()
    {
        $menus = Menu::get();
        $food = Food::get();  
        $foods = array();
        foreach( $food as $array){
            if ($array->photos != "[]"){
                array_push($foods , $array);
            }
        }
        return view('index' ,compact('menus' , "foods"));
    }

    public function index2($id)
    {              
        $menus = Menu::get();
        $menu = Menu::find($id);
        $food = $menu->food; 
        $foods = array();
        foreach( $food as $array){
            if ($array->photos != "[]"){
                array_push($foods , $array);
            }
        }
        return view('index' ,compact('menus' ,'foods'));
    }

    public function favorite()
    {
        $menus = Menu::get();
        $food = Food::get()->where('like', 1);  
        $foods = array();
        foreach( $food as $array){
            if ($array->photos != "[]"){
                array_push($foods , $array);
            }
        }
        return view('index' ,compact("menus" , 'foods'));
    }


    public function addmenu()
    {
        $menus = Menu::get();
        return view('addMenu', compact('menus'));
    }
    public function updatemenu($id)
    {
        $menu = Menu::find($id);
        return view('updateMenu', compact('menu'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'unique:menus|required' ,  
        ]);
        Menu::create([
            'name' => $request->name,
        ]);
        return redirect()->route("add_menu");
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'unique:menus|required' ,  
        ]);
        $menu = Menu :: find($id);         
        $menu->update([
            'name'  => $request->name ,
        ]);
        return redirect()->route("add_menu");   
    }


    public function destroy($id)
    {
        Menu::destroy($id);    
        return redirect()->route("add_menu");
    }

    public function foods($id)
    {
        $foods = Menu::find($id);   
        return $foods->foods  ;   
    }

}
