<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Products;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    // aggregation 
    // sum , avg , min , max , count


    public function index()
    {
        try {
            // $products = Products::paginate(5);
            // relation ship with users and categories

            // Direct -> Has Relation -> hasOne, hasMany (Jokhon foreign key peter bahire thake)
            // Inverse-> Belongs Relation -> belongsTo (Jokhon foreign key peter bhitore thake)

            $products = Products::with('users', 'categories')->paginate(2);

            return response()->json($products);
        } catch (\Throwable $th) {
            //throw $th;
            Log::error('Error fetching products: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to fetch products.'], 500);
        }
    }
}
