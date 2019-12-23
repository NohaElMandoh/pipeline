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
    public function pipelines()
    {
        return $this->belongsToMany('App\Models\Pipeline', 'pipeline_service', 'service_id', 'pipeline_id');
    }
}
