<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TempItemStore extends Model
{
    public function itemName(){
        return $this->belongsTo(ItemList::class, 'item_list_id');
    }
    public function brandName(){
        return $this->belongsTo(Brand::class, 'brand_id');
    }
    public function groupName(){
        return $this->belongsTo(Group::class, 'group_id');
    }
}
