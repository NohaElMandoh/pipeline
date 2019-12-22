<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class Customer extends Model
{
    use SoftDeletes;
    protected $table = 'customers';
 
    protected $fillable = ['name','email','title','type','mobile','phone','location','website','facebook','instagram','linkedin'];
    public function contact()
    {
        return $this->hasMany('App\Models\CustomerContact','customer_id','id');
    }
    public function pipeline()
    {
        return $this->hasMany('App\Models\Pipeline','customer_id','id');
    }

}
