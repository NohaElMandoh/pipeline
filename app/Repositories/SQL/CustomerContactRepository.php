<?php


namespace App\Repositories\SQL;

use App\Models\CustomerContact;
use App\Repositories\Contracts\CustomerContactInterface;


class CustomerContactRepository extends AbstractModelRepository implements CustomerContactInterface
{
    private $CustomerContactModel;
    public function  __construct(CustomerContact $model)
    {
        $this->CustomerContactModel=$model;
        parent::__construct($model);
    }
   
}