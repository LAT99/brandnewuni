<?php

use Illuminate\Database\Seeder;
use App\ManagementProvider;

class ProviderCardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
            $role = ManagementProvider::create([
                'provider_name' => 'Mobi',
                'provider_type' => 1, // Thẻ điện thoại  // 2 Thẻ mua hàng
                'status' => '1', // Đã kích hoạt
            ]);
            $role = ManagementProvider::create([
                'provider_name' => 'vina',
                'provider_type' => 1, // Thẻ điện thoại  // 2 Thẻ mua hàng
                'status' => '1', // Đã kích hoạt
            ]);
            $role = ManagementProvider::create([
                'provider_name' => 'viettel',
                'provider_type' => 1, // Thẻ điện thoại  // 2 Thẻ mua hàng
                'status' => '1', // Đã kích hoạt
            ]);
            $role = ManagementProvider::create([
                'provider_name' => 'Bach hoa xanh',
                'provider_type' => 2, // Thẻ điện thoại  // 2 Thẻ mua hàng
                'status' => '1', // Đã kích hoạt
            ]);
            $role = ManagementProvider::create([
                'provider_name' => 'Coop',
                'provider_type' => 2, // Thẻ điện thoại  // 2 Thẻ mua hàng
                'status' => '1', // Đã kích hoạt
            ]);
            $role = ManagementProvider::create([
                'provider_name' => 'VinMart',
                'provider_type' => 2, // Thẻ điện thoại  // 2 Thẻ mua hàng
                'status' => '1', // Đã kích hoạt
            ]);
            // $role = ManagementProvider::create([
            //     'provider_name' => 'Momo',
            //     'provider_type' => 2, // Thẻ điện thoại  // 2 Thẻ mua hàng  //3 momo
            //     'status' => '1', // Đã kích hoạt
            // ]);
    }
}
