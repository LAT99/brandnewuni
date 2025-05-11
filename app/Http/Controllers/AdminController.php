<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Question;
use Illuminate\Support\Facades\Hash;
use App\TrainingManagement;
use App\UserTestHistory;
use App\Config;
use App\News;
use App\QuarterGroupQuestion;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Exports\UsersExport;
use Maatwebsite\Excel\Facades\Excel;
use PHPMailer\PHPMailer\PHPMailer;
use View;
use DB;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    //
    public function managementStaff()
    {
        $staffs = User::where('usertype', 0)->orderBy('created_at', 'DESC')->get();
        return view('admin.management_user', compact('staffs'));
    }

    public function createStaff(Request $request)
    {
        try{
            $user = new User();
            $user->name = $request->get('name');
            $user->email = $request->get('email');
            $user->password = Hash::make($request->get('pwd'));
            $user->phone = $request->get('phone');
            $user->address = $request->get('address');
            $user->participants = $request->get('participants');
            $user->place_work = $request->get('place_work');
            $user->save();
            return redirect()->to('/admin/management-staff'); 
        }catch(\Exception $e){

            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
       
    }

    public function editMnStaff($staff_id)
    {
         $staff = User::find( $staff_id);
         if($staff){
            return view('admin.staffs.edit', compact('staff'));
         }else{
            return redirect()->to('/admin/management-staff');
         }
    }

    public function editStaff(Request $request)
    {
        $staff_id = $request->get('staff_id');
        $staff = User::find( $staff_id);
        return response()->json(['status' => true, 'email' => $staff->email, 'name' => $staff->name, 'phone' => $staff->phone, 'address' => $staff->address, 'place_work' => $staff->place_work, 'participants' => $staff->participants]);
    }

    public function updateStaff(Request $request)
    {
        try{
            DB::beginTransaction();
            $staff = User::find($request->get('staff_id'));
            $isOldSendMail = $staff->is_send_mail;
            $staff->name = $request->get('edit_name');
            $staff->email = $request->get('edit_email');
            $staff->phone = $request->get('edit_phone');
            $staff->address = $request->get('edit_address');
            $staff->participants = $request->get('edit_participants');
            $staff->place_work = $request->get('edit_place_work');
            if(isset($request->status) && $request->status == 1){
                $staff->is_send_mail = 1;
                $staff->status = 1;
            }else{
                $staff->status = 0;
            }
            $staff->save();
            //send Mail
            if(!$isOldSendMail && $staff->is_send_mail){
                $password = "ltfwsswrxtlwzsmt";
                $username = "delltranning@gmail.com";
                require '../vendor/autoload.php';
                $text = View::make('mails.notify_mail', ['name'=>$staff->name]);

                $mail = new PHPMailer(true);
                $mail->CharSet = "UTF-8";
                    // $mail->SMTPDebug = 0;
                $mail->isSMTP();
                $mail->Host       = "smtp.gmail.com";
                $mail->SMTPAuth   = true;
                $mail->Username   = $username;
                $mail->Password   = $password;
                $mail->SMTPSecure = 'ssl';
                $mail->Port       = 465;
                $mail->SMTPOptions = array(
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false,
                        'allow_self_signed' => true
                    )
                );
                $mail->setFrom('dell.training@metanvietnam.com', 'Dell Viet Nam');
                $mail->addAddress($staff->email, $staff->name) ;

                    //content
                $mail->isHTML(true);
                $mail->Subject = 'Chào mừng đến với Website Dell Training';
                $mail->Body    = $text;
                $mail->send();
            }
            DB::commit();
            return back()->withSuccess('Cật nhật thành công!');
       }catch(\Exception $e){
            DB::rollback();
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function managementQuarter()
    {
        $years = TrainingManagement::Distinct('year')->orderBy('year', 'DESC')->pluck('year');
        $quartersList = array();
        if(!empty($years)){
            foreach($years as $year){
                $quarters = TrainingManagement::where('year', $year)->orderBy('month', 'DESC')->get()->toArray();
                $quartersList[$year] = $quarters;
            }
        }
        return view('admin.management_quarter', compact('quartersList'));
    }

    public function createQuarter(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            //check exist quarter 
            $tempCheck = TrainingManagement::where('month', $request->get('month'))->where('year', $request->get('year'))->first();
            if($tempCheck){
                $message = "Dữ liệu đã tồn tại";
                throw new \Exception($message);
            }
            //end check exist
            $quarter = new TrainingManagement();
            $destinationPath = public_path('/images/quarter/');
            $name = null;
            
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $filename = time().'.'.$image->getClientOriginalExtension();
                $image->move($destinationPath, $filename);
                $name = $filename;
            }
            $video = null;
            if ($request->hasFile('video')) {
                $destinationPath = public_path('/videos/quarter/');
                $video = $request->file('video');
                $filename = time().'.'.$video->getClientOriginalExtension();
                $video->move($destinationPath, $filename);
                $video = $filename;
            }
            $quarter->year = $request->get('year');
            $quarter->month = $request->get('month');
            $quarter->name = $name;
            $quarter->video = $video;
            $quarter->save();
            // return redirect()->to('/admin/management-quarter'); 
            return back()->withSuccess('Đã thêm mới Quý thành công!');
       }catch(\Exception $e){
            return back()->withErrors(['msg' => $message]);
        }

    }

    public function deleteQuestion(Request $request)
    {
        try{
            $question = Question::find($request->get('question_id'));
            if($question){
                $question->delete();
            }
            return back()->withSuccess('Đã xóa thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function managementQuestions()
    {
        // dd(s);
        $years = TrainingManagement::Distinct('year')->orderBy('year', 'DESC')->pluck('year');
        $quartersList = array();
        if(!empty($years)){
            foreach($years as $year){
                $quarters = TrainingManagement::where('year', $year)->orderBy('month', 'DESC')->get()->toArray();
                //Get list questions
                $questions = array();
                if(!empty($quarters)){
                    foreach($quarters as $key => $quarter){
                        $questions = Question::select('question_group')->where('id_training', $quarter['id'])->groupBy('question_group')->orderBy('question_group')->get()->toArray();
                        $quarters[$key]['questions'] = $questions;
                    }
                }
                $quartersList[$year] = $quarters;
            }
        }
        return view('admin.management_questions', compact('quartersList'));
    }

    public function getGroupQuestion($id_training, $id_group)
    {
        $questionList = array();
        $questions = Question::where('question_group', $id_group)->where('id_training', $id_training)->get()->toArray();
        if(!empty($questions)){
            foreach($questions as $key => $question){
                $questions[$key]['answer'] = json_decode($question['answer']);
            }
        }
        return view('admin.management_questions_group', compact('questions', 'id_training', 'id_group'));
    }

    public function editQuestion($id_question)
    {
        $question = Question::find($id_question)->toArray();
        if($question){
            $question['answer'] = json_decode($question['answer']);
        }
        return view('admin.managementQuestion.edit', compact('question'));
    }

    public function updateQuestion(Request $request)
    {
        try{
            $question = Question::find($request->question_id);
            $answerTemp = $request->get('answer');
            $answer = array();
            foreach($answerTemp as $temp){
                if($temp){
                    array_push($answer, $temp);
                }
            }
            $answer = json_encode($answer, true);
            $question->questions = $request->get('questions');
            $question->correct = $request->get('correct');
            $question->answer =  $answer;
            $question->save();
            return redirect()->to('/admin/management-questions/group/'.$question->id_training.'/'.$question->question_group)->withSuccess('Đã chỉnh sửa thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function createQuestion($id_training, $group)
    {
        $training = TrainingManagement::find($id_training);
        return view('admin.managementQuestion.create', compact('id_training', 'group', 'training'));
    }

    public function saveQuestion(Request $request)
    {
        try{
            $question = new Question();
            $answerTemp = $request->get('answer');
            $answer = array();
            foreach($answerTemp as $temp){
                if($temp){
                    array_push($answer, $temp);
                }
            }
            $answer = json_encode($answer, true);
            $question->questions = $request->get('questions');
            $question->correct = $request->get('correct');
            $question->answer =  $answer;
            $question->question_group = $request->get('group');
            $question->id_training = $request->get('id_training');
            $question->save();
            return redirect()->to('/admin/management-questions/group/'.$request->get('id_training').'/'.$request->get('group'))->withSuccess('Đã thêm thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function createGroupQuestion()
    {
        $quartersList = TrainingManagement::Distinct('year')->orderBy('year', 'DESC')->orderBy('month','DESC')->get();
        return view('admin.groupQuestion.create', compact('quartersList'));
    }

    public function saveGroupQuestion(Request $request) 
    {
        $id_training =  $request->get('id_training');
        $groupTemp = Question::where('id_training', $id_training)->distinct('question_group')->get()->count();
        $questionGroup = $groupTemp+1;
        $answerList = $request->get('answer');
        $correctList = $request->get('correct');
        $questionsList = $request->get('questions');
        foreach($correctList as $key => $correct){
            $questionNew = new Question();
            $questionNew->id_training = $id_training;
            $questionNew->questions = $questionsList[$key];
            $questionNew->correct = $correct;
            $questionNew->question_group = $questionGroup;
            $answer = array();
            foreach($answerList[$key] as $temp){
                if($temp){
                    array_push($answer, $temp);
                }
            }
            $answer = json_encode($answer, true);

            $questionNew->answer = $answer;
            $questionNew->save();
        }
        $quarterGroup = new QuarterGroupQuestion();
        $quarterGroup->id_training = $id_training;
        $quarterGroup->group = $questionGroup;
        $quarterGroup->status_active = 0;
        $quarterGroup->save();
        //save quarter_training group question
        return redirect()->to('/admin/management-questions');
    }

    public function deleteStaff(Request $request)
    {
        try{
            $staff = User::find($request->get('staff_delete'));
            $staff->delete();
            return back()->withSuccess('Đã xóa thành công!');
       }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function editQuarter(Request $request)
    {
        $quarter = TrainingManagement::find($request->get('quarter_id'))->toArray();
        $quarter['name'] = asset('/images/quarter/').'/'.$quarter['name'];
        $quarter['video'] = asset('/videos/quarter/').'/'.$quarter['video'];
        // dd(response()->json(['status' => true, 'month' => $quarter['month'], 'year' => $quarter['year'], 'name' => $quarter['name'], 'video' => $quarter['video'], 'status' => $quarter['status']]));
        return response()->json(['status' => true, 'month' => $quarter['month'], 'year' => $quarter['year'], 'name' => $quarter['name'], 'video' => $quarter['video'], 'status_field' => $quarter['status']]);
    }

    public function updateQuarter(Request $request)
    {
        try{
            $quarter = TrainingManagement::find($request->get('quarter_id'));
            $quarter->month = $request->get('month_edit');
            $quarter->year = $request->get('year_edit');
            $quarter->status = $request->get('status_edit');
            $destinationPath = public_path('/images/quarter/');
                $name = null;
                
                if ($request->hasFile('image_edit')) {
                    $image = $request->file('image_edit');
                    $filename = time().'.'.$image->getClientOriginalExtension();
                    $image->move($destinationPath, $filename);
                    $name = $filename;
                    $quarter->name = $name;
                }
                $video = null;
                if ($request->hasFile('video_edit')) {
                    $destinationPath = public_path('/videos/quarter/');
                    $video = $request->file('video_edit');
                    $filename = time().'.'.$video->getClientOriginalExtension();
                    $video->move($destinationPath, $filename);
                    $video = $filename;
                    $quarter->video = $video;
                }
                $quarter->save();
                return back()->withSuccess('Đã cập nhật thành công!');
            }catch(\Exception $e){
                return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
            }
    }

    public function deleteDatabase()
    {
        $hitory = UserTestHistory::get();
        foreach($hitory as $his){
            $his->delete();
        }
        $users = User::where('email', '!=', 'admin_dell@gmail.com')->get();
        foreach($users as $user){
            $user->delete();
        }

        $quarters = TrainingManagement::get();
        foreach($quarters as $quarter){
            $quarter->delete();
        }

        $questions = Question::get();
        foreach($questions as $question){
            $question->delete();
        }
        
    }

    public function commonManagement()
    {
        $bannerInfo = Config::where('name', 'banner')->first();
        $banner = array();
        if($bannerInfo){
            $banner =  json_decode($bannerInfo->config, true);
        }
        //certificate
        $certificateInfo = Config::where('name', 'certificate_time')->first();
        $certificateTime = array();
        if($certificateInfo){
            $certificateTime =  json_decode($certificateInfo->config, true);
        }

        //Time test
        $timeTest = Config::where('name', 'time_test')->first();
        return view('admin.common.index', compact('banner', 'certificateTime', 'timeTest'));
    }

    public function createConfig(Request $request)
    {
        $configName = $request->get('config');
        try{
            $configCreate = new Config();
            if($configName == 'banner'){
                $destinationPath = public_path('/images/banner/');
                $name = null;
                if ($request->hasFile('banner')) {
                    $image = $request->file('banner');
                    $filename = time().'.'.$image->getClientOriginalExtension();
                    $image->move($destinationPath, $filename);
                    $name = $filename;
                }
                $temp = array('banner' => $name);
                $tempBanner = json_encode($temp, true);
                $configCreate->name = "banner";
                $configCreate->config = $tempBanner;
                $configCreate->save();
                return back()->withSuccess('Đã thêm Banner thành công!');
            }

            if($configName == 'certificate_time'){
                $fromTime = $request->get('from_time');
                $toTime = $request->get('to_time');
                $text = $request->get('text_certificate');
                $certificateTime['certificate_time'] = array('from_time' => $fromTime, 'to_time' => $toTime, 'text' => $text);
                $certificateTime = json_encode($certificateTime, true);
                $configCreate->name = "certificate_time";
                $configCreate->config = $certificateTime;
                $configCreate->save();
                return back()->withSuccess('Đã thêm thông tin chứng chỉ thành công!');
            }

            if($configName == 'time_test'){
                $configCreate->name = "time_test";
                $configCreate->config = $request->get('time_val');
                $configCreate->save();
                return back()->withSuccess('Đã thêm thời hạn nộp bài thành công!');
            }



        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function updateConfig(Request $request)
    {
        $configName = $request->get('config_edit');
        try{
            if($configName == 'banner'){
                $configCreate = Config::where('name', 'banner')->first();
                $destinationPath = public_path('/images/banner/');
                $name = null;
                if ($request->hasFile('banner_edit')) {
                    $image = $request->file('banner_edit');
                    $filename = time().'.'.$image->getClientOriginalExtension();
                    $uploadSuccess = $image->move($destinationPath, $filename);
                    $name = $filename;
                }
                $temp = array('banner' => $name);
                $tempBanner = json_encode($temp, true);
                $configCreate->name = "banner";
                $configCreate->config = $tempBanner;
                $configCreate->save();
                return back()->withSuccess('Đã chỉnh sửa Banner thành công!');
            }
            if($configName == 'certificate_time'){
                $certificateInfo = Config::where('name', 'certificate_time')->first();
                $fromTime = $request->get('from_time_edit');
                $toTime = $request->get('to_time_edit');
                $text = $request->get('text_certificate_edit');
                $certificateTime['certificate_time'] = array('from_time' => $fromTime, 'to_time' => $toTime, 'text' => $text);
                $certificateTime = json_encode($certificateTime, true);
                $certificateInfo->config = $certificateTime;
                $certificateInfo->save();
                return back()->withSuccess('Đã chỉnh sửa thông tin chứng chỉ thành công!');
            }
            if($configName == 'time_test'){
                $timeTestInfo = Config::where('name', 'time_test')->first();
                $timeTestInfo->config = $request->get('time_val_edit');
                $timeTestInfo->save();
                return back()->withSuccess('Đã chỉnh thời hạn nộp bài thành công!');
            }

        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }

    }

    public function historyScore($staff)
    {
        $checkList =  UserTestHistory::where('user_id', $staff)->where('type', 0)->orderBy('created_at', 'DESC')->get();
        return view('admin.staffs.history_score', compact('checkList'));
    }

    public function managementUser()
    {
        $roleT = array();
        $roles = Role::get();
        foreach($roles as $role){
            $temp = array();
            $pers = $role->permissions()->get();
            foreach($pers as $per){
                array_push($temp, $per->name);
            }
            $roleT[$role->name] = $temp;
        }
        $staffs = User::where('usertype', 1)->orderBy('created_at', 'DESC')->get();
       return view('admin.users.index', compact('staffs', 'roleT'));
    }

    public function managementUserCreate(Request $request)
    {
        try{
            DB::beginTransaction();
            $user = new User();
            $user->name = $request->get('name');
            $user->email = $request->get('email');
            $user->password = Hash::make($request->get('pwd'));
            $user->phone = $request->get('phone');
            $user->address = $request->get('address');
            $user->participants = $request->get('participants');
            $user->place_work = $request->get('place_work');
            $user->usertype = 1;
            $user->status = 1;
            $user->is_send_mail = 1;
            $user->save();

            //send mail
            $password = "ltfwsswrxtlwzsmt";
            $username = "delltranning@gmail.com";
            require '../vendor/autoload.php';
            $text = View::make('mails.notify_mail', ['name'=>$user->name]);

            $mail = new PHPMailer(true);
            $mail->CharSet = "UTF-8";
                // $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host       = "smtp.gmail.com";
            $mail->SMTPAuth   = true;
            $mail->Username   = $username;
            $mail->Password   = $password;
            $mail->SMTPSecure = 'ssl';
            $mail->Port       = 465;
            $mail->SMTPOptions = array(
                'ssl' => array(
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                )
            );
            $mail->setFrom('dell.training@metanvietnam.com', 'Dell Viet Nam');
            $mail->addAddress($user->email, $user->name) ;

                //content
            $mail->isHTML(true);
            $mail->Subject = 'Chào mừng đến với Website Dell Training';
            $mail->Body    = $text;
            $mail->send();
            //send mail end
            DB::commit();
            return back()->withSuccess('Đã thêm nhân viên thành công!');
        }catch(\Exception $e){
            DB::rollback();
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function managementUserDelete(Request $request)
    {
        try{
            $staff = User::find($request->get('staff_delete'));
            $staff->delete();
            return back()->withSuccess('Đã xóa thành công!');
       }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function managementUserPermission($user)
    {
        $permissions = Permission::get();
        $staff = User::find($user);
        $permissionsUser = $staff->getAllPermissions();
        $perUser = array();
        if(count($permissionsUser) > 0){
            foreach($permissionsUser as $per){
                array_push($perUser, $per->name);
            }
        }
        return view('admin.users.add_per', compact('staff', 'permissions', 'perUser'));
    }

    public function saveUserPermission(Request $request)
    {
        
        $staff = User::find($request->get('staff_id'));
        $permissionList = $request->get('permission');

        // 
        $permissionsUser = $staff->getAllPermissions();
        $perUser = array();
        if(count($permissionsUser) > 0){
            foreach($permissionsUser as $per){
                array_push($perUser, $per->name);
            }
        }
        if(!empty($perUser)){
            $staff->revokePermissionTo($perUser);
        }
        // 
        if(($permissionList)){
            $staff->givePermissionTo($permissionList);
        }
        return redirect()->to('/admin/management-users')->withSuccess('Đã thêm quyền thành công!');
    }

    public function changeGroupStatus(Request $request)
    {
        $message = "Đã chuyển trạng thái từ Hoạt động => Không hoạt động";
        try{
            $check = QuarterGroupQuestion::where('id_training', $request->get('id_training_check'))->where('group', $request->get('id_group_check'))->first();
            if($check){
                if($check->status_active){
                    $check->status_active = 0;
                    $check->save();
                }else{
                    $totals = QuarterGroupQuestion::where('id_training', $request->get('id_training_check'))->update(['status_active' => 0]);
                    $check->status_active = 1;
                    $check->save();
                    $message = "Đã chuyển trạng thái từ Không hoạt động => Hoạt động";
                }
            }
            return back()->withSuccess($message);
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }

    }

    public function export()
    {
        return Excel::download(new UsersExport, 'danhsachdaily.xlsx');
    }

    public function managementRule()
    {
        $rulesTest = Config::where('name', 'rules_test')->first();
        return view('admin.rules.index', compact('rulesTest'));
    }

    public function ruleCreate(Request $request)
    {
        $message = '';
        $configName = $request->get('config');
        try{
            $rulesTest = Config::where('name', 'rules_test')->first();
            if($rulesTest){
                $rulesTest->config = $request->get('rules_test');
                $rulesTest->save();
                $message = "Đã chỉnh sửa thành công";
            }else{
                $configCreate = new Config();
                if($configName == 'rules'){
                    $configCreate->name = "rules_test";
                    $configCreate->config = $request->get('rules_test');
                }
                $configCreate->save();
                $message = "Đã thêm thành công";
            }
            return back()->withSuccess($message);
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function managementNews()
    {
        $news = News::where('status', 0)->orderBy('created_at', 'DESC')->get();
        return view('admin.news.index', compact('news'));
    }

    public function editNews($id)
    {
        $new = News::find($id);
        return view('admin.news.edit', compact('new'));
    }

    public function newsDelete(Request $request)
    {
        try{
            $new = News::find($request->get('new_id'));
            if($new){
                $new->status = 1;
                $new->save();
                return redirect()->to('/admin/management-news')->withSuccess('Đã xóa thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function newsUpdate(Request $request)
    {
        try{
            $title = $request->get('title');
            $contentShort = $request->get('content_short');
            $contentDetail = $request->get('content_detail');
            $url = $this->make_slug($title);
            $newId = $request->get('new_id');
            $new = News::find($newId);
            $name = null;
            $destinationPath = public_path('/images/news/');
            if($new){
                if ($request->hasFile('image')) {
                    $image = $request->file('image');
                    $filename = time().'.'.$image->getClientOriginalExtension();
                    $uploadSuccess = $image->move($destinationPath, $filename);
                    $name = $filename;
                    $new->image = $name;
                }
                $new->title = $title;
                $new->url = $url;
                $new->content_short = $contentShort;
                $new->content_detail = $contentDetail;
                $new->save();
                return redirect()->to('/admin/management-news')->withSuccess('Đã update thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function newsCreate(Request $request)
    {
        $message = '';
        $configName = $request->get('config');
        try{
            $title = $request->get('title');
            $contentShort = $request->get('content_short');
            $contentDetail = $request->get('content_detail');
            $url = $this->make_slug($title);
           
            if($contentDetail){
                $contentDetail = str_replace('<img', '<img style="max-width:973px"', $contentDetail);
            }
            $name = null;
            $destinationPath = public_path('/images/news/');
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $filename = time().'.'.$image->getClientOriginalExtension();
                $uploadSuccess = $image->move($destinationPath, $filename);
                $name = $filename;
            }

            $news = new News();
            $news->url = $url;
            $news->title = $title;
            $news->image = $name;
            $news->content_short = $contentShort;
            $news->content_detail = $contentDetail;

            $news->save();
            return redirect()->to('/admin/management-news')->withSuccess('Đã thêm thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => 'Đã có lỗi xảy ra. Vui lòng reload lại trang.']);
        }
    }

    public function createNews()
    {
        return view('admin.news.create');
    }

    private function make_slug($string) {
        $replacement = '-';
        $map = array();
        $quotedReplacement = preg_quote($replacement, '/');
        $default = array(
            '/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ|À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ|å/' => 'a',
            '/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ|È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ|ë/' => 'e',
            '/ì|í|ị|ỉ|ĩ|Ì|Í|Ị|Ỉ|Ĩ|î/' => 'i',
            '/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ|Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ|ø/' => 'o',
            '/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ|Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ|ů|û/' => 'u',
            '/ỳ|ý|ỵ|ỷ|ỹ|Ỳ|Ý|Ỵ|Ỷ|Ỹ/' => 'y',
            '/đ|Đ/' => 'd',
            '/ç/' => 'c',
            '/ñ/' => 'n',
            '/ä|æ/' => 'ae',
            '/ö/' => 'oe',
            '/ü/' => 'ue',
            '/Ä/' => 'Ae',
            '/Ü/' => 'Ue',
            '/Ö/' => 'Oe',
            '/ß/' => 'ss',
            '/[^\s\p{Ll}\p{Lm}\p{Lo}\p{Lt}\p{Lu}\p{Nd}]/mu' => ' ',
            '/\\s+/' => $replacement,
            sprintf('/^[%s]+|[%s]+$/', $quotedReplacement, $quotedReplacement) => '',
        );
        //Some URL was encode, decode first
        $string = urldecode($string);
        $map = array_merge($map, $default);
        return strtolower(preg_replace(array_keys($map), array_values($map), $string));
        // return preg_replace('/\s+/u', '-', trim($string));
    }
    public function changeStaff()
    {
        return view('admin.users.change_password');
    }

    public function updatePassStaff(Request $request)
    {
            if (!(Hash::check($request->get('password_old'), Auth::user()->password))) {
                // The passwords matches
                return redirect()->back()->withErrors(['msg' => 'Mật khẩu hiện tại của bạn không khớp với mật khẩu bạn đã cung cấp. Vui lòng thử lại.']);
            }
            if(strcmp($request->get('password_old'), $request->get('password_new')) == 0){
                //Current password and new password are same
                return redirect()->back()->withErrors(['msg' => 'Mật khẩu mới không được giống với mật khẩu hiện tại của bạn. Vui lòng chọn một mật khẩu khác.']);
            }
            $messages = [
                'required'      => 'Xin nhập đầy đủ các mục',
                'confirmed'     => 'Mật khẩu mới không khớp nhau',
                'min'           => 'Xin nhập Mật khẩu tối thiểu 8 ký tự',
            ];
            $validatedData = $request->validate([
                'password_old' => 'required',
                'password_new' => 'required|min:8|confirmed',
            ], $messages);
            
            //Change Password
            $user = Auth::user();
            $user->password = Hash::make($request->get('password_new'));
            $user->save();

            return redirect()->back()->withSuccess('Đã thay đổi mật khẩu thành công!');
    }
}

