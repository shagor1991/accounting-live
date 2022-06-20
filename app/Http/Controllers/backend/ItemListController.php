<?php

namespace App\Http\Controllers\backend;

use App\Brand;
use App\Group;
use App\Http\Controllers\Controller;
use App\InvoiceItem;
use App\InvoiceItemTemp;
use App\InvoiceTemp;
use App\ItemList;
use App\PurchseDetail;
use App\PurchseDetailTemp;
use App\Unit;
use App\VatRate;
use Illuminate\Http\Request;

class ItemListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $itme_lists = ItemList::paginate(15);
        $units = Unit::all();
        $vatRates = VatRate::all();
        $brands = Brand::all();
        $groups = Group::all();
        return view('backend.item-list.index', compact('itme_lists', 'units', 'vatRates', 'brands', 'groups'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'item_type_no' => 'required',
            'item_type' => 'required',
            'barcode' => 'required',
            'item_name' => 'required',
            'brand_id' => 'required',
            'country' => 'required',
            'unit' => 'required',
            'description' => 'max:250',
            'sell_price' => 'required',
            'vat_rate' => 'required',
            'vat_amount' => 'required',
        ]);
        $item_list = new ItemList;
        $item_list->groups_item_type_no = $request->item_type_no;
        $item_list->groups_item_type = $request->item_type;
        $item_list->barcode = $request->barcode;
        $item_list->item_name = $request->item_name;
        $item_list->brand_id = $request->brand_id;
        $item_list->country = $request->country;
        $item_list->unit = $request->unit;
        $item_list->description = $request->description;
        $item_list->sell_price = $request->sell_price;
        $item_list->vat_rate = $request->vat_rate;
        $item_list->vat_amount = $request->vat_amount;
        $item_list->save();
        $notification= array(
            'message'       => 'Item Listing successfully!',
            'alert-type'    => 'success'
        );
        return redirect('item-list')->with($notification);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $item_info = ItemList::find($id);
        $units = Unit::all();
        $vatRates = VatRate::all();
        $brands = Brand::all();
        $groups = Group::all();
        return view('backend.item-list.show', compact('item_info', 'units', 'vatRates', 'brands', 'groups'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item_info = ItemList::find($id);
        $units = Unit::all();
        $vatRates = VatRate::all();
        $brands = Brand::all();
        $groups = Group::all();
        return view('backend.item-list.edit', compact('item_info', 'units', 'vatRates', 'brands', 'groups'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'item_type_no' => 'required',
            'item_type' => 'required',
            'barcode' => 'required',
            'item_name' => 'required',
            'brand_id' => 'required',
            'country' => 'required',
            'unit' => 'required',
            'description' => 'max:250',
            'sell_price' => 'required',
            'vat_rate' => 'required',
            'vat_amount' => 'required',
        ]);
        $item_list = ItemList::find($id);
        $item_list->groups_item_type_no = $request->item_type_no;
        $item_list->groups_item_type = $request->item_type;
        $item_list->barcode = $request->barcode;
        $item_list->item_name = $request->item_name;
        $item_list->brand_id = $request->brand_id;
        $item_list->country = $request->country;
        $item_list->unit = $request->unit;
        $item_list->description = $request->description;
        $item_list->sell_price = $request->sell_price;
        $item_list->vat_rate = $request->vat_rate;
        $item_list->vat_amount = $request->vat_amount;
        $item_list->save();
        $notification= array(
            'message'       => 'Item Listing Updated successfully!',
            'alert-type'    => 'success'
        );
        return redirect('item-list')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        dd($id);
    }

    public function item_type_no(Request $request){
        $item_type_no = $request->item_type_id;
        if($item_type_no){
            $item_type_id = Group::all();
            return response()->json($item_type_id);
        }else{
            $item_type_id = [];
            return response()->json($item_type_id);
        }
    }
    public function item_type_id(Request $request){
        $item_type = $request->item_id;
        if($item_type){
            $item_type_no = Group::all();
            return response()->json($item_type_no);
        }else{
            $item_type_no = [];
            return response()->json($item_type_no);
        }
    }
    public function brand_country(Request $request){
        $brand_country = Brand::where('id', $request->brand_id)->first();
        return $brand_country->origin;
    }
    public function item_delete(ItemList $id)
    {
        $searching1 = PurchseDetail::where('item_id', $id->id)->count();
        $searching2 = PurchseDetailTemp::where('item_id', $id->id)->count();
        $searching3 = InvoiceItem::where('item_id', $id->id)->count();
        $searching4 = InvoiceItemTemp::where('item_id', $id->id)->count();
        if ($searching1 > 0 || $searching2 > 0 || $searching3 > 0 || $searching4 > 0) {
            return back()->with('error', "It has Related with Others Table");
        }
        dd($id);
        $id->delete();
        $notification= array(
            'message'       => 'Item Deleted successfully!',
            'alert-type'    => 'success'
        );
        return redirect('item-list')->with($notification);
    }
}
