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
   
}