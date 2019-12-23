<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class Stage extends Model 
{
    use SoftDeletes;
    

    protected $table = 'stages';
    protected $fillable = ['name','notes'];
    public function pipelines()
    {
        return $this->belongsToMany('App\Models\Pipeline', 'pipeline_stage', 'stage_id', 'pipeline_id')->withPivot('notes')->withTimestamps()->orderBy('created_at', 'DESC');
    }
}
