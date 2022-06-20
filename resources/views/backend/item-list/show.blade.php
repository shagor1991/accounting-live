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
                                <form action="#" method="POST" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="item_type_no">Item Type No</label>
                                            <input type="text" value="{{$item_info->groupName->item_type_no}}" readonly class="form-control">
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="item_type">Item Type</label>
                                            <input type="text" value="{{$item_info->groupName->item_type}}" readonly class="form-control">
                                        </div>
                                        <div class="col-sm-6 col-12 mb-1">
                                            <label for="mode">Item Name</label>
                                            <input type="text" required class="form-control" name="item_name" id="item_name" value="{{$item_info->item_name}}" readonly>
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="mode">UPC/Barcode</label>
                                            <input type="text" required value="{{$item_info->barcode}}" readonly class="form-control" name="barcode" id="barcode">
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="brand_id">Supplier/Brand</label>
                                            <input type="text" value="{{$item_info->brandName->name}}" readonly class="form-control">
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="country">Made In Country</label>
                                            <input type="text" class="form-control" name="country" id="country" readonly required value="{{$item_info->brandName->origin}}">
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="mode">Unit</label>
                                            <input type="text" value="{{$item_info->unit}}" readonly class="form-control">
                                        </div>
                                        <div class="col-sm-6 col-12 mb-1">
                                            <label for="description">Description</label>
                                            <input type="text" class="form-control" name="description" id="description" value="{{$item_info->description}}" readonly>
                                            @error('description')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="sell_price">Sell Price</label>
                                            <input type="number" required class="form-control" name="sell_price" id="sell_price" value="{{$item_info->sell_price}}" readonly>
                                        </div>
                                        <div class="col-sm-3 col-12 mb-1">
                                            <label for="mode">Vat Amount</label>
                                            <input type="text" value="{{$item_info->vat_amount}}" readonly class="form-control">
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
     // Item type
    $("#item_type").change(function (e) { 
        e.preventDefault();
        var item_type = $('#item_type option:selected').val();
        $.ajax({
            type:"post",
            url: "{{URL::to('item-type')}}",
            data:{
                "item_type":item_type
            },
            success:function(data){
                $('#item_type_no').empty();
                var optionHtml = '<option value=""> Select Section </option>';
                data.forEach(function(element, index) {
                    var isSelected = '';
                    if(item_type == element.item_type){
                        isSelected = 'selected';
                    }
                    optionHtml += "<option value='"+element.groups_item_type_no +"' "+isSelected+">"+ element.groups_item_type_no+"</option>";
                });
                $('#item_type_no').html(optionHtml);
            }
        });
    });
    // Item type no
    $("#item_type_no").change(function (e) {
        e.preventDefault();
        var item_type_no = $('#item_type_no').val();
        console.log(item_type_no);
        $.ajax({
            type:"post",
            url: "{{URL::to('item-type-no')}}",
            data:{
                "item_type_no":item_type_no
            },
            success:function(data){
                $('#item_type').empty();
                var optionHtml = '<option value=""> Select Section </option>';
                data.forEach(function(element, index) {
                    var isSelected = '';
                    if(item_type_no == element.groups_item_type_no){
                        isSelected = 'selected';
                    }
                    optionHtml += "<option value='"+element.groups_item_type +"' "+isSelected+">"+ element.groups_item_type+"</option>";
                });
                $('#item_type').html(optionHtml);
            }
        })
    });
     // Brand country get
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
</script>
@endpush