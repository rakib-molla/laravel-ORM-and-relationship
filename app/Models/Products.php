<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $fillable = ['name', 'price', 'category_id', 'user_id'];

    function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    function categories()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
}
