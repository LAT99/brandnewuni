<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use DB;
use App\UserTestHistory;
use Config;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $userType = Auth::user()->usertype;
        if(!$userType){
            $staff = User::with(["userTestHistory" => function($q){
                $q->select('user_id', DB::raw('SUM(score) as score'), DB::raw('COUNT(*) as count_test'))->where('user_test_histories.type', '=', 0)->groupBy('user_id');
            }])
            ->where('users.id', Auth::user()->id)->get()->toArray();
            return redirect()->route('main-page');
            // return view('home', compact('staff'));
        }else{
            return view('admin.dashboard');
        }
    }

    public function profile()
    {
        $participantsList = Config::get('constants.participants');
        $staff = User::with(["userTestHistory" => function($q){
            $q->select('user_id', DB::raw('SUM(score) as score'), DB::raw('COUNT(*) as count_test'))->where('user_test_histories.type', '=', 0)->groupBy('user_id');
        }])
        ->where('users.id', Auth::user()->id)->get()->toArray();
        return view('home', compact('staff', 'participantsList'));
    }

    public function checkedTest()
    {
        try{
        // where('type', 0)  Đã làm bài
        // where('type', 1) Đã xem video
        $checkList =  UserTestHistory::where('user_id', Auth::user()->id)->where('type', 0)->orderBy('created_at', 'DESC')->get();
        return view('pages.checked', compact('checkList'));
        }catch(\Exception $e){
            return redirect()->route('main-page');
        }
    }
}
