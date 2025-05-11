<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableManagementCardTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('management_card', function (Blueprint $table) {
            $table->id();
            $table->integer('provider_id');
            $table->string('code_number');
            $table->string('seri_number');
            $table->string('price');
            $table->string('score')->nullable();
            $table->integer('status')->default(0); //0 Chưa kích hoạt;  //1 kích hoạt
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
        Schema::dropIfExists('management_type_card');
    }
}
