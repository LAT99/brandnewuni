<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\UserTestHistory;
use Illuminate\Support\Facades\Auth;


if (! function_exists('get_score')) {
    function get_score()
    {
        $arrangeUser = UserTestHistory::select('user_id', DB::raw('SUM(score) as score'))
        ->where('type', 0)
        ->groupBy('user_id')
        ->orderBy('score', 'DESC')->first();
        dd($arrangeUser);
    }
}