<?php

namespace App\Exports;
use App\User;
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
use Config;

class ManagementCardExport implements FromCollection, WithHeadings, WithStyles, WithColumnFormatting, WithMapping, WithColumnWidths
{
    public function collection()
    {
        return ManagementCard::orderBy('provider_id')->orderBy('price', 'DESC')->get();
    }

    public function map($card): array
    {
        $providerName = array();
        $provider = ManagementProvider::get()->toArray();
        foreach($provider as $pro){
            $providerName[$pro['id']] = $pro['provider_name'];
        }
        return [
            (auth()->user()->can('management')) ? $card->code_number : '*********',
            $card->seri_number,
            $card->price,
            array_key_exists($card->provider_id, $providerName) ? $providerName[$card->provider_id] : '',
            $card->status == 0 ? 'Chưa kích hoạt' : 'Đã kích hoạt',
            $card->is_used == 1 ? 'Đã sử dụng' : 'Chưa sửa dụng',
            Carbon::createFromFormat('Y-m-d H:i:s', $card->created_at)->format('Y-m-d'),
        ];
    }

    public function headings(): array
    {
        return [
            'Mã nạp',
            'Số seri',
            'Mệnh giá',
            'Nhà cung cấp',
            'Trạng thái',
            'Tình trạng sử dụng',
            'Ngày tạo card'
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
        ];
    }
}
