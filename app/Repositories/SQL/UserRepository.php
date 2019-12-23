<?php


namespace App\Repositories\SQL;

use App\Models\User;
use App\Repositories\Contracts\UserInterface;

class UserRepository extends AbstractModelRepository implements UserInterface
{
    
    
    public function  __construct(User $model)
    {
        parent::__construct($model);
    }
    public function checkPipeline($id){
     
        $stage = $this->StageModel->where('id',$id)->with('pipelines')->get();
        foreach($stage as $s)
        return (count($s->pipelines) !=0)? true : false;
    }
}