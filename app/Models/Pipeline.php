<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pipeline extends Model
{
    use SoftDeletes;
    protected $table = 'pipelines';
    protected $fillable = ['customer_id','user_id','title','notes','expected_closed_date'];
    public $filters = [ 'Keyword', 'Stage', 'Customer', 'Month'];

    public function scopeOfStage($query, $stage_id)
    {
        if (empty(trim($stage_id))) {
            return $query;
        }
        return $query->whereHas('stages', function(Builder $query) use($stage_id){
            $query->where('stage_id', $stage_id);
        });
    }
    public function scopeOfKeyword($query, $keyword)
    {
        if (empty(trim($keyword))) {
            return $query;
        }
        $data = $query->where('title', 'like', '%' . $keyword . '%');
        return $data;
    }
    public function scopeOfMonth($query, $month)
    {
        if (empty(trim($month))) {
            return $query;
        }
        $data = $query->whereMonth('created_at', '=', $month);
        return $data;
    }
    public function scopeOfCustomer($query, $customer_id)
    {
        if (empty(trim($customer_id))) {
            return $query;
        }
        $data = $query->where('customer_id', '=', $customer_id);
        return $data;
    }
   

    public function services()
    {
        return $this->belongsToMany('App\Models\Service', 'pipeline_service', 'pipeline_id', 'service_id')->withTimestamps()->orderBy('created_at', 'DESC');
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
