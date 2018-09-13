<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class Square extends Model
{
	protected $fillable = [
		'name', 'htmlId', 'plant_id', 'garden_id'
	];

    public function gardens() {
    	return $this->belongsTo('Pionear\Garden');
    }

    public function plants2() {
    	return $this->belongsTo('Pionear\Plant', 'plant_id');
    }
}
