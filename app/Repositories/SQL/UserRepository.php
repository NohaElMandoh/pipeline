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
   
}