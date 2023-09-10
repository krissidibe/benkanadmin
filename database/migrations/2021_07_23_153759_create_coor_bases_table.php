<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoorBasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coor_bases', function (Blueprint $table) {
            $table->id();
            $table->string("region");
            $table->string("cercle");
            $table->string("commune");
            $table->string("quartier");
            $table->string("prenom");
            $table->string("nom");
            $table->string("titre");
            $table->string("numero");
            $table->string("email");
            $table->string("password");
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
        Schema::dropIfExists('coor_bases');
    }
}