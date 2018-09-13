<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class Ingredient extends Model
{
    protected $fillable = [
		'name', 'preserve_id'
	];
}
