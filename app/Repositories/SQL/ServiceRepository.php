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
   
}