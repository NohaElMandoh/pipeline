<?php


namespace App\Repositories\Contracts;

interface ServiceInterface extends ModelRepositoryInterface
{
    public function checkPipeline($id);
   
}