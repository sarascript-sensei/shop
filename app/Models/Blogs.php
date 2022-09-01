<?php

namespace App\Models;

use App\Models\Traits\Translatable;
use App\Services\CurrencyConversion;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Blogs extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'title', 'body', 'image'
    ];


}
