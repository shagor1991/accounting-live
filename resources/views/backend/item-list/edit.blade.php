@extends('layouts.backend.app')

@section('content')
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <div class="row" id="table-bordered">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Item Lists</h4>
                            </div>
                            <div class="card-body">
                                <form action="{{route('item-list.update', $item_info->id)}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method("PUT")
                                    <div class="row">
                                        <div class="col-sm-2 col-12 mb-1" style="display: none;">
                                            <label for="item_type_no">Item Type No</label>
                                            <select name="item_type_no" id="item_type_no" class="form-control" required>
                                                <option value=""></option>
                                                @foreach ($groups as $itme_list)
                                                    <option value="{{$itme_list->id}}" {{ $item_info->groups_item_type_no == $itme_list->id ? "selected" : "" }}>{{$itme_list->item_type_no}}</option>
                                                @endforeach
                                            </select>
                                            @error('item_type_no')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="item_type">Item Type</label>
                                            <select name="item_type" id="item_type" class="form-control common-select2" required>
                                                @foreach ($groups as $itme_list)
                                                    <option value="{{$itme_list->id}}" {{ $item_info->groups_item_type_no == $itme_list->id ? "selected" : "" }}>{{$itme_list->item_type}}</option>
                                                @endforeach
                                            </select>
                                            @error('item_type')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="mode">UPC/Barcode</label>
                                            <input type="text" required value="{{$item_info->barcode}}" readonly class="form-control" name="barcode" id="barcode">
                                        </div>
                                        <div class="col-sm-4 col-12 mb-1">
                                            <label for="mode">Item Name</label>
                                            <input type="text" required class="form-control" name="item_name" id="item_name" value="{{$item_info->item_name}}">
                                            @error('item_name')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="brand_id">Supplier/Brand</label>
                                            <select name="brand_id" id="brand_id" class="form-control common-select2" required>
                                                <option value=""></option>
                                                <option value=""></option>
                                                @foreach ($brands as $brand)
                                                    <option value="{{$brand->id}}" {{ $item_info->brand_id == $brand->id ? "selected" : "" }}>{{$brand->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            @error('brand_id')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="country">Made In Country</label>
                                            <input type="text" class="form-control" name="country" id="country" readonly required value="{{$item_info->country}}">
                                            @error('country')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="mode">Unit</label>
                                            <select name="unit" id="unit" class="form-control" required>
                                                <option value=""></option>
                                                @foreach ($units as $unit)
                                                    <option value="{{$unit->name}}" {{ $item_info->unit == $unit->name ? "selected" : "" }}>{{$unit->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            @error('unit')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="sell_price">Sell Price</label>
                                            <input type="number" required class="form-control" name="sell_price" id="sell_price" value="{{$item_info->sell_price}}">
                                            @error('sell_price')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="mode">Sell Vat Rate</label>
                                            <select name="vat_rate" id="vat_rate" class="form-control" required>
                                                <option value=""></option>
                                                @foreach ($vatRates as $vatRate)
                                                    <option value="{{$vatRate->value}}" {{ 0 == $vatRate->value ? "selected" : "" }}>{{$vatRate->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            @error('vat_rate')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="vat_amount">Vate Amount</label>
                                            <input type="text" class="form-control" name="vat_amount" id="vat_amount" readonly required value="{{$item_info->vat_amount}}">
                                            @error('vat_amount')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-4 col-12 mb-1">
                                            <label for="description">Description</label>
                                            <input type="text" class="form-control" name="description" id="description" value="{{$item_info->description}}">
                                            @error('description')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="col-12 d-flex justify-content-end mb-1">
                                            <button type="submit" class="btn btn-primary">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
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
    $("#item_type").change(function (e) { 
        e.preventDefault();
        var item_id = $('#item_type option:selected').val();
        $.ajax({
            type:"post",
            url: "{{URL::to('item-type-id')}}",
            data:{
                "item_id":item_id
            },
            success:function(data){
                $('#item_type_no').empty();
                var optionHtml = '<option value=""> Select Section </option>';
                data.forEach(function(element, index) {
                    var isSelected = '';
                    if(item_id == element.id){
                        isSelected = 'selected';
                    }
                    optionHtml += "<option value='"+element.id +"' "+isSelected+">"+ element.item_type_no+"</option>";
                });
                $('#item_type_no').html(optionHtml);
            }
        });
    });
    // Item type no
    $("#item_type_no").change(function (e) {
        e.preventDefault();
        var item_type_id = $('#item_type_no').val();
        $.ajax({
            type:"post",
            url: "{{URL::to('item-type-no')}}",
            data:{
                "item_type_id":item_type_id
            },
            success:function(data){
                $('#item_type').empty();
                var optionHtml = '<option value=""> Select Section </option>';
                data.forEach(function(element, index) {
                    var isSelected = '';
                    if(item_type_id == element.id){
                        isSelected = 'selected';
                    }
                    optionHtml += "<option value='"+element.id +"' "+isSelected+">"+ element.item_type+"</option>";
                });
                $('#item_type').html(optionHtml);
            }
        })
    });
    $("#brand_id").change(function (e) { 
        e.preventDefault();
        var brand_id = $('#brand_id option:selected').val();
        $.ajax({
            type:"post",
            url: "{{URL::to('brand-country')}}",
            data:{
                "brand_id":brand_id
            },
            success:function(data){
                $('#country').empty();
                document.getElementById("country").value = data;              
            }
        });
    });
    // vat amount coute
    let purchase_rate_val = document.getElementById('sell_price');
    let vat_rate_info = document.getElementById('vat_rate');
    let vat_amount_val = document.getElementById('vat_amount');
    vat_rate_info.addEventListener("change", function(){
        total_amount_count();
    });
    purchase_rate_val.addEventListener('change', function(){
        total_amount_count();
    });
    // total amount count
    function total_amount_count(){
        let total = purchase_rate_val.value;
        let vat_rate = vat_rate_info.value;
        let vat_amount = (total * vat_rate) / 100;
        vat_amount_val.value = vat_amount;
    }
</script>
@endpush