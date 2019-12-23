<?php


namespace App\Repositories\Contracts;

interface StageInterface extends  ModelRepositoryInterface
{
    public function checkPipeline($id);

   
}