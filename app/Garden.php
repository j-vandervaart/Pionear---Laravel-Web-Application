<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class Garden extends Model
{
	protected $fillable = [
		'name', 'h_size', 'w_size', 'archive', 'user_id'
	];

    public function users() {
    	return $this->belongsTo('Pionear\User');
    }

    public function squares() {
    	return $this->hasMany('Pionear\Square');
    }

    public function pivot_square_two() {
    	return $this->belongsToMany('Pionear\Plant', 'squares');
    }
}
