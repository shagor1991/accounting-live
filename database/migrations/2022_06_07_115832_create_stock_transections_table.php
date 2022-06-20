<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStockTransectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stock_transections', function (Blueprint $table) {
            $table->id();
            $table->string('item_id');
            $table->string('transection_id');
            $table->integer('quantity')->default(0);
            $table->string('stock_effect');
            $table->string('tns_type_code')->nullable();
            $table->string('tns_description')->nullable();
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
        Schema::dropIfExists('stock_transections');
    }
}
