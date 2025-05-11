<?php
    use Illuminate\Database\Eloquent\Model;
    use App\UserTestHistory;
    use Illuminate\Support\Facades\Auth;
    use App\User;
    use App\Question;
    use App\QuarterGroupQuestion;
    use App\Config;
    use App\HistoryGiftUser;
    use App\ManagementCard;


    if (! function_exists('count_card')) {
        function count_card($provider_id, $price)
        {
            $cardInfo = ManagementCard::where('price',$price)->where('provider_id', $provider_id)->where('status', 1)->where('is_used', 0)->get()->toArray();
            return (count($cardInfo));
        }
    }

    if (! function_exists('get_qty_gift_used_physical')) {
        function get_qty_gift_used_physical($gift_id)
        {
            $qty = 0;
            $temps = HistoryGiftUser::where('gift_id', $gift_id)->get()->toArray();
            foreach ($temps as $key => $value) {
                $qty = $qty +  (int)$value['qty_gift'];
            }
            return ($qty);
        }
    }
    if (! function_exists('get_score_gift')) {
        function get_score_gift($user_id = null)
        {
            if(!$user_id){
                $user_id = Auth::user()->id;
            }
            $arrangeUser = UserTestHistory::select('user_id', DB::raw('max(score) as score'))
            ->where('user_id', $user_id)
            ->where('type', 0)
            ->groupBy('user_id')
            ->orderBy('score', 'DESC')->first();
            $scoreUsed = 0;
            if($arrangeUser){
                $cards = HistoryGiftUser::with('card')->where('user_id', $user_id)->where('gift_type', 0)->get()->toArray();
                foreach ($cards as $key => $value) {
                  $scoreTemp = ((int)($value['card']['price'])/50000)*10;
                  $scoreUsed = $scoreUsed + $scoreTemp;
                }
                $gifts = HistoryGiftUser::with('gift')->where('user_id', $user_id)->where('gift_type', 1)->get()->toArray();
                foreach ($gifts as $key => $value) {
                    $scoreTemp = $value['qty_gift'] * (int)$value['gift']['score'];
                    $scoreUsed = $scoreUsed + $scoreTemp;
                }
                return ($arrangeUser->score - $scoreUsed);
            }else{
                return 0;
            }
        }
    }

    if (! function_exists('get_score')) {
        function get_score($user_id = null)
        {
            if(!$user_id){
                $user_id = Auth::user()->id;
            }
            $arrangeUser = UserTestHistory::select('user_id', DB::raw('max(score) as score'))
            ->where('user_id', $user_id)
            ->where('type', 0)
            ->groupBy('user_id')
            ->orderBy('score', 'DESC')->first();
            if($arrangeUser){
                return $arrangeUser->score;
            }else{
                return 0;
            }
        }
    }

    if (! function_exists('count_question')) {
        function count_question($quarter_id, $group_question_id)
        {
            
            $questions = Question::where('question_group', $group_question_id)->where('id_training', $quarter_id)->get()->count();
            return $questions;
        }
    }

    if (! function_exists('get_rank')) {
        function get_rank($user_id = null)
        {
            if(!$user_id){
                $user_id = Auth::user()->id;
            }
            $rank = '';
            $arrangeUser = array();
            $arrangetemp = UserTestHistory::select('user_id', DB::raw('max(score) as score'))
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
            if(!empty($arrangeUser)){
                foreach($arrangeUser as $key => $arrange){
                    if($arrange['user_id'] == $user_id){
                        $rank = $key + 1;
                        break;
                    }
                }
            }
            return $rank;
        }
        if (! function_exists('get_all_permission')) {
            function get_all_permission($user_id = null)
            {
                $temp = array();
                $staff = User::find($user_id);
                $permissions = $staff->getAllPermissions();
                if(count($permissions) > 0){
                    foreach($permissions as $per){
                        array_push($temp, $per->name);
                    }
                    return $temp;
                }
                return '';
               
            }
        }

        if (! function_exists('get_status_question_group')) {
            function get_status_question_group($question_group, $quarter_id)
            {
                $result = '';
                $temp = QuarterGroupQuestion::where('id_training', $quarter_id)->where('group', $question_group)->first();
                if($temp){
                    $result = $temp->status_active;
                }
                return $result;
               
            }
        }

        if (! function_exists('get_time_test_config')) {
            function get_time_test_config($config)
            {
                $timeInfo = Config::where('name', $config)->first();
                $temp = '';
                if($timeInfo){
                    $temp =  $timeInfo->config;
                }
                return $temp;
               
            }
        }

        
        if (! function_exists('get_count_tested_quarter')) {
            function get_count_tested_quarter($quarter, $userId = null)
            {
                if(!$userId){
                    $userId = Auth::user()->id;
                }
                $info = UserTestHistory::where('id_training', $quarter)->where('user_id', $userId)->where('type', 0)
                ->orderBy('score', 'DESC')->get()->count();
                return $info;
               
            }
        }

    }