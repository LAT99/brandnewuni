<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableManagementProviderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('management_provider', function (Blueprint $table) {
            $table->id();
            $table->string('provider_name');
            $table->integer('provider_type')->default(1); //1 card điện thoại, //2 phiếu mua hàng
            $table->integer('status')->default(1); //0 Chưa kích hoạt;  //1 kích hoạt
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('management_provider');
    }
}
