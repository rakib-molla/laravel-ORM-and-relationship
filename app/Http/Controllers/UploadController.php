<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Image;
use Illuminate\Http\Request;

class UploadController extends Controller
{
    public function upload()
    {
        return view('upload');
    }
    public function store(Request $request)
    {
        $request->validate([
            'image'=> 'required|file|mimes:jpg,png,jpeg|max:2048'
        ]);
        $file = $request->file('image');
        $name = $file->getClientOriginalName();
        $extension = $file->getClientOriginalExtension();
        $size = $file->getSize();
        // $filePath = $request->file('image')->store('images');
        $newName = time() . '_' . $name;
        
        $uploadFile = $file->storeAs('photos' , $newName,[
            'disk' => 'public'
        ]);

        Image::create([
            'name' => $newName,
            'path' => $uploadFile
        ]);

        return redirect()->back()->with('success', 'File uploaded successfully');
    }

}