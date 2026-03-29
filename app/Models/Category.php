<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
