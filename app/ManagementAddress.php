<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ManagementAddress extends Model
{
    protected $table = 'management_address';
    protected $fillable = [
        'user_id', 'name', 'email', 'address', 'score', 'phone'
    ];
}
