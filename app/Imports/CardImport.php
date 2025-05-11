<?php

namespace App\Imports;

use App\ManagementCard;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use App\ManagementProvider;
use Log;

class CardImport implements ToCollection
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function collection(Collection $rows)
    {
        //
        $proLists = array();
        $provider = ManagementProvider::where('status', 1)->get()->toArray();
        foreach($provider as $pro){
            $proLists[$pro['id']] = $pro['provider_name'];
        }
        $rows = $rows->toArray();
        array_shift($rows);  
        foreach ($rows as $row) 
        {
            try{
                $code_number = $row[0];
                $seri_number = $row[1];
                $provider_id = array_search($row[2], $proLists);
                if(!$provider_id){
                    throw new \Exception();
                }
                $price = $row[3];
                $status = 0;
                ManagementCard::create([
                    'provider_id' => $provider_id,
                    'code_number' => $code_number,
                    'seri_number' => $seri_number,
                    'price'       => $price,
                    'name'        => $row[0],
                    'status'        => 1,
                ]);
                // Log::channel('import_card_history')->info('Import success card info:' .$code_number .' ' .$seri_number. ' ' .$row[2]);
            }catch(\Exception $e){
                Log::channel('import_card_history')->info('Import failed card info:' .$code_number .' ' .$seri_number. ' ' .$row[2]);
                continue;
            }
          
        }
    }
}
