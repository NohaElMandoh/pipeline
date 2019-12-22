<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use SoftDeletes;
    protected $table = 'categories';
    protected $fillable = ['name'];

    public function service()
    {
        return $this->hasMany('App\Models\Service','category_id','id');
    }

}
