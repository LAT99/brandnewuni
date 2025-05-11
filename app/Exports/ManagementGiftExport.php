<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Carbon\Carbon;
use App\ManagementCard;
use App\ManagementProvider;
use App\HistoryGiftUser;
use Config;

class ManagementGiftExport implements FromCollection, WithHeadings, WithStyles, WithColumnFormatting, WithMapping, WithColumnWidths
{
    public function collection()
    {
        $curentDate = Carbon::now()->format('Y-m-d');
        return HistoryGiftUser::with('card', 'address', 'gift')->whereDate('created_at', Carbon::today())->orderBy('gift_type')->orderBy('created_at')->get();
    }

    public function map($histo): array
    {
        $providerName = array();
        $provider = ManagementProvider::get()->toArray();
        foreach($provider as $pro){
            $providerName[$pro['id']] = $pro['provider_name'];
        }
        return [
            $histo->gift_type == 1 ? 'Quà vật lý' : 'Quà Online',
            $histo->gift_type == 1 ? '' : $histo->card->code_number,
            $histo->gift_type == 1 ? '' : $histo->card->seri_number,
            $histo->gift_type == 1 ? '' : $histo->card->price,
            $histo->gift_type == 1 ? '' : (array_key_exists($histo->card->provider_id, $providerName) ? $providerName[$histo->card->provider_id] : ''),
            $histo->gift_type == 1 ? $histo->gift->gift_name : '',
            $histo->gift_type == 1 ? $histo->qty_gift : '',
            $histo->address->name,
            $histo->address->address,
            $histo->address->phone,
            $histo->address->email,
            Carbon::createFromFormat('Y-m-d H:i:s', $histo->created_at)->format('Y-m-d h:i:s'),
        ];
    }

    public function headings(): array
    {
        return [
            'Loại quà tặng',
            'Mã nạp',
            'Số seri',
            'Mệnh giá',
            'Nhà cung cấp',
            'Tên quà tặng',
            'Số lương',
            'Tên người nhận',
            'Địa chỉ người nhận',
            'Số điện thoại người nhận',
            'Email người nhận',
            'Thời gian quy đổi'
        ];
    }
    public function columnFormats(): array
    {
        return [
            'A' => NumberFormat::FORMAT_NUMBER,
            'B' => NumberFormat::FORMAT_NUMBER,
            'G' => NumberFormat::FORMAT_DATE_DDMMYYYY,
        ];
    }

    public function styles(Worksheet $sheet) {
        return [ 1 => ['font' => ['bold' => true ]]];
    }

    public function columnWidths(): array
    {
        return [
            'A' => 30,
            'B' => 30,
            'C' => 30,  
            'D' => 30,             
            'E' => 30,  
            'F' => 30,  
            'G' => 30,  
            'H' => 30,  
            'I' => 30, 
            'J' => 30, 
            'K' => 30,
            'L' => 30, 
        ];
    }
}
