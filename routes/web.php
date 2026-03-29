<?php

use App\Http\Controllers\DemoController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/users', [DemoController::class, 'index']);

Route::get('/user/add', [DemoController::class, 'demo1']);

Route::get('/user-update/{id}', [DemoController::class, 'demo2']);

Route::get('/user-delete/{id}/delete', [DemoController::class, 'deleteUser']);

Route::get('/products', [ProductController::class, 'index']);