<?php


namespace App\Repositories\SQL;

use App\Models\Category;
use App\Models\Service;
use App\Repositories\Contracts\CategoryInterface;

class CategoryRepository extends AbstractModelRepository implements CategoryInterface
{
    private $categoryModel;
    public function  __construct(Category $model)
    {
        $this->categoryModel=$model;
        parent::__construct($model);
    }
    public function checkCategory($id){
        $category = Service::where('category_id', $id)->first();
        return (!empty($category))? true : false;
    }
}