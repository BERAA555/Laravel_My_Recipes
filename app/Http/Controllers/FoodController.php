<?php

namespace App\Http\Controllers;

use App\Models\Common;
use App\Models\Food;
use App\Models\Menu;
use App\Models\Photo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

use function PHPUnit\Framework\returnSelf;

class FoodController extends Controller
{
    public function addfood (){
        $menus = Menu::get();
        $foods = Food::get();
        return view('addFood' , compact('menus' , 'foods'));
    }

    public function updatefood ($id){
        $food = Food::find($id);
        $menus = Menu::get();
        return view('updateFood' , compact("menus", "food"));
    }


    public function details ($id){
        $menus = Menu::get();
        $food = Food :: find($id);  
        $photos = $food->photos ;
        $quantities = $food->quantities ; 
        $steps = $food->steps ;
        // return $photos[0]->path;
        return view('details' , compact("menus" ,"food", "photos" , "quantities" , "steps"));
    }


    public function store(Request $request){

        $request->validate([
            'name' => 'unique:food|required' ,  
            'explane' => 'unique:food|required' , 
        ]);
        Food::create([
            'name' => $request->name,
            'explane'  => $request->explane ,
            'menu_id' => $request->menu_id ,
        ]);
        return redirect()->route("add_photo");
    } 


    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'unique:food|required' , 
            'explane' => 'unique:food|required' , 
        ]);
        $food = Food :: find($id);         
        $food->update([
            'name'  => $request->name ,
            'explane'  => $request->explane ,
            'menu_id' => $request->menu_id ,
        ]);
        return redirect()->route("add_food") ;   
    }

    public function destroy($id)
    {
        $foods = Food::find($id);    
        $users = Photo::get()->where('food_id', $id);   
            foreach($users as $user){
                Storage::disk('beraa')->delete($user->path);
                $user->delete();
            }
        Food::destroy($id);   
        return redirect()->route("add_food");
    }
    

    public function addLike($id)
    {
        $food = Food :: find($id);  
        if ($food -> like == 0){
            $food->update([
                'like'  => 1 ,
            ]);
        }else {
            $food->update([
                'like'  => 0 ,
            ]);  
        }
        return redirect()->back();
    }

    public function search(Request $request){   
        $commons = Common::get();
        $menus = Menu::get();
        $commonshave = array();   
        foreach($commons as $common){
            if ($common->name == $request->name ){
                array_push($commonshave , $common );
            }
        }
        $foods = array(); 
        foreach($commonshave as $commonhave){
            $food = Food::find($commonhave->food_id) ;
            array_push($foods , $food );
        }
        return view('index' , compact("menus" , "foods" ));
    }
    
}
