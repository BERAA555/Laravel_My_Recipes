<?php

namespace App\Http\Controllers;

use App\Models\Food;
use App\Models\Menu;
use App\Models\Photo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;

class PhotoController extends Controller
{

    public function addphoto (){
        $menus = Menu::get();
        $foods = Food::get();
        $foodHaves = array();
        foreach($foods as $food){
            if ($food->photos != "[]"){
                array_push($foodHaves , $food );
            }
        }
        return view('foodData.addPhoto' , compact("menus" , "foods" , "foodHaves"));
    }
    public function store(Request $request) {
        $food = Food::find($request->food_id);
        if ($food->photos == "[]"){
            if($files = $request->file('path')){
                foreach($files as $file){
                    $request->validate([
                        'path.*' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048',  
                        'food_id' => 'required' ,
                    ]);
                    $path = $file->store('' , "beraa");
                    Photo::create( [
                        'path'=> $path ,
                        'food_id' => $request->food_id,
                    ]);
                }   
            }    
            return redirect()->route("add_quantities") ;
        }else{
            return Redirect::back()->withErrors("Already There Are Photos For This Food. For Change Photos Delete It And Re-Upload Again ");
        }
    }
    public function destroy($id) {
        $users = Photo::get()->where('food_id', $id);   
        foreach($users as $user){
            Storage::disk('beraa')->delete($user->path);
            $user->delete();
        }
        return redirect()->back() ;
    }
}
