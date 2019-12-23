<?php


namespace App\Repositories\SQL;

use App\Models\Stage;
use App\Repositories\Contracts\StageInterface;

class StageRepository extends AbstractModelRepository implements StageInterface
{
    private $StageModel;
    public function  __construct(Stage $model)
    {
        $this->StageModel=$model;
        parent::__construct($model);
    }
    public function checkPipeline($id){
     
        $stage = $this->StageModel->where('id',$id)->with('pipelines')->get();
        foreach($stage as $s)
        return (count($s->pipelines) !=0)? true : false;
    }
}