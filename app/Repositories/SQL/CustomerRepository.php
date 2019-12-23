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
     
        $customer = $this->CustomerModel->where('id',$id)->with('pipeline')->get();
        foreach($customer as $c)
        return (count($c->pipeline) !=0)? true : false;
    }
    public function checkContact($id){

        $customer = $this->CustomerModel->where('id',$id)->with('contact')->get();
        foreach($customer as $c)
    

        return (count($c->contact) !=0)? true : false;
    }
    
}