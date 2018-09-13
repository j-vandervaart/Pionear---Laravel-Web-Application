<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class Plant extends Model
{
    protected $fillable = [
        'name', 'desc', 'img', 'condit', 'compata', 'plant_type_id', 'preserve_id'
    ];

    public function plant_types() {
    	return $this->belongsTo('Pionear\Plant_type');
    }

    public function preserves() {
    	return $this->belongsToMany('Pionear\Preserve');
    }

    public function square_pivot() {
    	return $this->belongsToMany('Pionear\Garden', 'square');
    }

}