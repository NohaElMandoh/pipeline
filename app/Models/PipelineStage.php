<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class PipelineStage extends Model
{
    use SoftDeletes;
    
    protected $table = 'pipeline_stage';
    protected $fillable = ['pipeline_id','stage_id','notes'];

}
