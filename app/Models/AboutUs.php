<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AboutUs extends Model
{
    use SoftDeletes;
    public $table = 'about_us';
    protected $fillable = [
        'title1', 'subtitle1','body1', 'image1', 'title2', 'subtitle2','body2', 'image2'
    ];
}
