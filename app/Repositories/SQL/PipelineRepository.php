<?php


namespace App\Repositories\SQL;

use App\Models\Pipeline;
use App\Repositories\Contracts\PipelineInterface;

class PipelineRepository extends AbstractModelRepository implements PipelineInterface
{
    private $PipelineModel;
    public function  __construct(Pipeline $model)
    {
        $this->PipelineModel=$model;
        parent::__construct($model);
    }
   
}