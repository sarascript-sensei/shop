<?php

namespace App\Models;

use App\Models\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contact extends Model
{
    use SoftDeletes, Translatable;

    public $table = 'contactus';

    protected $fillable = ['name', 'email', 'subject', 'message'];
}

