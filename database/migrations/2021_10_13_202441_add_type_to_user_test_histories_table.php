<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTypeToUserTestHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('user_test_histories', function (Blueprint $table) {
            $table->integer('type')->default(0);            //1 đã xem/ o đã test
            $table->integer('question_group')->nullable()->change();
            $table->text('answered')->nullable()->change();
            $table->string('score')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('user_test_histories', function (Blueprint $table) {
            //
        });
    }
}
