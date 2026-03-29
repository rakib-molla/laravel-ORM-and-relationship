<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
