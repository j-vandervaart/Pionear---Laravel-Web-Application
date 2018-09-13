<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class Preserve_type extends Model
{
	protected $fillable = [
		'name', 'desc'
	];

    public function preserve() {
    	return $this->hasMany('Pionear\Preserve');
    }
}
