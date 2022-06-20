<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $fillable = ['brand_id', 'name', 'origin'];

    public function items()
    {
        return $this->hasMany(ItemList::class);
    }
}
