<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('items', function (Blueprint $table) {
            $table->id();
            $table->integer('style_id')->nullable();
            $table->string('groups_item_type_no');
            $table->string('groups_item_type');
            $table->string('barcode');
            $table->string('item_name');
            $table->string('brand_id');
            $table->string('country');
            $table->string('unit');
            $table->string('description')->nullable();
            $table->integer('sell_price');
            $table->string('vat_rate');
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
        Schema::dropIfExists('items');
    }
}
