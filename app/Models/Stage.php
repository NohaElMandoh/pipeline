<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class Stage extends Model 
{
    use SoftDeletes;
    

    protected $table = 'stages';
    protected $fillable = ['name','notes'];

}
