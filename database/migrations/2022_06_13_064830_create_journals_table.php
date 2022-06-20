<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJournalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('journals', function (Blueprint $table) {
            $table->id();
            $table->string('project_id');
            $table->string('journal_no')->unique();
            // $table->string('party_info_id')->nullable();
            $table->date('date');
            $table->string('invoice_no');
            $table->string('cost_center_id');
            $table->string('party_info_id');
            $table->string('credit_party_info')->nullable();
            $table->string('txn_type');
            $table->string('txn_mode');
            $table->string('ac_head_id');
            $table->decimal('amount', 12,2);
            $table->integer('tax_rate');
            $table->decimal('vat_amount', 12,2);
            $table->decimal('total_amount', 12,2);
            $table->string('narration');
            $table->boolean('authorized')->default(0);
            $table->boolean('approved')->default(0);
            $table->string('state')->nullable();
            $table->string('comment')->nullable();
            $table->boolean('checked')->default(0);
            $table->softDeletes();
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
        Schema::dropIfExists('journals');
    }
}
