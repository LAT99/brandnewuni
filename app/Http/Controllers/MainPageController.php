<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TrainingManagement;
use App\Question;
use App\UserTestHistory;
use Illuminate\Support\Facades\Auth;
use DB;
use App\User;
use App\Config;
use App\QuarterGroupQuestion;
use App\News;
use App\ManagementCard;
use App\ManagementProvider;
use App\ManagementAddress;
use App\HistoryGiftUser;
use App\ManagementGift;
use Illuminate\Support\Facades\Mail;
use View;
use PHPMailer\PHPMailer\PHPMailer;

class MainPageController extends Controller
{
    public function index()
    {
        $arrangeUser = array();
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
        // get videos
        // $quarters = TrainingManagement::orderBy('year', 'DESC')->orderBy('month', 'DESC')->get();
        $quarter = TrainingManagement::orderBy('created_at', 'DESC')->where('status', 1)->first();
        $checkQuestionGroup = '';
        $infoQuestionTraning = '';
        if($quarter){
            $checkQuestionGroup = QuarterGroupQuestion::where('id_training', $quarter->id)->where('status_active', 1)->first();
            if($checkQuestionGroup){
                $infoQuestionTraning = Question::where('question_group', $checkQuestionGroup->group)->first();
            }
        }
        // $countQuarter = $quarters->count();
        // get banner
        $bannerInfo = Config::where('name', 'banner')->first();
        $banner = array();
        if($bannerInfo){
            $banner =  json_decode($bannerInfo->config, true);
        }

        return view('pages.main_page', compact('arrangeUser', 'quarter', 'banner', 'checkQuestionGroup', 'infoQuestionTraning'));
    }

    public function certificate()
    {
        //get score current
        $scoreMax = get_score();
        if($scoreMax < 18){
            return redirect()->route('main-page');
        }
        //
        $bannerInfo = Config::where('name', 'banner')->first();
        $banner = array();
        if($bannerInfo){
            $banner =  json_decode($bannerInfo->config, true);
        }
        //get config certificate
        $certificateInfo = Config::where('name', 'certificate_time')->first();
        $certificateTime = array();
        if($certificateInfo){
            $certificateTime =  json_decode($certificateInfo->config, true);
        }
        return view('pages.certificate', compact('certificateTime', 'banner'));
    }

    public function videos()
    {
        $quarters = TrainingManagement::with('videoManagement')->where('status', 1)->orderBy('year', 'DESC')->orderBy('month', 'DESC')->get()->toArray();
        return view('pages.videos', compact('quarters'));
    }

    public function showRule()
    {
        $rulesTest = Config::where('name', 'rules_test')->first();
        return view('pages.rules', compact('rulesTest'));
    }

    public function showNews()
    {
        // $news = Config::where('name', 'news')->first();
        $news = News::where('status', 0)->orderBy('created_at', 'DESC')->get();
        return view('pages.news', compact('news'));
    }

    public function detailNews($id, $slug)
    {
        try{
            $news = News::where('status', 0)->where('id', $id)->first();
            if($news){
                return view('pages.detail_news', compact('news'));
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return redirect()->route('main-page');
        }
    }

    //Gift
    public function gifts()
    {
        $checkGift = get_score_gift();
        $cards = array();
        $temp2 = array();
        $temp1 = ManagementCard::with('provider')->where('status', 1)->orderBy('provider_id')->where('is_used', 0)->get()->toArray();
        foreach($temp1 as $temp){
            $temp2[$temp['provider_id'].'_'.$temp['price']] = $temp;
        }
        foreach($temp2 as $temp3){
            $cards[] = $temp3;
        }
        //physicalGift
        $physicalGifts = ManagementGift::where('gift_status', 1)->where('is_used', 0)->get()->toArray();
        return view('pages.gifts', compact('cards', 'checkGift', 'physicalGifts'));
    }

    public function giftsDetail($price, $provider_id)
    {
        try{
            $cardInfo = ManagementCard::where('price',$price)->where('provider_id', $provider_id)->where('is_used', 0)->first();
            if($cardInfo){
                $score = get_score_gift();
                $temp = ((int)($cardInfo->price)/50000)*10;
                if($score >= $temp){
                    $cardInfo = ManagementCard::with('provider')->where('price',$price)->where('provider_id', $provider_id)->where('is_used', 0)->where('status', 1)->orderBy('provider_id')->first()->toArray();
                    return view('pages.gifts_detail', compact('cardInfo'));
                }else{
                    throw new \Exception();
                }
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return redirect()->route('main-page');
        }
    }

    public function giftsConfirmPhysical(Request $request){
        try{
            $gift_id = $request->get('gift_id');
            $qty = $request->get('qty');
            $giftInfo = ManagementGift::where('gift_status', 1)->where('is_used', 0)->where('id', $gift_id)->first();
            if($giftInfo){
                //check gift used:
                $temp1 = (int)($giftInfo->gift_qty) - get_qty_gift_used_physical($gift_id);
                if($qty <= $temp1){
                    return view('pages.gifts_address_physical', compact('gift_id', 'qty'));
                }else{
                    throw new \Exception();
                }
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return redirect()->route('gifts')->withErrors('Đã có lỗi sảy ra. Xin hãy vui lòng load lại trang!');
        }
    }
    
    public function giftsConfirm(Request $request)
    {
        try{
            $price = $request->get('price');
            $provider_id = $request->get('provider_id');
            $qty = $request->get('qty');
            $cardInfo = ManagementCard::where('price',$price)->where('provider_id', $provider_id)->where('status', 1)->where('is_used', 0)->get()->toArray();
            if(count($cardInfo) >= $qty){
                $scoreTemp = ((int)($price)/50000)*10;
                $total = $scoreTemp*$qty;
                $score = get_score_gift();
                if($score >= $total){
                    return view('pages.gifts_address', compact('price', 'provider_id', 'qty'));
                }else{
                    throw new \Exception();
                }
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return redirect()->route('gifts')->withErrors('Đã có lỗi sảy ra. Xin hãy vui lòng load lại trang!');
        }
    }

    public function giftsSavePhysical(Request $request)
    {
        try{
            DB::beginTransaction();
            $gift_id = $request->get('gift_id');
            $qty = $request->get('gift_qty');
            $giftInfo = ManagementGift::where('gift_status', 1)->where('is_used', 0)->where('id', $gift_id)->first();
            if($giftInfo){
                //check gift used:
                $temp1 = (int)($giftInfo->gift_qty) - get_qty_gift_used_physical($gift_id);
                if($qty <= $temp1){
                    $flight = ManagementAddress::create([
                        'name' => $request->get('info_name'),
                        'email' => $request->get('info_email'),
                        'user_id' => Auth::user()->id,
                        'address' => $request->get('info_address'),
                        'phone' => $request->get('info_phone'),
                    ]);
                    if($flight){
                        $add_id = $flight->id;
                        $temp2 = new HistoryGiftUser();
                        $temp2->user_id = Auth::user()->id;
                        $temp2->address_id = $add_id;
                        $temp2->gift_id = $request->get('gift_id');
                        $temp2->qty_gift = $request->get('gift_qty');
                        $temp2->gift_type = 1;
                        $temp2->save();
                    }
                    DB::commit();
                    return redirect()->route('gifts')->withSuccess('Quá trình quy đổi điểm đã hoàn tất!');
                }else{
                    throw new \Exception();
                }
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            DB::rollback();
            // return redirect()->route('main-page');
            return redirect()->route('gifts')->withErrors('Đã có lỗi sảy ra. Xin hãy vui lòng load lại trang!');
        }
    }
    public function giftsSave(Request $request){
        try{
            DB::beginTransaction();
            //
            $providerName = array();
            $provider = ManagementProvider::get()->toArray();
            foreach($provider as $pro){
                $providerName[$pro['id']] = $pro['provider_name'];
            }//
            $price = $request->get('price');
            $provider_id = $request->get('provider_id');
            $qty = $request->get('card_qty');
            $cardSendCustomer = array();
            $cardInfo = ManagementCard::where('price',$price)->where('provider_id', $provider_id)->where('status', 1)->where('is_used', 0)->get()->toArray();
            if(count($cardInfo) >= $qty){
                $scoreTemp = ((int)($price)/50000)*10;
                $total = $scoreTemp*$qty;
                $score = get_score_gift();
                if($score >= $total){
                    //lưu địa chỉ:
                    $flight = ManagementAddress::create([
                        'name' => $request->get('info_name'),
                        'email' => $request->get('info_email'),
                        'user_id' => Auth::user()->id,
                        'phone' => $request->get('info_phone'),
                    ]);
                    $listCardTemp = array();
                    if($flight){
                        $add_id = $flight->id;
                        for ($i=0; $i < $qty; $i++) { 
                            $temp1 = ManagementCard::where('price',$price)->where('provider_id', $provider_id)->where('status', 1)->where('is_used', 0)->first();
                            if($temp1){
                                $temp2 = new HistoryGiftUser();
                                $temp2->user_id = Auth::user()->id;
                                $temp2->address_id = $add_id;
                                $temp2->card_id = $temp1->id;
                                $temp2->save();
                                if($temp2){
                                    $temp1->is_used = 1;
                                    $temp1->save();
                                    $cardSendCustomer[] = $temp1;
                                }
                            }
                        }
                        //Send mail xử lý
                        if(count($cardSendCustomer) == $qty){
                            //send
                            //send mail
                            $password = "ltfwsswrxtlwzsmt";
                            $username = "delltranning@gmail.com";
                            require '../vendor/autoload.php';
                            $text = View::make('mails.notify_mail_gift', ['cardSendCustomer'=>$cardSendCustomer, 'providerName'=>$providerName]);

                            $mail = new PHPMailer(true);
                            $mail->CharSet = "UTF-8";
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
                            $mail->addAddress($request->get('info_email'), $request->get('info_name')) ;

                                //content
                            $mail->isHTML(true);
                            $mail->Subject = 'Tích điểm đổi quà Website Dell Training';
                            $mail->Body    = $text;
                            $mail->send();
                            DB::commit();
                            return redirect()->route('gifts')->withSuccess('Quá trình quy đổi điểm đã hoàn tất!');
                        }else{
                            throw new \Exception();
                        }
                    }
                }else{
                    throw new \Exception();
                }
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            DB::rollback();
            // return redirect()->route('main-page');
            return redirect()->route('gifts')->withErrors('Đã có lỗi sảy ra. Xin hãy vui lòng load lại trang!');
        }
    }

    public function giftsDetailPhysical($gift_id){
        try{
            $giftInfo = ManagementGift::where('gift_status', 1)->where('is_used', 0)->where('id', $gift_id)->first();
            if($giftInfo){
                $score = get_score_gift();
                $temp = (int)($giftInfo->score);
                if($score >= $temp){
                    $giftInfo = ManagementGift::where('gift_status', 1)->where('is_used', 0)->where('id', $gift_id)->first();
                    return view('pages.gifts_detail_physical', compact('giftInfo'));
                }else{
                    throw new \Exception();
                }
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            // return redirect()->route('main-page');
            return redirect()->route('gifts')->withErrors('Đã có lỗi sảy ra. Xin hãy vui lòng load lại trang!');
        }
    }

    public function giftNotice()
    {
        return view('pages.gift_notice');
    }
}
