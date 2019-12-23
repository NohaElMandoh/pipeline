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
        $service = $this->opportunityModel->where('id',$id)->with('services')->get();
        foreach($service as $s)
        return (count($s->services) !=0)? true : false;
    }
    public function checkStage($id){
        $stage = $this->opportunityModel->where('id',$id)->with('stages')->get();
        foreach($stage as $s)
        return (count($s->stages) !=0)? true : false;
        
    }

    
    
}