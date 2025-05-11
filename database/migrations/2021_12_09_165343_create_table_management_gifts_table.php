<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableManagementGiftsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('management_gifts', function (Blueprint $table) {
            $table->id();
            $table->string('gift_name')->nullable();
            $table->integer('gift_qty');
            $table->string('image')->nullable();
            $table->string('score');
            $table->integer('gift_status')->default(0); //0 chưa kích hoạt  //1 đã kích hoạt
            $table->integer('is_used')->default(0); //0 chưa sử dụng;  //1 đã sử dụng
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
        Schema::dropIfExists('management_gifts');
    }
}
