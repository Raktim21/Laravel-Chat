<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ChatController;
use App\Http\Controllers\ColorSettingController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\GeneralSettingController;
use App\Http\Controllers\SocialurlController;
use App\Http\Controllers\SubscriberController;
use App\Http\Controllers\ThemeSettingController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['middleware' => 'visitor_log'], function(){
    Route::get('/', function () {
        return redirect('login');
    });
});

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('admin.index');
// })->name('dashboard');

// Admin Group Route
Route::group(['prefix' => 'admin','middleware' => ['auth']], function(){

     // AdminController
     Route::get('dashboard', [AdminController::class, 'index'])->name('dashboard');
     Route::get('users/list', [AdminController::class, 'userList'])->name('users.index');
     Route::get('users/{id}/destroy', [AdminController::class, 'userDestroy'])->name('users.destroy');

    //  GeneralSettingController
    Route::resource('generalSettings', GeneralSettingController::class);

    //  ColorSettingController
    Route::resource('colorSettings', ColorSettingController::class);

    //  SocialurlController
    Route::resource('socialurls', SocialurlController::class);

    // ThemeSettingController 
    Route::get('theme-color', [ThemeSettingController::class, 'color'])->name('theme.color');
    Route::get('theme-toggle', [ThemeSettingController::class, 'toggle'])->name('theme.toggle');


    //chat controller
    Route::resource('chat', ChatController::class);

});

    //  ContactController
    Route::resource('contacts', ContactController::class);

    //  SubscriberController
    Route::resource('subscribers', SubscriberController::class);
