<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAboutUsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('about_us', function (Blueprint $table) {
            $table->id();
            $table->string('title1')->nullable();
            $table->longText('subtitle1')->nullable();
            $table->longText('body1')->nullable();
            $table->text('image1')->nullable();
            $table->string('title2')->nullable();
            $table->longText('subtitle2')->nullable();
            $table->longText('body2')->nullable();
            $table->text('image2')->nullable();
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
        Schema::dropIfExists('about_us');
    }
}
