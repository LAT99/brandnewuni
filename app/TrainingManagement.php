<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TrainingManagement extends Model
{
    protected $table = 'training_management';
    public function videoManagement()
    {
        return $this->hasMany('App\Video', 'quarter_id', 'id');
    }
}
