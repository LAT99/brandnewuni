<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ManagementCard extends Model
{
    protected $table = 'management_card';
    protected $fillable = [
        'provider_id', 'code_number', 'seri_number', 'price', 'score', 'status'
    ];

    public function provider()
    {
        return $this->belongsTo('App\ManagementProvider', 'provider_id', 'id');
    }
}
