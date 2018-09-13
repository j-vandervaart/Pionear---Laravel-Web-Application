<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class Plant_type extends Model
{
    protected $fillable = [
    	'name', 'desc'
    ]; 

    public function plant() {
    	return $this->hasMany('Pionear\Plant');
    }
}
