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
use Config;

class UsersExport implements FromCollection, WithHeadings, WithStyles, WithColumnFormatting, WithMapping, WithColumnWidths
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return User::where('usertype', 0)->orderBy('created_at', 'DESC')->get();
    }

    public function map($user): array
    {
        $status = Config::get('constants.status_user');
        $participantsList = Config::get('constants.participants');
        // dd($participantsList[$user->participants]);
        return [
            $user->name,
            $user->email,
            $status[$user->status],
            $user->phone,
            $user->address,
            $user->participants ? $participantsList[$user->participants] : '',
            $user->place_work,
            Carbon::createFromFormat('Y-m-d H:i:s', $user->created_at)->format('Y-m-d'),
            get_score($user->id)
        ];
    }

    public function headings(): array
    {
        return [
            'Họ và tên',
            'Email',
            'Trạng thái',
            'Số điện thoại',
            'Địa chỉ',
            'Đối tượng tham gia',
            'Nơi làm việc',
            'Ngày tạo',
            'Số điểm',
        ];
    }
    public function columnFormats(): array
    {
        return [
            'E' => NumberFormat::FORMAT_DATE_DDMMYYYY,
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
