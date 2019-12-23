<?php


namespace App\Repositories\Contracts;

interface OpportunityInterface extends ModelRepositoryInterface
{
    public function checkService($id);
    public function checkStage($id);


}