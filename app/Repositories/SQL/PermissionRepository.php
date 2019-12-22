<?php


namespace App\Repositories\SQL;

use App\Models\Permission;
use App\Repositories\Contracts\PermissionInterface;

class PermissionRepository extends AbstractModelRepository implements PermissionInterface
{
    
    public function  __construct(Permission $model)
    {
        parent::__construct($model);
    }
   
}