<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class Pipeline extends Model
{
    use SoftDeletes;
    protected $table = 'pipelines';
    protected $fillable = ['customer_id','user_id','title','notes','expected_closed_date'];

    public function services()
    {
        return $this->belongsToMany('App\Models\Service', 'pipeline_service', 'pipeline_id', 'service_id');
    }
    public function stages()
    {
        return $this->belongsToMany('App\Models\Stage', 'pipeline_stage', 'pipeline_id', 'stage_id')->withPivot('notes')->withTimestamps()->orderBy('created_at', 'DESC');
    }
    public function customer()
    {
        return $this->belongsTo('App\Models\Customer', 'customer_id');
    }
    public function user()
    {
        return $this->belongsTo('App\Models\User', 'user_id');
    }
    public function lastStage()
    {
        return $this->stages()->limit(1);
    }
}
