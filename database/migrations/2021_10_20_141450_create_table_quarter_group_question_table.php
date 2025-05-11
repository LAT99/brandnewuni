<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableQuarterGroupQuestionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quarter_group_question', function (Blueprint $table) {
            $table->id();
            $table->integer('id_training');
            $table->integer('group');
            $table->integer('status_active')->default(0); //0 Chưa kích hoạt;  //1 kích hoạt
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
        Schema::dropIfExists('quarter_group_question');
    }
}
