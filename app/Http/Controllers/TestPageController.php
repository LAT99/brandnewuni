<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TrainingManagement;
use App\Question;
use App\UserTestHistory;
use Illuminate\Support\Facades\Auth;
use DB;
use App\QuarterGroupQuestion;
use App\User;

class TestPageController extends Controller
{

    public function updateSeen(Request $request)
    {
        $idTraining = $request->get('idTraining');
        $temp = UserTestHistory::where('id_training', $idTraining)->where('user_id', Auth::user()->id)->where('type', 1)->first();
        if(!$temp){
            $training = new UserTestHistory();
            $training->id_training = $idTraining;
            $training->user_id =Auth::user()->id;
            $training->type = 1;
            $training->score = 0;
            $training->save();
        }
        return response()->json(['status' => true]);
    }
    public function index()
    {
        // $infoTraining = TrainingManagement::where('status', 1)->get();
        $training = TrainingManagement::orderBy('created_at', 'DESC')->where('status', 1)->first();
        return view('pages.test_page', compact('training'));
        // return view('pages.guide_test');
    }

    public function detailTest($month, $year, $id) {
        //get group question active for id_quater
        $checkActive = QuarterGroupQuestion::where('id_training', $id)->where('status_active', 1)->first();
        if($checkActive){
            $idGroupQuestionActive = $checkActive->group;
        }else{
            $idGroupQuestionActive = '';
        }
        $trainingManagement = TrainingManagement::with('videoManagement')->where('id', $id)->first()->toArray();
        $infoUserTest = UserTestHistory::where('id_training', $id)->where('user_id', Auth::user()->id)->where('type', 0)->first();
        $infoUserTraining = UserTestHistory::where('id_training', $id)->where('user_id', Auth::user()->id)->where('type', 1)->first();
        $infoQuestionTraning = Question::where('id_training', $id)->first();
        
        return view('pages.guide_test', compact('month', 'year', 'id', 'infoUserTest', 'infoUserTraining', 'trainingManagement', 'infoQuestionTraning', 'idGroupQuestionActive'));
    }

    public function correctAnswer($id_training, $group, $id_history)
    {
        try{
            $historyInfo = UserTestHistory::find($id_history);
            $trainingInfo = TrainingManagement::where('id', $id_training)->first();
            $month = $trainingInfo->month;
            $year = $trainingInfo->year;
            $listAnswer = json_decode($historyInfo->answered, true);
            if($historyInfo->user_id == Auth::user()->id && $historyInfo->question_group == $group && $id_training == $historyInfo->id_training) {
                $questions = Question::where('id_training', $id_training)->where('question_group', $group)->get();
                $questionsList = array();
                if(!empty($questions)){
                    foreach($questions as $key => $question){
                        $questionsList[$key]['question'] = $question['questions'];
                        $questionsList[$key]['answers'] = json_decode($question['answer']);
                        $questionsList[$key]['no_question'] = $question['id'];
                        $questionsList[$key]['correct'] = $question['correct'];
                        $questionsList[$key]['user_answer'] = isset($listAnswer[$question['id']]) ? $listAnswer[$question['id']] : '';
                    }
                }
                return view('pages.show_result', compact('questionsList', 'group', 'month', 'year', 'listAnswer'));
            }
            return redirect()->route('main-page');
        }catch(\Exception $e){
            return redirect()->route('main-page');
        }
 
    }

    public function historyTest($id_training, $group, $id_history)
    {
        try{
            $historyInfo = UserTestHistory::find($id_history);
            $trainingInfo = TrainingManagement::where('id', $id_training)->first();
            $month = $trainingInfo->month;
            $year = $trainingInfo->year;
            $listAnswer = json_decode($historyInfo->answered, true);
            if($historyInfo->user_id == Auth::user()->id && $historyInfo->question_group == $group && $id_training == $historyInfo->id_training) {
                $questions = Question::where('id_training', $id_training)->where('question_group', $group)->get();
                $questionsList = array();
                if(!empty($questions)){
                    foreach($questions as $key => $question){
                        $questionsList[$key]['question'] = $question['questions'];
                        $questionsList[$key]['answers'] = json_decode($question['answer']);
                        $questionsList[$key]['no_question'] = $question['id'];
                        $questionsList[$key]['correct'] = $question['correct'];
                        $questionsList[$key]['user_answer'] = isset($listAnswer[$question['id']]) ? $listAnswer[$question['id']] : '';
                    }
                }
                return view('pages.history_test', compact('questionsList', 'group', 'month', 'year', 'listAnswer'));
            }
            return redirect()->route('main-page');
        }catch(\Exception $e){
            return redirect()->route('main-page');
        }
    }

    public function resultTest($id_training, $id_history, $question_group)
    {
        try{
        $trainingInfo = TrainingManagement::find($id_training);
        $month = $trainingInfo->month;
        $year = $trainingInfo->year;
        $idHistory = $id_history;
        $historyInfo = UserTestHistory::find($id_history);
        if($historyInfo->user_id == Auth::user()->id) {
            $score = $historyInfo->score;
            $group = $historyInfo->question_group;
            $idTraining = $historyInfo->id_training;
            return view('pages.result_test', compact('score', 'group', 'idTraining', 'month', 'year', 'historyInfo'));
        }else{
            return redirect()->route('main-page');
        }
        }catch(\Exception $e){
            return redirect()->route('main-page');
        }
    }

    public function question($id_training, $group)
    {
        //check number test
        $countNumberTest = get_count_tested_quarter($id_training);
        //check group active
        $checkActive =  QuarterGroupQuestion::where('id_training', $id_training)->where('group', $group)->where('status_active', 1)->first();
        if(!$checkActive || $countNumberTest >= 10){
            return redirect()->route('main-page');
        }
        $infoQuestionTraning = Question::where('id_training', $id_training)->first();
        if($infoQuestionTraning){
            //get id traing management id
            $trainingInfo = TrainingManagement::where('id', $id_training)->first();
            $month = $trainingInfo->month;
            $year = $trainingInfo->year;
            $idTraining = $id_training;
            //get list questions
            $questions = Question::where('id_training', $idTraining)->where('question_group', $group)->get()->toArray();
            shuffle($questions);
            $questionsList = array();
            if(!empty($questions)){
                foreach($questions as $key => $question){
                    $questionsList[$key]['question'] = $question['questions'];
                    $questionsList[$key]['answers'] = json_decode($question['answer']);
                    $questionsList[$key]['no_question'] = $question['id'];
                }
            }
            return view('pages.questions', compact('questionsList', 'idTraining', 'group', 'month', 'year'));
        }else{
            return redirect()->route('main-page');
        }
       
    }

    public function submitTest(Request $request) {
        $idTraining = $request->get('id_training');
        $group = $request->get('group');
        $questions = Question::where('id_training', $idTraining)->where('question_group', $group)->get();
        $answerCorrect = array();
        if(!empty($questions)){
            foreach($questions as $key => $question){
                $answerCorrect[$question['id']] = $question['correct'];
            }
        }
        $answertest = $request->get('question');
        $answertest = (!empty($answertest)) ? $answertest : array();
        // $result=array_intersect($answerCorrect,$answertest);
        $result = array();
        foreach($answerCorrect as $key => $correct){
            if(isset($answertest[$key]) && $answertest[$key] == $correct){
                array_push($result, $correct);
            }
        }
        $scoreFinal = count($result);
        //Save histosy
        $history = new UserTestHistory();
        $history->question_group = $group;
        $history->id_training = $idTraining;
        $history->answered = json_encode($answertest);
        $history->score = $scoreFinal;
        $history->user_id = Auth::user()->id;
        $history->save();
        return redirect()->route('result-test-page', ['id_training' => $idTraining, 'id_history' => $history->id, 'question_group' => $group]);
    }

    public function ratings()
    {
        $arrangeUser = array();
        // $arrangetemp = UserTestHistory::with('user')->select('user_id', DB::raw('SUM(score) as score'))
        $arrangetemp = UserTestHistory::with('user')->select('user_id', DB::raw('max(score) as score'))
        ->where('type', 0)
        ->groupBy('user_id')
        ->orderBy('score', 'DESC')->get()->toArray();
        if(!empty($arrangetemp)){
            foreach($arrangetemp as $arrange){
                $staff = User::find($arrange['user_id']);
                if($staff){
                    $arrangeUser[] = $arrange;
                }
            }
        }
        return view('pages.arrange_user', compact('arrangeUser'));
    }
}
