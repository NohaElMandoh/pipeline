<?php

namespace App\Repositories\Contracts;

use App\Models\Model;

interface ModelRepositoryInterface
{
    const LIMIT = 10;
    const ORDER_BY = 'created_at';
    const ORDER_DIR = 'desc';

    /**
     * @param array $attributes
     *
     * @return mixed
     */
    public function create($attributes = []);

    /**
     * @param Model $model
     * @param array $attributes
     *
     * @return mixed
     */
    public function update(Model $model, $attributes = []);

    /**
     * @param array $attributes
     * @param       $id
     *
     * @return mixed
     */
    public function createOrUpdate($attributes = [], $id = null);

    /**
     * @param Model $model
     *
     * @return mixed
     */
    public function remove(Model $model);

    /**
     * @param $id
     *
     * @return mixed
     */
    public function find($id);

    /**
     * @param string $key
     * @param mixed  $value
     *
     * @return mixed
     */
    public function findBy($key, $value);

    /**
     * @param mixed $fields
     *
     * @return mixed
     */
    public function findByFields(array $fields);

    /**
     * @param boolean $applyOrder
     * @param string  $orderBy
     * @param string  $orderDir
     *
     * @return mixed
     */
    public function findAll($applyOrder = true, $orderBy = self::ORDER_BY, $orderDir = self::ORDER_DIR);

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
    public function search(
        $filters = [],
        $relations = [],
        $applyOrder = true,
        $page = true,
        $limit = self::LIMIT,
        $orderBy = self::ORDER_BY,
        $orderDir = self::ORDER_DIR
    );

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
    );

    /**
     * @param string $labelField
     * @param string $valueField
     *
     * @return mixed
     */
    public function getAllForFormList($labelField = null, $valueField = 'id');

    //===============================================Eman Mahmoud
    public function findAllByFields(array $fields);
    public function createWithSync($attributes = [], $syncData = []);
    public function updateWithSync(Model $model, $attributes = [], $syncData = []);
}
