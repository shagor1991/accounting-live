<?php

namespace App\Http\Controllers\backend;

use App\Brand;
use App\Group;
use App\Http\Controllers\Controller;
use App\ItemList;
use App\PartyInfo;
use App\PayMode;
use App\PayTerm;
use App\ProjectDetail;
use App\Purchase;
use App\PurchaseTemp;
use App\PurchseDetail;
use App\PurchseDetailTemp;
use App\StockTransection;
use App\Unit;
use App\VatRate;
use Illuminate\Http\Request;

class PurchaseTempController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
            'project_id' => 'required',
            'supplier_id' => 'required',
            'tax_invoice_no' => 'required',
            'tax_invoice_date' => 'required',
            'purchase_no' => 'required',
            'pay_mode' => 'required',
            'pay_term' => 'required',
            'pay_date' => 'required',
            'shipping_id' => 'required',
        ]);
        $purchase_items_temp = PurchseDetailTemp::where('purchase_no', $request->purchase_no)->get();
        if($purchase_items_temp->isEmpty()){
            $notification = array(
                'message' => 'Please atleast one item add!',
                'alert-type' => 'warning'
            );
            return redirect('item-purchase')->with($notification);
        }
        $purchase_temp = new PurchaseTemp;
        $purchase_temp->project_id = $request->project_id;
        $purchase_temp->supplier_id = $request->supplier_id;
        $purchase_temp->tax_invoice_no = $request->tax_invoice_no;
        $purchase_temp->tax_invoice_date = $request->tax_invoice_date;
        $purchase_temp->purchase_no = $request->purchase_no;
        $purchase_temp->temp_purchase_no = $request->temp_purchase_no;
        $purchase_temp->pay_mode = $request->pay_mode;
        $purchase_temp->pay_term = $request->pay_term;
        $purchase_temp->pay_date = $request->pay_date;
        $purchase_temp->shipping_id = $request->shipping_id;
        $purchase_temp->save();
        $notification = array(
            'message' => 'Purchase Entry Successful!',
            'alert-type' => 'success'
        );
        return back()->with($notification);
        // $purchase_info = PurchaseTemp::find($purchase_temp->id);
        // $purchase_items = PurchseDetailTemp::where('purchase_no', $purchase_info->purchase_no)->get();
        // $payMode = PayMode::all();
        // $payTerms = PayTerm::all();
        // $product_purchases = PurchaseTemp::orderBy('id', 'asc')->paginate(15);
        // return view('backend.item-purchase.show', compact('purchase_info', 'purchase_items', 'payMode', 'payTerms', 'product_purchases'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // dd($id);
        $purchase_temp_info = PurchaseTemp::find($id);
        $purchase_details_temps = PurchseDetailTemp::where('purchase_no', $purchase_temp_info->purchase_no)->get();
        $brands = Brand::all();
        $units = Unit::all();
        $vatRates = VatRate::all();
        $projects = ProjectDetail::all();
        $suppliers = PartyInfo::all();
        $payMode = PayMode::all();
        $payTerms = PayTerm::all();
        $groups = Group::all();
        $itemLists = ItemList::all();
        $product_purchases = PurchaseTemp::orderBy('id', 'asc')->paginate(15);
        return view('backend.item-purchase.edit', compact('product_purchases', 'brands', 'units', 'vatRates', 'projects', 'suppliers', 'payMode', 'payTerms', 'groups', 'itemLists', 'purchase_details_temps', 'purchase_temp_info'));
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
            'project_id' => 'required',
            'supplier_id' => 'required',
            'tax_invoice_no' => 'required',
            'tax_invoice_date' => 'required',
            'purchase_no' => 'required',
            'pay_mode' => 'required',
            'pay_term' => 'required',
            'pay_date' => 'required',
            'shipping_id' => 'required',
        ]);
        $purchase_items_temp = PurchseDetailTemp::where('purchase_no', $request->purchase_no)->get();
        if($purchase_items_temp->isEmpty()){
            $notification = array(
                'message' => 'Please atleast one item add!',
                'alert-type' => 'warning'
            );
            return back()->with($notification);
        }
        $purchase_temp = PurchaseTemp::find($id);
        $purchase_temp->project_id = $request->project_id;
        $purchase_temp->supplier_id = $request->supplier_id;
        $purchase_temp->tax_invoice_no = $request->tax_invoice_no;
        $purchase_temp->tax_invoice_date = $request->tax_invoice_date;
        $purchase_temp->purchase_no = $request->purchase_no;
        $purchase_temp->pay_mode = $request->pay_mode;
        $purchase_temp->pay_term = $request->pay_term;
        $purchase_temp->pay_date = $request->pay_date;
        $purchase_temp->shipping_id = $request->shipping_id;
        $purchase_temp->save();
        $notification = array(
            'message' => 'Purchase Entry Successful!',
            'alert-type' => 'success'
        );
        return redirect('item-purchase')->with($notification);

        // $purchase_info = PurchaseTemp::find($purchase_temp->id);
        // $purchase_items = PurchseDetailTemp::where('purchase_no', $purchase_info->purchase_no)->get();
        // $payMode = PayMode::all();
        // $payTerms = PayTerm::all();
        // $product_purchases = PurchaseTemp::orderBy('id', 'asc')->paginate(15);
        // return view('backend.item-purchase.show', compact('purchase_info', 'purchase_items', 'payMode', 'payTerms', 'product_purchases'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function purchase_temp_trasfer(PurchaseTemp $id){
        // dd($id->shipping_id);
        $purchase_items = PurchseDetailTemp::where('purchase_no', $id->purchase_no)->get();
        $purchase_trasfer = new Purchase;
        $purchase_trasfer->type = $id->type;
        $purchase_trasfer->po_list = $id->po_list;
        $purchase_trasfer->project_id = $id->project_id;
        $purchase_trasfer->supplier_id = $id->supplier_id;
        $purchase_trasfer->tax_invoice_no = $id->tax_invoice_no;
        $purchase_trasfer->tax_invoice_date = $id->tax_invoice_date;
        $purchase_trasfer->purchase_no = $id->purchase_no;
        $purchase_trasfer->temp_purchase_no = $id->temp_purchase_no;
        $purchase_trasfer->pay_mode = $id->pay_mode;
        $purchase_trasfer->pay_term = $id->pay_term;
        $purchase_trasfer->pay_date = $id->pay_date;
        $purchase_trasfer->shipping_id = $id->shipping_id;
        $save = $purchase_trasfer->save();
        if($save){
            $id->delete();
        }
        foreach($purchase_items as $item){
            $item_list = new PurchseDetail;
            $item_list->purchase_no = $item->purchase_no;
            $item_list->brand_id = $item->brand_id;
            $item_list->group_id = $item->group_id;
            $item_list->item_id = $item->item_id;
            $item_list->purchase_rate = $item->purchase_rate;
            $item_list->quantity = $item->quantity;
            $item_list->unit = $item->unit;
            $item_list->vat_rate = $item->vat_rate;
            $item_list->vat_amount = $item->vat_amount;
            $item_list->total_amount = $item->total_amount;
            $item_list->taxable_supplies = $item->taxable_supplies;
            $save = $item_list->save();
            // item stock
            $item_stock = new StockTransection;
            $item_stock->item_id = $item->item_id;
            $item_stock->transection_id = $purchase_trasfer->id;
            $item_stock->quantity = $item->quantity;
            $item_stock->stock_effect = 1;
            $item_stock->tns_type_code = "R";
            $item_stock->tns_description = "Purchase";
            $item_stock->save();
            $purchase_items_temp = PurchseDetailTemp::find($item->id);
            if($save){
                $purchase_items_temp->delete();
            }
        }
        return redirect('item-purchase');
    }
}
