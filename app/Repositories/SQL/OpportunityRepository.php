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
    public function checkService($id){
        $service = $this->opportunityModel->has('services')->first();
        return (!empty($service))? true : false;
    }
    public function checkStage($id){
        $stage = $this->opportunityModel->has('stages')->first();
        return (!empty($stage))? true : false;
    }
    
}