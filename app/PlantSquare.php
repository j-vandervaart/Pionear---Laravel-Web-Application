<?php

namespace Pionear;

use Illuminate\Database\Eloquent\Model;

class PlantSquare extends Model
{
    protected $fillable = [
    	"plant_id", "square_id"
    ];

    protected $table = 'plant_square';
}
