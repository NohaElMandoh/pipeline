<?php

namespace App\Repositories\SQL;

use App\Models\Model;
use App\Repositories\Contracts\ModelRepositoryInterface;


abstract class AbstractModelRepository implements ModelRepositoryInterface
{

    /**
     * @var Model
     */
    protected $model;

    /**
     * AbstractModelRepository constructor.
     *
     * @param $model
     */
    public function __construct(Model $model)
    {
        $this->model = $model;
    }

    /**
     * @param array $attributes
     *
     * @return mixed
     */
    public function create($attributes = [])
    {
        if (!empty($attributes)) {
            return $this->model->create($attributes);
        }
        return false;
    }

    /**
     * @param Model $model
     * @param array $attributes
     *
     * @return mixed
     */
    public function update(Model $model, $attributes = [])
    {
        if (!empty($attributes)) {
            return $model->update($attributes);
        }
        return $model;
    }

    /**
     * @param array $attributes
     *
     * @return mixed
     */
    public function createOrUpdate($attributes = [], $id = null)
    {
        if (empty($attributes)) {
            return false;
        }
        if (isset($attributes['id'])) {
            $model = $this->model->find($attributes['id']);
            return $this->update($model, $attributes);
        }
        return $this->create($attributes);
    }

    /**
     * @param Model $model
     *
     * @return mixed
     */
    public function remove(Model $model)
    {
        return $model->delete();
    }

    public function count()
    {
        $query = $this->model;

        return $query->count();
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function find($id)
    {
        return $this->model->find($id);
    }

    public function findWithRelation($id, $relations = [])
    {
        return $this->model->with($relations)->find($id);
    }

    /**
     * @param $key
     * @param $value
     *
     * @return mixed
     */
    public function findBy($key, $value)
    {
        return $this->model->where($key, $value)->first();
    }

    public function findAllBy($key, $value)
    {
        return $this->model->where($key, $value)->get();
    }



    public function findAllByWithRelation($key, $value, $relations = [])
    {
        return $this->model->where($key, $value)->with($relations)->get();
    }

    /**
     * @param mixed $fields
     *
     * @return mixed
     */
    public function findByFields(array $fields)
    {
        $query = $this->model;
        foreach ($fields as $key => $value) {
            $query = $query->where($key, $value);
        }
        return $query->first();
    }

    
    /**
     * @param boolean $applyOrder
     * @param string  $orderBy
     * @param string  $orderDir
     *
     * @return mixed
     */
    public function findAll($applyOrder = true, $orderBy = self::ORDER_BY, $orderDir = self::ORDER_DIR, $relatyions =[], $where=[])
    {
        $query = $this->model;
        if ($applyOrder) {
            $query = $query->orderBy($orderBy, $orderDir);
        }
        if(!empty($where)){
            $query->where([$where]);
        }
        return $query->get();
    }

    /**
     * @param array      $filters
     * @param array      $relations
     * @param bool|false $page
     * @param int        $limit
     * @param string     $orderBy
     * @param string     $orderDir
     *
     * @return mixed
     */
    public function search($filters = [], $relations = [], $applyOrder = true, $page = true, $limit = self::LIMIT, $orderBy = self::ORDER_BY, $orderDir = self::ORDER_DIR)
    {
        $query = $this->model;
        if (!empty($relations)) {
            $query = $query->with($relations);
        }

        if (!empty($filters)) {
            foreach ($this->model->getFilters() as $filter) {
                //if (isset($filters[$filter]) and !empty($filters[$filter])) {
                if (isset($filters[$filter])) {
                    $withFilter = "of" . ucfirst($filter);
                    $query = $query->$withFilter($filters[$filter]);
                }
            }
        }
        return $this->getQueryResult($query, $applyOrder, $page, $limit, $orderBy, $orderDir);
    }

    /**
     * @param            $query
     * @param bool|false $page
     * @param int        $limit
     * @param string     $orderBy
     * @param string     $orderDir
     *
     * @return mixed
     */
    public function getQueryResult(
        $query,
        $applyOrder = true,
        $page = true,
        $limit = self::LIMIT,
        $orderBy = self::ORDER_BY,
        $orderDir = self::ORDER_DIR
    ) {
        if ($applyOrder) {
            $query = $query->orderBy($orderBy, $orderDir);
        }

        if (config('app.query_debug')) {
            return $query->toSql();
        }

        if ($page) {
            return $query->paginate($limit);
        }
        if ($limit) {
            return $query->take($limit)->get();
        }

        return $query->get();
    }

    /**
     * @param string $labelField
     * @param string $valueField
     *
     * @return mixed
     */
    public function getAllForFormList($labelField = null, $valueField = 'id')
    {
        $allModels = $this->model->all();
        $list = [];
        foreach ($allModels as $model) {
            $list[$model->$valueField] = $model->$labelField;
        }

        return $list;
    }

    public function lists($value, $key)
    {
        return $this->model->pluck($value, $key)->ToArray();
    }

    //==============================================Eman Mahmoud
    public function findAllByFields(array $fields)
    {
        $query = $this->model;
        foreach ($fields as $key => $value) {
            $query = $query->where($key, $value);
        }
        return $query->get();
    }
    public function createWithSync($attributes = [],$syncData = [])
    {
        if (!empty($attributes)) {
            $model = $this->model->create($attributes);
            if(!empty($syncData)){
                foreach($syncData as $key=>$sync) {
                    $model->$key()->sync($sync);
                }
            }
            return $model;
        }
        return false;
    }
    public function updateWithSync(Model $model, $attributes = [], $syncData = [])
    {
        if (!empty($attributes)) {
               $model->update($attributes);
            if(!empty($syncData)){
                foreach($syncData as $key=>$sync) {
                    $model->$key()->sync($sync);
                }
            }
            return $model;
        }
        return false;
    }

    public function UpdateOrCreateModel($attributes = [])
    {
        if (!empty($attributes)) {
            return  $this->model->updateOrCreate($attributes);
        }
    }
    public function findByArray($filter = [])
    {
        return $this->model->where($filter)->first();
    }

    public function getResultWhere($where = [],$whereInField='', $whereIn = []) {
        if(!empty($whereIn) && !empty($whereInField)){
           return $this->model->where($where)->whereIn($whereInField, $whereIn)->get();
        }
        return [];
    }


}
