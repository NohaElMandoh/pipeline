<?php


namespace App\Repositories\Contracts;

interface CustomerInterface extends ModelRepositoryInterface
{
    
    public function checkPipeline($id);
    public function checkContact($id);


}