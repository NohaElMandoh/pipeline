<?php


namespace App\Repositories\SQL;

use App\Models\Pipeline;
use App\Repositories\Contracts\OpportunityInterface;

class OpportunityRepository extends AbstractModelRepository implements OpportunityInterface
{
    private $opportunityModel;
    public function  __construct(Pipeline $model)
    {
        $this->opportunityModel=$model;
        parent::__construct($model);
    }
   
}