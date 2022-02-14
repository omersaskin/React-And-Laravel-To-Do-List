<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\HomeController;

Route::get('/app', function () {
    return view('app');
});

Route::get('/login', function () {
    return view('auth.login');
});

Route::get('/register', function () {
    return view('auth.register');
});

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('admin', [HomeController::class, 'adminHome'])->name('admin.home')->middleware('is_admin');

Route::resource('/tasks', TaskController::class);

Route::view('/{path?}', 'app');
Auth::routes();

