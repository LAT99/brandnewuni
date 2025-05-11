<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;
use View;
use PHPMailer\PHPMailer\PHPMailer;
use Carbon\Carbon;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ManagementGiftExport;
use File;
use App\Config;

class ManagementGift extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'report:managementGift';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send mail report to Admin';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $temp = Config::where('name', 'email_cron')->first();
        $emailConfig = $temp ? $temp->config : '';
        try{
            if($emailConfig){
                $filedownload = Excel::download(new ManagementGiftExport(), 'fileName.xlsx')->getFile();
                $filedownload->move(base_path('\public\file_excel'), $filedownload);
                $files = File::allFiles(base_path().'/public/file_excel');
                $filePath = '';
                if($files){
                    $fileName = $files[0]->getFilename();
                    $filePath = base_path().'/public/file_excel/'.$fileName;
                }
                if($filePath){
                    $curentDate = Carbon::now()->format('Y-m-d');
                    //
                    $nameAmin = 'Admin';
                    $password = "ltfwsswrxtlwzsmt";
                    $username = "delltranning@gmail.com";
                    require base_path().'\vendor\autoload.php';
                    $text = View::make('mails.report_admin', ['curentDate'=>$curentDate]);
            
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
                    $mail->addAddress($emailConfig, $nameAmin) ;
            
                        //content
                    $mail->isHTML(true);
                    $mail->Subject = 'Báo cáo danh sách quà tặng đã quy đổi ngày'.$curentDate;
                    $mail->Body    = $text;
                    $mail->addAttachment($filePath, 'danhsachdoiqua.xlsx');
                    $mail->send();
                    File::cleanDirectory(base_path().'/public/file_excel');
            }
            }
        }catch(\Exception $e){
            echo "error";
        }  
    }
}
