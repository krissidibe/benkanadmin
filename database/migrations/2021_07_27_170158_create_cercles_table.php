<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCerclesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cercles', function (Blueprint $table) {
            $table->id();
            $table->string("non");
            $table->timestamps();

  


            $table->unsignedBigInteger("region_id");
            $table->index("region_id");
            $table->foreign("region_id")->references("id")->on("regions")->onDelete("cascade");

        
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cercles');
    }
}