<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class Service extends Model
{
    use SoftDeletes;
    protected $table = 'services';
    protected $fillable = ['name','notes','category_id','description','qty','price'];

    public function category()
    {
        return $this->belongsTo('App\Models\Category', 'category_id');
    }

}
