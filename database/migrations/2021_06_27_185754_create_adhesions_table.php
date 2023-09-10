<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdhesionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('adhesions', function (Blueprint $table) {
            $table->id();
             $table->string("nom");
             $table->string("prenom");
             $table->string("inOrganisation");
             $table->string("nina");
             $table->string("carteElec");
             $table->string("numero");
             $table->string("email");
             $table->string("region");
             $table->string("cercleComune");
             $table->string("adresse");
             $table->string("photo")->nullable();
             $table->string("idEnq")->nullable();
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
        Schema::dropIfExists('adhesions');
    }
}