<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Mail\NotifyMail;
use Illuminate\Support\Facades\Mail;
use View;
use DB;
use PHPMailer\PHPMailer\PHPMailer;
use Carbon\Carbon; 
use App\User; 
use Illuminate\Support\Facades\Hash;
class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;
    public function showForgetPasswordForm()
    {
        return view('auth.passwords.email');
    }

    public function sendResetLinkEmail(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users',
        ]);

        $token = Str::random(64);

        DB::table('password_resets')->insert([
            'email' => $request->email, 
            'token' => $token, 
            'created_at' => Carbon::now()
          ]);

           //send mail
           $password = "ltfwsswrxtlwzsmt";
           $username = "delltranning@gmail.com";
           require '../vendor/autoload.php';
           $text = View::make('mails.reset_password', ['token'=>$token]);

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
           $mail->Subject = 'Reset Password';
           $mail->Body    = $text;
           $mail->send();

        // Mail::send('email.forgetPassword', ['token' => $token], function($message) use($request){
        //     $message->to($request->email);
        //     $message->subject('Reset Password');
        // });
        return redirect('/login')->with('message_success', 'Chúng tôi đã gửi link reset tới email của bạn!');
    }

    public function showResetPasswordForm($token) {
        return view('auth.passwords.reset', ['token' => $token]);
    }

    public function submitResetPasswordForm(Request $request){

        $request->validate([
            'email' => 'required|email|exists:users',
            'password' => 'required|string|min:8|confirmed',
            'password_confirmation' => 'required'
        ]);

        $updatePassword = DB::table('password_resets')
                            ->where([
                              'email' => $request->email, 
                              'token' => $request->token
                            ])
                            ->first();

        if(!$updatePassword){
            return back()->withInput()->with('message_error', 'Token không chính xác');
        }
        $user = User::where('email', $request->email)
                    ->update(['password' => Hash::make($request->password)]);

        DB::table('password_resets')->where(['email'=> $request->email])->delete();

        return redirect('/login')->with('message_success', 'Mật khẩu đã được thay đổi!');
    }
}
