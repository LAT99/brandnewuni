<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\JsonResponse;
use App\Mail\NotifyMail;
use Illuminate\Support\Facades\Mail;
use View;
use DB;
use PHPMailer\PHPMailer\PHPMailer;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        if(!isset($data['agree'])){
            $data['agree'] = null;
        }
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required','min:8', 'confirmed'],
            'password_confirmation' => ['required'],
            'phone' => ['required'],
            'address' => ['required'],
            'participants' => ['required'],
            'place_work' => ['required'],
            'agree' => ['required'],
        ],[
            'name.required' => 'Xin nhập Họ và tên',
            'email.required' => 'Xin nhập Email',
            'email.email' => 'Xin nhập đúng đinh dạng Email',
            'email.unique' => 'Email đã được sử dụng',
            'password.required' => 'Xin nhập Mật khẩu',
            'password.min' => 'Xin nhập Mật khẩu tối thiểu 8 ký tự',
            'password_confirmation.required' => 'Xin xác nhận mật khẩu',
            'password.confirmed' => 'Mật khẩu không khớp nhau',
            'phone.required' => 'Xin nhập Số điện thoại',
            'address.required' => 'Xin nhập Địa chỉ',
            'participants.required' => 'Xin nhập Đối tượng tham gia',
            'place_work.required' => 'Xin nhập Nơi làm việc',
            'agree.required' => 'Vui lòng chọn đồng ý điều khoản',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'phone' => $data['phone'],
            'address' => $data['address'],
            'participants' => $data['participants'],
            'place_work' => $data['place_work'],
            'status' => 1,
            'is_send_mail' => 1,
        ]);
    }

    public function register(Request $request)
    {
        try{
            DB::beginTransaction();
            $this->validator($request->all())->validate();
            // $mails = $request->get('email');

            event(new Registered($user = $this->create($request->all())));
            //send mail
            $password = "ltfwsswrxtlwzsmt";
            $username = "delltranning@gmail.com";
            require '../vendor/autoload.php';
            $text = View::make('mails.notify_mail', ['name'=>$request->get('name')]);

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
            $mail->addAddress($request->get('email'), $request->get('name')) ;

                //content
            $mail->isHTML(true);
            $mail->Subject = 'Chào mừng đến với Website Dell Training';
            $mail->Body    = $text;
            $mail->send();
            DB::commit();
            return redirect()->to('/login')->withSuccess('Đã chỉnh sửa thành công!');
        }catch(\Exception $e){
            DB::rollback();
            return redirect()->to('/login');
        }


    }

}
