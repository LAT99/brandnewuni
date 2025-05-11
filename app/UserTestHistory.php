<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserTestHistory extends Model
{
    //
    protected $table = 'user_test_histories';
    protected $fillable = [
        'question_group', 'id_training', 'answered', 'score', 'user_id',
    ];

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function trainingManagement()
    {
        return $this->belongsTo('App\TrainingManagement', 'id_training', 'id');
    }
}
