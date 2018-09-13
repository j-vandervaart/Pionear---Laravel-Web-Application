<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class Preserve extends Model
{
	protected $fillable = [
		'name', 'img', 'desc', 'ingreds', 'steps', 'plant_id'
	];

    public function plants() {
    	return $this->belongsToMany('Pionear\Plant');
    }

    public function preserve_types() {
    	return $this->belongsTo('Pionear\Preserve_type');
    }

    public function ingredients() {
    	return $this->hasMany('Pionear\Ingredient');
    }

    public function directions() {
    	return $this->hasMany('Pionear\Direction');
    }
}
