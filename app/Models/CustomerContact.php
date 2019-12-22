<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class CustomerContact extends Model
{
    use SoftDeletes;
    protected $table = 'customer_contacts';
 
    protected $fillable = ['name'];
    
    public function customer()
    {
        return $this->belongsTo('App\Models\Customer', 'customer_id');
    }


}
