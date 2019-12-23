<?php


namespace App\Repositories\SQL;

use App\Models\Customer;
use App\Repositories\Contracts\CustomerInterface;


class CustomerRepository extends AbstractModelRepository implements CustomerInterface
{
    private $CustomerModel;
    public function  __construct(Customer $model)
    {
        $this->CustomerModel=$model;
        parent::__construct($model);
    }
    public function checkPipeline($id){
        $pipeline = $this->CustomerModel->has('pipeline')->first();
        return (!empty($pipeline))? true : false;
    }
    public function checkContact($id){
        $contact = $this->CustomerModel->has('contact')->first();
        return (!empty($contact))? true : false;
    }
    
}