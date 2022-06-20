@extends('layouts.backend.app')

@section('content')
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <div class="row" id="table-bordered">
                    <div class="col-12 col-sm-10 col-md-10 col-lg-10">
                        <form action="{{route('item-purchase.store')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div>
                                <h5>Product Purchase Information</h5>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-3 col-12">
                                                <label for="mode">Purchase No</label>
                                                <input type="text" required value="{{$purchase_info->purchase_no}}" readonly class="form-control" name="purchase_no" id="purchase_no">
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="project_id">Project Name</label>
                                                <input type="text" readonly value="{{$purchase_info->projectInfo->proj_name}}" class="form-control">
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="tax_invoice_date">Tax Invoice Date</label>
                                                <input type="date" required class="form-control curentDate" name="tax_invoice_date" id="tax_invoice_date" value="{{$purchase_info->tax_invoice_date}}" readonly >
                                                @error('tax_invoice_date')
                                                    <span class="error">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="tax_invoice_no">Tax Invoice No</label>
                                                <input type="text" required class="form-control" name="tax_invoice_no" id="tax_invoice_no" value="{{$purchase_info->tax_invoice_no}}" readonly>
                                                @error('tax_invoice_no')
                                                    <span class="error">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="mode">Supplier Name</label>
                                                <input type="text" readonly value="{{$purchase_info->partInfo->cc_name}}" class="form-control">
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="trn">TRN</label>
                                                <input type="text" name="trn" class="form-control" id="trn" readonly value="{{$purchase_info->partInfo->trn_no}}">
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="contact_no">Contact No</label>
                                                <input type="text" required class="form-control" name="contact_no" id="contact_no" value="{{$purchase_info->partInfo->con_no}}" readonly>
                                                @error('contact_no')
                                                    <span class="error">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="address">Address</label>
                                                <input type="text" name="address" class="form-control" id="address" readonly value="{{$purchase_info->partInfo->address}}">
                                                @error('address')
                                                    <span class="error">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="pay_mode">Pay Mode</label>
                                                <select name="pay_mode" id="pay_mode" class="form-control" required disabled>
                                                    <option value=""></option>
                                                    @foreach ($payMode as $payMode)
                                                        <option value="{{$payMode->title}}" {{$purchase_info->pay_mode == $payMode->title ? "selected":""}}>{{$payMode->title}}</option>                                                    
                                                    @endforeach
                                                </select>
                                                @error('pay_mode')
                                                    <span class="error">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="pay_term">Pay Terms</label>
                                                <select name="pay_term" id="pay_term" class="form-control" required disabled>
                                                    <option value=""></option>
                                                    @foreach ($payTerms as $payTerm)
                                                        <option value="{{$payTerm->value}}" {{$purchase_info->pay_term == $payTerm->value ? "selected":""}}>{{$payTerm->title}}</option>                                                    
                                                    @endforeach
                                                </select>
                                                @error('pay_term')
                                                    <span class="error">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="pay_date">Pay Date</label>
                                                <input type="date" name="pay_date" class="form-control" id="pay_date" readonly value="{{$purchase_info->pay_date}}">                                    
                                                @error('pay_date')
                                                    <span class="error">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <label for="pay_date">Shippment ID</label>
                                                <input type="text" class="form-control" readonly value="{{$purchase_info->shipping_id}}">
                                            </div>
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
                                    </tr>
                                </thead>
                                <tbody id="tempLists">
                                    @foreach ($purchase_items as $item)
                                    <tr  style="line-height: 0;">
                                        <td>{{$item->itemName->item_name}}</td>
                                        <td>{{$item->brandName->name}}</td>
                                        <td>{{$item->purchase_rate}}</td>
                                        <td>{{$item->quantity}}</td>
                                        <td>{{$item->total_amount}}</td>
                                    </tr>
                                    @endforeach
                                    <tr class="border-top" style="line-height: 0;">
                                        <td colspan="4"  class="text-right">Net Amount: </td>
                                        <td colspan="2">
                                            {{ $purchase_items->sum('total_amount') - $purchase_items->sum('vat_amount')}}
                                        </td>
                                    </tr>
                                    <tr style="line-height: 0;">
                                        <td colspan="4" class="text-right">Vat:</td>
                                        <td colspan="2">
                                            {{$purchase_items->sum('vat_amount')}}
                                        </td>
                                    </tr>
                                    <tr style="line-height: 0;">
                                        <td colspan="4" class="text-right">Total Gross:</td>
                                        <td colspan="2">
                                            {{$purchase_items->sum('total_amount')}}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                        <div class="mb-3">
                            <a class="btn btn-warning" href="{{route('purchase-temp.edit', $purchase_info->id)}}">Edit</a>
                            <a href="{{route('purchase-print', $purchase_info->id)}}" class="btn btn-light">Print</a>
                            <a class="btn btn-success" href="{{route('purchase-temp-trasfer', $purchase_info->id)}}">Process</a>
                        </div>
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
