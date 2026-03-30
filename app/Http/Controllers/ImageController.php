<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{
    public function index()
    {
        $images = Image::all();
        return view('gallery', compact('images'));
    }

    public function destroy(Request $request, Image $image){
        Storage::delete($image->path);
        Image::where('path', $image->path)->delete();
        return redirect()->back()->with('success', 'File deleted successfully');
    }
}
