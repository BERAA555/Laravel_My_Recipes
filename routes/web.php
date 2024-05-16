<?php

use App\Http\Controllers\CommonController;
use App\Http\Controllers\FoodController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\QuantityController;
use App\Http\Controllers\StepController;
use Illuminate\Support\Facades\Route;


// menu model
// for index in menu model
Route::get("/" , [MenuController::class , "index" ])->name("index");
Route::get("/index2/{id}" , [MenuController::class , "index2" ])->name("index2");
Route::get("/favorite" , [MenuController::class , "favorite" ])->name("favorite");
// menu model

Route::get("/add_menu" , [MenuController::class , "addmenu" ])->name("add_menu");
Route::get("/update_menu/{id}" , [MenuController::class , "updatemenu" ])->name("update_menu");
Route::get("/menu_foods" , [MenuController::class , "foods" ])->name("menu_foods");
Route::get("/deleteMenu/{id}" , [MenuController::class , "destroy" ])->name("deleteMenu");

Route::post("/addMenu" , [MenuController::class , "store" ])->name("addMenu");
Route::post("/updateMenu/{id}" , [MenuController::class , "update" ])->name("updateMenu");


// food model

Route::get("/add_food" , [FoodController::class , "addfood" ])->name("add_food");
Route::get("/update_food/{id}" , [FoodController::class , "updatefood" ])->name("update_food");
Route::get("/details_food/{id}" , [FoodController::class , "details" ])->name("details");
Route::get("/deleteFood/{id}" , [FoodController::class , "destroy" ])->name("deleteFood");
Route::get("/searchFood" , [FoodController::class , "search" ])->name("searchFood");

Route::post("/addFood" , [FoodController::class , "store" ])->name("addFood");
Route::post("/updateFood/{id}" , [FoodController::class , "update" ])->name("updateFood");
Route::get("/addLike/{id}" , [FoodController::class , "addLike" ])->name("addLike");

// photo model

Route::get("/add_photo" , [PhotoController::class , "addphoto" ])->name("add_photo");
Route::post("/addPhoto" , [PhotoController::class , "store" ])->name("addPhoto");
Route::get("/deletePhoto/{id}" , [PhotoController::class , "destroy" ])->name("deletePhoto");

// Common model

Route::get("/add_common" , [CommonController::class , "addcommon" ])->name("add_commons");
Route::post("/addCommon" , [CommonController::class , "store" ])->name("addCommons");
Route::get("/deleteCommon/{id}" , [CommonController::class , "destroy" ])->name("deleteCommon");

// Quantity model

Route::get("/add_quantity" , [QuantityController::class , "addquantity" ])->name("add_quantities");
Route::post("/addQuantity" , [QuantityController::class , "store" ])->name("addQuantities");
Route::get("/deleteQuantities/{id}" , [QuantityController::class , "destroy" ])->name("deleteQuantities");

// Step model

Route::get("/add_step" , [StepController::class , "addstep" ])->name("add_steps");
Route::post("/addSteps" , [StepController::class , "store" ])->name("addSteps");
Route::get("/deleteSteps/{id}" , [StepController::class , "destroy" ])->name("deleteSteps");

// Route::get('/{page}', [AdminController::class , "index"])->name("index");
