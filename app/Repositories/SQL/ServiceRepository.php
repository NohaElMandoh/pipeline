<?php


namespace App\Repositories\SQL;

use App\Models\Service;
use App\Repositories\Contracts\ServiceInterface;

class ServiceRepository extends AbstractModelRepository implements ServiceInterface
{
    private $ServiceModel;
    public function  __construct(Service $model)
    {
        $this->ServiceModel=$model;
        parent::__construct($model);
    }
    public function checkPipeline($id){
     
        $service = $this->ServiceModel->where('id',$id)->with('pipelines')->get();
        foreach($service as $s)
        return (count($s->pipelines) !=0)? true : false;
    }
}