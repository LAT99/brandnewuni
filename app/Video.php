<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    //
    protected $table = 'videos';
    public function quater()
    {
        return $this->belongsTo('App\TrainingManagement', 'quarter_id', 'id');
    }
}
