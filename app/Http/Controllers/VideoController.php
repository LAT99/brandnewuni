<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use DB;
use App\UserTestHistory;
use App\Video;
use Config;
use App\TrainingManagement;

class VideoController extends Controller
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
    public function managementVideo()
    {
        $quartersList = TrainingManagement::Distinct('year')->orderBy('year', 'DESC')->orderBy('month','DESC')->get();
        $years = TrainingManagement::Distinct('year')->orderBy('year', 'DESC')->pluck('year');
        $quarters = TrainingManagement::with('videoManagement')->orderBy('year', 'DESC')->orderBy('month', 'DESC')->get()->toArray();
        return view('admin.videos.index', compact('quartersList', 'quarters'));
    }

    public function createVideo(Request $request)
    {
        try{
            $idTraining = $request->get('id_training');
            $videoRequest = $request->get('video');
            $videoName = '';
            if ($request->hasFile('video')) {
                $destinationPath = public_path('/videos/quarter/');
                $video = $request->file('video');
                $filename = time().'.'.$video->getClientOriginalExtension();
                $video->move($destinationPath, $filename);
                $videoName = $filename;
            }
            $imageName = '';
            if ($request->hasFile('image')) {
                $destinationPath = public_path('/images/quarter/');
                $image = $request->file('image');
                $filename = time().'.'.$image->getClientOriginalExtension();
                $image->move($destinationPath, $filename);
                $imageName = $filename;
            }
            $videoNew = new Video();
            $videoNew->quarter_id = $idTraining;
            $videoNew->video = $videoName;
            $videoNew->image = $imageName;
            $videoNew->save();
            return back()->withSuccess('Đã thêm mới video thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function deleteVideo(Request $request)
    {
        try{
            $video = Video::find($request->get('video_id'));
            if($video){
                $video->delete();
            }else{
                throw new \Exception();
            }
            return back()->withSuccess('Đã xóa video thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }
}
