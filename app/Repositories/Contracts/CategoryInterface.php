<?php


namespace App\Repositories\Contracts;

interface CategoryInterface extends ModelRepositoryInterface
{
    public function checkCategory($id);
}