<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{   
    public function partInfo(){
        return $this->belongsTo(PartyInfo::class, 'supplier_id');
    }
    public function projectInfo(){
        return $this->belongsTo(ProjectDetail::class, 'project_id');
    }
    public function payMode(){
        return $this->belongsTo(PayMode::class, 'pay_mode');
    }
    public function payTerm(){
        return $this->belongsTo(PayTerm::class, 'pay_term');
    }
    //  work by tarek
    public function stocks()
    {
        return $this->hasMany(StockTransection::class, 'transection_id');
    }
    public function itemStock($itm)
    {
        // return $itm;
        return $this->hasMany(StockTransection::class, 'transection_id')->where('item_id',$itm)->where('stock_effect',1)->sum('quantity');
    }
}
