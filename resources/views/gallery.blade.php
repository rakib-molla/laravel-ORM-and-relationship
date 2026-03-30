<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{{ config('app.name', 'Image Gallery') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=instrument-sans:400,500,600" rel="stylesheet" />
        <link rel="stylesheet" href="https://matcha.mizu.sh/matcha.css">

        
    </head>
    <body>
        <div class="container">
            <h1>Image Gallery</h1>
            
            @foreach ($images as $image)
                <div class="card" style="width: 18rem; display: inline-block; margin: 10px;">
                    <img src="{{ asset('storage/' . $image->path) }}" class="card-img-top" alt="{{ $image->name }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $image->name }}</h5>
                    </div>
                    
                        <a href="{{ route('gallery.destroy', $image) }}" type="submit" class="btn btn-danger">Delete</a>
                     
                </div>
                
            @endforeach
        </div>
    </body>
</html>

