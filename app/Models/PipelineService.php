<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class PipelineService extends Model
{
    use SoftDeletes;
    protected $table = 'pipeline_service';
    protected $fillable = ['pipeline_id','service_id'];

    
}
