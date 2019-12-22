<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;

class Model extends Eloquent
{
    /**
     * @var array
     */
    protected $filters = ['name', 'email'];

    /**
     * @return array
     */
    public function getFilters()
    {
        return $this->filters;
    }

    /**
     * @param $query
     * @param $value
     *
     * @return mixed
     */
    public function scopeWithName($query, $value)
    {
        if (!empty($value)) {
            return $query->where('name', 'like', "%{$value}%");
        }
        return $query;

    }


}
