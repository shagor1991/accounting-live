@extends('layouts.backend.app')

@section('content')
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <div class="row" id="table-bordered">
                    <div class="col-12 col-sm-10 col-md-10 col-lg-10">
                        <form action="{{route('purchase-temp.update', $purchase_temp_info->id)}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method("PUT")
                            <div>
                                <h5>Product Purchase Form</h5>
                                <div class="card mb-1">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-3 col-12">
                                                <label for="mode">Purchase No</label>
                                                <input type="text" required value="{{$purchase_temp_info->purchase_no}}" readonly class="form-control" name="purchase_no" id="purchase_no">
                                                <span class="text-danger" id="purchaseNoErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="project_id">Project Name</label>
                                                <select name="project_id" id="project_id" class="form-control" required>
                                                    <option value=""></option>
                                                    @foreach ($projects as $project)
                                                        <option value="{{$project->id}}" {{$purchase_temp_info->project_id == $project->id ? "selected": ""}}>{{$project->proj_name}}</option>
                                                    @endforeach
                                                </select>
                                                <span class="text-danger" id="projectIdErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="tax_invoice_date">Tax Invoice Date</label>
                                                <input type="date" required class="form-control curentDate" name="tax_invoice_date" id="tax_invoice_date" value="{{$purchase_temp_info->tax_invoice_date}}">
                                                <span class="text-danger" id="taxInvoiceDateErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="tax_invoice_no">Tax Invoice No</label>
                                                <input type="text" required class="form-control" name="tax_invoice_no" id="tax_invoice_no" value="{{$purchase_temp_info->tax_invoice_no}}">
                                                <span class="text-danger" id="taxInvoiceNoErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="mode">Supplier Name</label>
                                                <select name="supplier_id" id="supplier_id" required class="form-control">
                                                    <option value=""></option>
                                                    @foreach ($suppliers as $supplier)
                                                        <option value="{{$supplier->id}}" {{$purchase_temp_info->supplier_id == $supplier->id ? "selected": ""}}>{{$supplier->cc_name}}</option>
                                                    @endforeach
                                                </select>
                                                <span class="text-danger" id="supplierIdErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="contact_no">Contact No</label>
                                                <input type="text" required class="form-control" name="contact_no" id="contact_no" value="{{$purchase_temp_info->partInfo->con_no}}" readonly>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="trn">TRN</label>
                                                <input type="text" name="trn" class="form-control" id="trn" readonly value="{{$purchase_temp_info->partInfo->trn_no}}">
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="address">Address</label>
                                                <input type="text" name="address" class="form-control" id="address" readonly value="{{$purchase_temp_info->partInfo->address}}">
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="pay_mode">Pay Mode</label>
                                                <select name="pay_mode" id="pay_mode" class="form-control" required>
                                                    <option value=""></option>
                                                    @foreach ($payMode as $payMode)
                                                        <option value="{{$payMode->title}}" {{ $purchase_temp_info->pay_mode == $payMode->title ? "selected" : "" }}>{{$payMode->title}}</option>                                                    
                                                    @endforeach
                                                </select>
                                                <span class="text-danger" id="payModeErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="pay_term">Pay Terms</label>
                                                <select name="pay_term" id="pay_term" class="form-control" required>
                                                    <option value=""></option>
                                                    @foreach ($payTerms as $payTerm)
                                                        <option value="{{$payTerm->value}}" {{ $purchase_temp_info->pay_term == $payTerm->value ? "selected" : "" }}>{{$payTerm->title}}</option>
                                                    @endforeach
                                                </select>
                                                <span class="text-danger" id="payTermErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="pay_date">Pay Date</label>
                                                <input type="date" name="pay_date" class="form-control" id="pay_date" readonly value="{{$purchase_temp_info->pay_date}}">
                                                <span class="text-danger" id="payDateErrorMsg"></span>
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="shipping_id">Shippment ID</label>
                                                <input type="text" class="form-control" name="shipping_id" id="shipping_id" value="{{$purchase_temp_info->shipping_id}}" required>
                                                <span class="text-danger" id="shippingIdErrorMsg"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-1">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3 col-12">
                                            <label for="mode">Item List</label>
                                            <select name="item_list_id" id="item_list_id" class="form-control">
                                                <option value=""></option>
                                                @foreach ($itemLists as $itemList)
                                                    <option value="{{$itemList->id}}" {{ old('item_list_id') == $itemList->item_name ? "selected" : "" }}>{{$itemList->item_name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            <span class="text-danger" id="itemListErrorMsg"></span>
                                        </div>
                                        <div class="col-sm-3 col-12">
                                            <label for="purchase_rate">Purchase Rate</label>
                                            <input type="number" class="form-control" name="purchase_rate" id="purchase_rate" value="{{old('purchase_rate')}}">
                                            <span class="text-danger" id="purchaseRateErrorMsg"></span>
                                        </div>
                                        <div class="col-sm-3 col-12">
                                            <label for="quantity">QTY</label>
                                            <input type="number" class="form-control" name="quantity" id="quantity" value="{{old('quantity')}}">
                                            <span class="text-danger" id="quantityErrorMsg"></span>
                                        </div>
                                        <div class="col-sm-3 col-12">
                                            <label for="mode">Unit</label>
                                            <select name="unit" id="unit" class="form-control">
                                                <option value=""></option>
                                                @foreach ($units as $unit)
                                                    <option value="{{$unit->name}}" {{ old('unit') == $unit->name ? "selected" : "" }}>{{$unit->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            <span class="text-danger" id="unitErrorMsg"></span>
                                        </div>
                                        <div class="col-sm-3 col-12">
                                            <label for="mode">Vat Rate</label>
                                            <select name="vat_rate" id="vat_rate" class="form-control">
                                                <option value=""></option>
                                                @foreach ($vatRates as $vatRate)
                                                    <option value="{{$vatRate->value}}" {{ old('vat_rate') == $vatRate->name ? "selected" : "" }}>{{$vatRate->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            <span class="text-danger" id="vatRateErrorMsg"></span>
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="vat_amount">Vat Amount</label>
                                            <input type="number" class="form-control" name="vat_amount" id="vat_amount" value="{{old('vat_amount')}}">
                                            <span class="text-danger" id="vatAmountRateErrorMsg"></span>
                                        </div>
                                        <div class="col-sm-3 col-12">
                                            <label for="total_amount">Total Amount</label>
                                            <input type="number" class="form-control" name="total_amount" id="total_amount" value="{{old('total_amount')}}" readonly>
                                        </div>
                                        <div class="col-sm-3 d-flex p-1">
                                            <button class="btn btn-success btn-sm p-1 m-0" id="add_product"><i class="bx bx-plus"></i></button>
                                            <button class="btn btn-warning btn-sm ml-1 p-1 m-0" id="refresh"><i class="bx bx-refresh"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th scope="col">Item Name</th>
                                        <th scope="col">Brand</th>
                                        <th scope="col">Pur. Rate</th>
                                        <th scope="col">Q'ty</th>
                                        <th scope="col">Amount</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="tempLists">
                                        @foreach ($purchase_details_temps as $item)
                                        <tr>
                                            <td>{{$item->itemName->item_name}}</td>
                                            <td>{{$item->brandName->name}}</td>
                                            <td>{{$item->purchase_rate}}</td>
                                            <td>{{$item->quantity}}</td>
                                            <td>{{$item->total_amount}}</td>
                                            <td>
                                                <a href="{{ route('temp-item-list-delete', $item->id)}}" class="btn btn-danger sm-btn"> <i class="bx bx-trash"></i> </a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    <tr class="border-top" style="line-height: 0;">
                                        <td colspan="4"  class="text-right">Net Amount: </td>
                                        <td colspan="2">
                                            {{ $purchase_details_temps->sum('total_amount') - $purchase_details_temps->sum('vat_amount')}}
                                        </td>
                                    </tr>
                                    <tr style="line-height: 0;">
                                        <td colspan="4" class="text-right">Vat:</td>
                                        <td colspan="2">
                                            {{$purchase_details_temps->sum('vat_amount')}}
                                        </td>
                                    </tr>
                                    <tr style="line-height: 0;">
                                        <td colspan="4" class="text-right">Total Gross:</td>
                                        <td colspan="2">
                                            {{$purchase_details_temps->sum('total_amount')}}
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                            <div class="col-12 d-flex justify-content-end mb-1">
                                <button type="submit" class="btn btn-primary" id="add_product">Submit</button>
                            </div>                  
                        </form>
                    </div>
                    <div class="table-responsive col-md-2 col-sm-2 col-12 col-lg-2">
                        <div><h5>Purchase No</h5></div>
                        <div class="purchase-items ">
                            <ul>
                                @foreach ($product_purchases as $product_purchase)
                                    <li><a href="{{route('item-purchase.show', $product_purchase->id)}}">{{$product_purchase->purchase_no}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: Content-->
@endsection

@push('js')
<script>
    $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN':'{{ csrf_token() }}'
        }
    });
    document.getElementById('tax_invoice_date').valueAsDate = new Date();
    // pay days count
    let selectID = document.getElementById('pay_term');
    selectID.addEventListener('change', function(){
        let currentDate = new Date();
        let addNumberOfDays = this.value;
        var myDate = new Date(new Date().getTime()+(Number(addNumberOfDays)*24*60*60*1000));
        document.getElementById('pay_date').valueAsDate = new Date(myDate);
    });
     // supplier information
    $("#supplier_id").change(function (e) { 
        e.preventDefault();
        var supplier_id = $('#supplier_id option:selected').val();
        $.ajax({
            type:"post",
            url: "{{URL::to('supplier-information')}}",
            data:{
                "supplier_id":supplier_id
            },
            success:function(data){
                document.getElementById('trn').value = data.trn_no;
                document.getElementById('address').value = data.address;
                document.getElementById('contact_no').value = data.con_no;
            }
        });
    });
    // input information get    
    let serial_info = document.getElementById("purchase_no");
    let brand_info = document.getElementById("brand_id");
    let group_info = document.getElementById("group_id");
    let item_list_info = document.getElementById("item_list_id");
    let shipping_id_val = document.getElementById("shipping_id");
    let purchase_rate_val = document.getElementById("purchase_rate");
    let quantity_val = document.getElementById("quantity");
    let unit_info = document.getElementById("unit");
    let vat_rate_info = document.getElementById("vat_rate");
    let taxable_supplies_info = document.getElementById("taxable_supplies");
    let vat_amount_val = document.getElementById("vat_amount");
    let total_amount_val = document.getElementById("total_amount");
    // vat amount coute
    vat_rate_info.addEventListener("change", function(){
        total_amount_count();
    });
    purchase_rate_val.addEventListener('change', function(){
        total_amount_count();
    });
    quantity_val.addEventListener('change', function(){
        total_amount_count();
    });
    // total amount count
    function total_amount_count(){
        let total = purchase_rate_val.value*quantity_val.value;
        let vat_rate = vat_rate_info.value;
        let vat_amount = (total * vat_rate) / 100;
        let total_amount_with_amount = total + vat_amount;
        vat_amount_val.value = vat_amount;
        total_amount_val.value = total_amount_with_amount;
    }
    // temporary item store in table
    $('#add_product').on('click',function(e){
        e.preventDefault();
        $.ajax({
          url: "{{URL::to('temporary-item-list-store')}}",
          type:"post",
          data:{
            purchase_no:serial_info.value,
            item_list_id:item_list_info.value,
            shipping_id:shipping_id_val.value,
            purchase_rate:purchase_rate_val.value,
            quantity:quantity_val.value,
            unit:unit_info.value,
            vat_rate:vat_rate_info.value,
            vat_amount:vat_amount_val.value,
            total_amount:total_amount_val.value,
          },
          success:function(response){
            document.getElementById("tempLists").innerHTML = response;
            item_list_info.selectedIndex = 0;
            unit_info.selectedIndex = 0;
            vat_rate.selectedIndex = 0;
            quantity_val.value = '';
            purchase_rate_val.value = '';
            vat_amount.value = '';
            total_amount.value = '';
            document.getElementById('itemListErrorMsg').innerHTML = '';
            document.getElementById('shippingErrorMsg').innerHTML = '';
            document.getElementById('purchaseRateErrorMsg').innerHTML = '';
            document.getElementById('quantityErrorMsg').innerHTML = '';
            document.getElementById('unitErrorMsg').innerHTML = '';
            document.getElementById('vatRateErrorMsg').innerHTML = '';
            document.getElementById('vatAmountRateErrorMsg').innerHTML = '';
          },
            error: function(response) {
                if(response.responseJSON.errors.item_list_id){
                    document.getElementById('itemListErrorMsg').innerHTML = response.responseJSON.errors.item_list_id;
                }else{
                    document.getElementById('itemListErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.shipping_id){
                    document.getElementById('shippingErrorMsg').innerHTML = response.responseJSON.errors.shipping_id;
                }else{
                    document.getElementById('shippingErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.purchase_rate){
                    document.getElementById('purchaseRateErrorMsg').innerHTML = response.responseJSON.errors.purchase_rate;
                }else{
                    document.getElementById('purchaseRateErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.quantity){
                    document.getElementById('quantityErrorMsg').innerHTML = response.responseJSON.errors.quantity;
                }else{
                    document.getElementById('quantityErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.unit){
                    document.getElementById('unitErrorMsg').innerHTML = response.responseJSON.errors.unit;
                }else{
                    document.getElementById('unitErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.vat_rate){
                    document.getElementById('vatRateErrorMsg').innerHTML = response.responseJSON.errors.vat_rate;
                }else{
                    document.getElementById('vatRateErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.vat_amount){
                    document.getElementById('vatAmountRateErrorMsg').innerHTML = response.responseJSON.errors.vat_amount;
                }else{
                    document.getElementById('vatAmountRateErrorMsg').innerHTML = '';
                }
            },
        });
    });
    let add_purchase = document.getElementById("add_purchase");
    let edit_purchase = document.getElementById("edit_purchase");
    let purchase_no = document.getElementById("purchase_no");
    let project_id = document.getElementById("project_id");
    let tax_invoice_date = document.getElementById("tax_invoice_date");
    let tax_invoice_no = document.getElementById("tax_invoice_no");
    let supplier_id = document.getElementById("supplier_id");
    let pay_mode = document.getElementById("pay_mode");
    let pay_term = document.getElementById("pay_term");
    let pay_date = document.getElementById("pay_date");
    let shipping_id = document.getElementById("shipping_id");
    add_purchase.addEventListener("click", function(e){
        e.preventDefault();
        $.ajax({
            type:"post",
            url: "{{URL::to('purchase-temp-store')}}",
            data:{
                "purchase_no":purchase_no.value,
                "project_id":project_id.value,
                "tax_invoice_date":tax_invoice_date.value,
                "tax_invoice_no":tax_invoice_no.value,
                "supplier_id":supplier_id.value,
                "pay_mode":pay_mode.value,
                "pay_term":pay_term.value,
                "pay_date":pay_date.value,
                "shipping_id":shipping_id.value,
            },
            success:function(data){
               if(data == 1){
                   project_id.setAttribute('disabled', '');
                   supplier_id.setAttribute('disabled', '');
                   tax_invoice_date.setAttribute('readonly', '');
                   tax_invoice_no.setAttribute('readonly', '');
                   pay_mode.setAttribute('disabled', '');
                   pay_term.setAttribute('disabled', '');
                   shipping_id.setAttribute('readonly', '');
                   add_purchase.setAttribute('hidden', '');
                   edit_purchase.removeAttribute('hidden');
                   document.getElementById('purchaseNoErrorMsg').innerHTML = '';
                   document.getElementById('projectIdErrorMsg').innerHTML = '';
                   document.getElementById('taxInvoiceDateErrorMsg').innerHTML = '';
                   document.getElementById('taxInvoiceNoErrorMsg').innerHTML = '';
                   document.getElementById('supplierIdErrorMsg').innerHTML = '';
                   document.getElementById('payModeErrorMsg').innerHTML = '';
                   document.getElementById('payTermErrorMsg').innerHTML = '';
                   document.getElementById('payDateErrorMsg').innerHTML = '';
                   document.getElementById('shippingIdErrorMsg').innerHTML = '';
               }
            },error: function(response) {
                if(response.responseJSON.errors.purchase_no){
                    document.getElementById('purchaseNoErrorMsg').innerHTML = response.responseJSON.errors.purchase_no;
                }else{
                    document.getElementById('purchaseNoErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.project_id){
                    document.getElementById('projectIdErrorMsg').innerHTML = response.responseJSON.errors.project_id;
                }else{
                    document.getElementById('projectIdErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.tax_invoice_date){
                    document.getElementById('taxInvoiceDateErrorMsg').innerHTML = response.responseJSON.errors.tax_invoice_date;
                }else{
                    document.getElementById('taxInvoiceDateErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.tax_invoice_no){
                    document.getElementById('taxInvoiceNoErrorMsg').innerHTML = response.responseJSON.errors.tax_invoice_no;
                }else{
                    document.getElementById('taxInvoiceNoErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.supplier_id){
                    document.getElementById('supplierIdErrorMsg').innerHTML = response.responseJSON.errors.supplier_id;
                }else{
                    document.getElementById('supplierIdErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.pay_mode){
                    document.getElementById('payModeErrorMsg').innerHTML = response.responseJSON.errors.pay_mode;
                }else{
                    document.getElementById('payModeErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.pay_term){
                    document.getElementById('payTermErrorMsg').innerHTML = response.responseJSON.errors.pay_term;
                }else{
                    document.getElementById('payTermErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.pay_date){
                    document.getElementById('payDateErrorMsg').innerHTML = response.responseJSON.errors.pay_date;
                }else{
                    document.getElementById('payDateErrorMsg').innerHTML = '';
                }
                if(response.responseJSON.errors.shipping_id){
                    document.getElementById('shippingIdErrorMsg').innerHTML = response.responseJSON.errors.shipping_id;
                }else{
                    document.getElementById('shippingIdErrorMsg').innerHTML = '';
                }
            },
        });
    });
    edit_purchase.addEventListener("click", function(e){
        e.preventDefault();
        edit_purchase.setAttribute('hidden', '');
        add_purchase.removeAttribute('hidden');
        project_id.removeAttribute('disabled');
        tax_invoice_date.removeAttribute('readonly');
        tax_invoice_no.removeAttribute('readonly');
        supplier_id.removeAttribute('disabled');
        pay_mode.removeAttribute('disabled');
        pay_term.removeAttribute('disabled');
        shipping_id.removeAttribute('readonly');
    });
    // product form reset 
    let productReset = document.getElementById('refresh');
    productReset.addEventListener("click", function(e){
        e.preventDefault();
        item_list_info.selectedIndex = 0;
        vat_rate_info.selectedIndex = 0;
        unit_info.selectedIndex = 0;
        purchase_rate_val.value = "";
        quantity_val.value = "";
        vat_amount_val.value = "";
        total_amount_val.value = "";

    });
</script>
@endpush