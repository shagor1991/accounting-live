<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class ItemList extends Model
{
    protected $table = "items";
    public function brandName(){
        return $this->belongsTo(Brand::class, 'brand_id');
    }
    public function groupName(){
        return $this->belongsTo(Group::class, 'groups_item_type_no');
    }


    public function itemOpenningStock()
    {
        return $this->hasOne('App\OpeningStock','item_id');
    }


    public function itemStockPurchase()
    {
        return $this->hasMany('App\StockTransection', 'item_id');
    }

    public function itemStockQuantityPurch($itm)
    {
        $purchase=StockTransection::where('item_id', $itm->id)->where('stock_effect', 1)->sum('quantity');
        return $purchase;
    }

    public function thisMontItemPurch($itm)
    {
        $purchase=StockTransection::where('item_id', $itm->id)->where('stock_effect', 1)->whereMonth('created_at', Carbon::now()->month)->sum('quantity');
        return $purchase;
    }


    public function itemStockQuantitySale($itm)
    {
        $purchase=StockTransection::where('item_id', $itm->id)->where('stock_effect', -1)->sum('quantity');
        return $purchase;
    }


    public function thisMonthItemSale($itm)
    {
        $purchase=StockTransection::where('item_id', $itm->id)->where('stock_effect', -1)->whereMonth('created_at', Carbon::now()->month)->sum('quantity');
        return $purchase;
    }


    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function vatRate()
    {
        return $this->belongsTo(VatRate::class,'vat_rate');
    }

}
