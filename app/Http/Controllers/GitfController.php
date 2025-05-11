<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Imports\CardImport;
use Maatwebsite\Excel\Facades\Excel;
use App\ManagementGift;
use App\ManagementProvider;
use App\ManagementCard;
use Carbon\Carbon;
use App\HistoryGiftUser;
use App\Exports\ManagementCardExport;
use App\Config;

class GitfController extends Controller
{
    //
    public function index(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $curentDate = Carbon::now()->format('Y-m-d');
            $fromDate = $curentDate;
            if(isset($request->from_date)){
                $fromDate = $request->from_date;
            }
            $toDate = $curentDate;
            if(isset($request->to_date)){
                $toDate = $request->to_date;
            }
    
            $providerName = array();
            $provider = ManagementProvider::get()->toArray();
            foreach($provider as $pro){
                $providerName[$pro['id']] = $pro['provider_name'];
            }
            $listGiftOnlinehistoryToday = HistoryGiftUser::with('card', 'address')->where('gift_type', 0)
            ->whereDate('created_at','>=', Carbon::parse($fromDate)->format('Y-m-d H:i:s'))
            ->whereDate('created_at','<=', Carbon::parse($toDate)->format('Y-m-d H:i:s'))->orderBy('created_at', 'DESC')->get()->toArray();
            $listGiftPhysicalhistoryToday = HistoryGiftUser::with('gift', 'address')->where('gift_type', 1)
            ->whereDate('created_at','>=', Carbon::parse($fromDate)->format('Y-m-d H:i:s'))
            ->whereDate('created_at','<=', Carbon::parse($toDate)->format('Y-m-d H:i:s'))->orderBy('created_at', 'DESC')->get()->toArray();

            $emailConfig = Config::where('name', 'email_cron')->first();
            $timeConfig = Config::where('name', 'time_cron')->first();
            return view('admin.managementGift.index', compact('listGiftOnlinehistoryToday', 'listGiftPhysicalhistoryToday', 'curentDate', 'providerName', 'fromDate', 'toDate', 'emailConfig', 'timeConfig'));
        }
        catch(\Exception $e){
            return redirect()->to('/admin/management-gift')->withErrors(['msg' => $message])->withInput();
        }
    }

    public function physicalGift()
    {
        $gifts = ManagementGift::orderBy('created_at', 'DESC')->get();
        return view('admin.managementGift.physical_gift', compact('gifts'));
    }

    public function physicalGiftAdd()
    {
        return view('admin.managementGift.physical_gift_create');
    }

    public function physicalGiftCreate(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $giftData               = new ManagementGift();
            $giftData->gift_name    = $request->gift_name;
            $giftData->gift_qty     = $request->gift_qty;
            $giftData->score        = $request->gift_score;
            $giftData->gift_status  = $request->status_gift;

            $destinationPath = public_path('/images/gifts/');
            $name = null;
            if ($request->hasFile('gift_image')) {
                $image = $request->file('gift_image');
                $filename = time().'.'.$image->getClientOriginalExtension();
                $image->move($destinationPath, $filename);
                $name = $filename;
            }
            $giftData->image = $name;
            $giftData->save();
            return redirect()->to('/admin/management-gift/physical')->withSuccess('Đã thêm mới quà tặng thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }
    }

    public function physicalGiftDelete(Request $request){
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $gift = ManagementGift::find($request->gift_id);
            if($gift){
                $gift->delete();
                return redirect()->to('/admin/management-gift/physical')->withSuccess('Đã xóa quà tặng thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }

    public function physicalGiftEdit($gift_id){
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $gift =  ManagementGift::find($gift_id);
            if($gift){
                return view('admin.managementGift.physical_gift_edit', compact('gift'));
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        } 
    }

    public function physicalGiftUpdate(Request $request){
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $gift = ManagementGift::find($request->gift_id);
            if($gift){
                $gift->gift_name    = $request->gift_name;
                $gift->gift_qty     = $request->gift_qty;
                $gift->score        = $request->gift_score;
                $gift->gift_status  = $request->status_gift;
                
                $destinationPath = public_path('/images/gifts/');
                if ($request->hasFile('gift_image')) {

                    $image = $request->file('gift_image');
                    $filename = time().'.'.$image->getClientOriginalExtension();
                    $image->move($destinationPath, $filename);
                    $name = $filename;
                    $gift->image = $name;
                }
                $gift->save();
                return redirect()->to('/admin/management-gift/physical')->withSuccess('Đã chỉnh sửa thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }

    //Quản lý thẻ online
    public function onlineGift()
    {
        $providerName = array();
        $provider = ManagementProvider::get()->toArray();
        foreach($provider as $pro){
            $providerName[$pro['id']] = $pro['provider_name'];
        }
        $providerLists = ManagementProvider::get();
        $cards = ManagementCard::orderBy('provider_id')->orderBy('price', 'DESC')->get();
        $gifts = ManagementGift::orderBy('created_at', 'DESC')->get();
        return view('admin.managementGift.online_gift', compact('gifts', 'providerLists', 'cards', 'providerName'));
    }

    //Import danh sách card
    public function importOnlineGift(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            if ($request->hasFile('file_card')) {
                Excel::import(new CardImport, request()->file('file_card'));
                return redirect()->to('/admin/management-gift/online')->withSuccess('Đã thêm danh sách mã thành công!');
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }

    //Thêm nhà cung cấp online
    public function providerCreate(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $provider = ManagementProvider::where('provider_name', $request->get('provider_name'))->where('provider_type', $request->get('provider_type'))->first();
            if(!$provider){
                $provider = new ManagementProvider();
                $provider->provider_name = $request->get('provider_name');
                $provider->provider_type = $request->get('provider_type');
                $provider->provider_type = $request->get('status');
                $provider->save();
                return redirect()->to('/admin/management-gift/online')->withSuccess('Đã thêm nhà cung cấp thành công!');
            }else{
                $message = 'Nhà cũng cấp đã tồn tại';
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }      
    }

    //Xóa nhà cung cấp
    public function providerDelete(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $provider = ManagementProvider::find($request->provider_id);
            if($provider){
                $provider->status = 0;
                $provider->save();
                // $provider->delete();
                return redirect()->to('/admin/management-gift/online')->withSuccess('Đã xóa thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }

    //Edit nhà cung cấp
    public function providerEdit(Request $request)
    {
        $provider = ManagementProvider::find($request->get('provider_id'));
        return response()->json(['status_respone' => true, 'provider_name' => $provider->provider_name, 'provider_type' => $provider->provider_type, 'status' => $provider->status]);
    }

    public function providerUpdate(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $provider = ManagementProvider::find($request->provider_id_edit);
            if($provider){
                $provider->provider_name = $request->provider_name_edit;
                $provider->provider_type = $request->provider_type_edit;
                $provider->status = $request->status_edit;
                $provider->save();
                return redirect()->to('/admin/management-gift/online')->withSuccess('Đã chỉnh sửa thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }

    //Xóa card
    public function cardDelete(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $card = ManagementCard::find($request->card_id);
            if($card){
                $card->delete();
                return redirect()->to('/admin/management-gift/online')->withSuccess('Đã xóa thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }
    // Edit card
    public function cardEdit(Request $request)
    {
        $card = ManagementCard::find($request->get('card_id'));
        return response()->json(['status_respone' => true, 
        'provider_id'   => $card->provider_id, 
        'code_number'   => $card->code_number, 
        'status'        => $card->status, 
        'seri_number'   => $card->seri_number,
        'price'         => $card->price,
        'score'         => $card->score]
        );
    }
    // Update card
    public function cardUpdate(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $card = ManagementCard::find($request->edit_card_id);
            if($card){
                $card->provider_id      = $request->provider_name_id_edit;
                $card->code_number      = $request->code_number_edit;
                $card->seri_number      = $request->seri_number_edit;
                $card->price            = $request->price_number_edit;
                $card->status           = $request->status_card_edit;
                $card->save();
                return redirect()->to('/admin/management-gift/online')->withSuccess('Đã chỉnh sửa thành công!');
            }else{
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }

    // Thêm card
    public function cardCreate(Request $request)
    {
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $card = ManagementCard::where('code_number', $request->get('code_number_add'))->where('seri_number', $request->get('seri_number_add'))->first();
            if(!$card){
                $card = new ManagementCard();
                $card->code_number      = $request->get('code_number_add');
                $card->seri_number      = $request->get('seri_number_add');
                $card->price            = $request->get('price_number_add');
                $card->provider_id      = $request->get('provider_name_id_add');
                $card->status           = $request->get('status_card_add');
                $card->save();
                return redirect()->to('/admin/management-gift/online')->withSuccess('Đã thêm mã nạp thành công!');
            }else{
                $message = 'Nhà cũng cấp đã tồn tại';
                throw new \Exception();
            }
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }      
    }

    public function exportListCard()
    {
        return Excel::download(new ManagementCardExport, 'danhsachcard.xlsx');
    }

    public function commonCreate(Request $request){
        $message = 'Đã có lỗi xảy ra. Vui lòng reload lại trang.';
        try{
            $param = $request->all();
            if(array_key_exists('email_cron', $param))
            {
                $temp = Config::where('name', 'email_cron')->first();
                if($temp){
                    $temp->config = $param['email_cron'];
                    $temp->save();
                }else{
                    $common = new Config();
                    $common->name = 'email_cron';
                    $common->config = $param['email_cron'];
                    $common->save();
                }
                
            }
            if(array_key_exists('time_cron', $param))
            {
                $temp = Config::where('name', 'time_cron')->first();
                if($temp){
                    $temp->config = $param['time_cron'];
                    $temp->save();
                }else{
                    $common = new Config();
                    $common->name = 'time_cron';
                    $common->config = $param['time_cron'];
                    $common->save();
                }
              
            }
            return redirect()->to('/admin/management-gift')->withSuccess('Đã thiết lập config thành công!');
        }catch(\Exception $e){
            return back()->withErrors(['msg' => $message])->withInput();
        }  
    }
}
