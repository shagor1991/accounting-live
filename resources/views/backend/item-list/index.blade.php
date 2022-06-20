@extends('layouts.backend.app')

@section('content')

<style>
    .table-bordered {
        border: 1px solid #f4f4f4;
    }

    .table {
        width: 100%;
        max-width: 100%;
        margin-bottom: 20px;
    }

    table {
        background-color: transparent;
    }

    table {
        border-spacing: 0;
        border-collapse: collapse;
    }


    .tarek-container{
    width: 85%;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 88% 12%;
    background-color: #ffff;
    }

    .invoice-label{
        font-size: 10px !important
    }

</style>
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
                                <form action="{{route('item-list.store')}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-sm-2 col-12 mb-1" style="display: none;">
                                            <label for="item_type_no">Item Type No</label>
                                            <select name="item_type_no" id="item_type_no" class="form-control" required>
                                                <option value=""></option>
                                                @foreach ($groups as $itme_list)
                                                    <option value="{{$itme_list->id}}" {{ old('item_type_no') == $itme_list->item_type_no ? "selected" : "" }}>{{$itme_list->item_type_no}}</option>
                                                @endforeach
                                            </select>
                                            @error('item_type_no')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="item_type">Item Type</label>
                                            <select name="item_type" id="item_type" class="form-control common-select2" required>
                                                <option value=""></option>
                                                @foreach ($groups as $itme_list)
                                                    <option value="{{$itme_list->id}}" {{ old('item_type') == $itme_list->item_type ? "selected" : "" }}>{{$itme_list->item_type}}</option>
                                                @endforeach
                                            </select>
                                            @error('item_type')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="mode">UPC/Barcode</label>
                                            @php
                                            $item_list_id_value = '';
                                            $item_list_id = App\ItemList::max('barcode');
                                                if($item_list_id){
                                                    $item_list_id_value = ($item_list_id + 1);
                                                }else {
                                                    $item_list_id_value = 1001;
                                                }
                                            @endphp
                                            <input type="text" required value="{{$item_list_id_value}}" readonly class="form-control" name="barcode" id="barcode">
                                        </div>
                                        <div class="col-sm-4 col-12 mb-1">
                                            <label for="mode">Item Name</label>
                                            <input type="text" required class="form-control" name="item_name" id="item_name" value="{{old('item_name')}}">
                                            @error('item_name')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="brand_id">Supplier/Brand</label>
                                            <select name="brand_id" id="brand_id" class="form-control common-select2" required>
                                                <option value=""></option>
                                                @foreach ($brands as $brand)
                                                    <option value="{{$brand->id}}" {{ old('brand_id') == $brand->id ? "selected" : "" }}>{{$brand->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            @error('brand_id')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="country">Made In Country</label>
                                            <input type="text" class="form-control" name="country" id="country" readonly required value="{{old('country')}}">
                                            @error('country')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="mode">Unit</label>
                                            <select name="unit" id="unit" class="form-control" required>
                                                <option value=""></option>
                                                @foreach ($units as $unit)
                                                    <option value="{{$unit->name}}" {{ old('unit') == $unit->name ? "selected" : "" }}>{{$unit->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            @error('unit')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="sell_price">Sell Price</label>
                                            <input type="number" required class="form-control" name="sell_price" id="sell_price" value="{{old('sell_price')}}">
                                            @error('sell_price')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="mode">Sell Vat Rate</label>
                                            <select name="vat_rate" id="vat_rate" class="form-control" required>
                                                <option value=""></option>
                                                @foreach ($vatRates as $vatRate)
                                                    <option value="{{$vatRate->value}}" {{ old('vat_rate') == $vatRate->name ? "selected" : "" }}>{{$vatRate->name}}</option>                                                    
                                                @endforeach
                                            </select>
                                            @error('vat_rate')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-2 col-12 mb-1">
                                            <label for="vat_amount">Vate Amount</label>
                                            <input type="text" class="form-control" name="vat_amount" id="vat_amount" readonly required >
                                            @error('vat_amount')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-4 col-12 mb-1">
                                            <label for="description">Description</label>
                                            <input type="text" class="form-control" name="description" id="description" value="{{old('description')}}">
                                            @error('description')
                                                <span class="error">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="col-12 d-flex justify-content-end mb-1">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                            <button type="reset" class="btn" id="reset">Reset</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="table-responsive card">
                            <div class="col-md-6 mb-1 mt-1">
                                <form>
                                    <input type="text" name="q" class="form-control input-xs pull-right ajax-search" placeholder="Search By Barcode, Item Name, Unit, Sell Price" data-url="{{ route('admin.masterAccSearchAjax',$id="iteList") }}">
                                </form>
                            </div>
                            <table class="table table-sm table-bordered">
                                <thead>
                                    <tr>
                                        <th>Barcode</th>
                                        <th>Name</th>
                                        <th>Item Type</th>
                                        <th>Vat</th>
                                        <th>Sell Price</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody class="user-table-body">
                                    @foreach ($itme_lists as $itme_list)
                                        <tr style="line-height: 0px;" class="data-row">
                                            <td>{{$itme_list->barcode}}</td>
                                            <td>{{$itme_list->item_name}}</td>
                                            <td>{{$itme_list->groupName->item_type}}</td>
                                            <td>{{$itme_list->vat_amount}}</td>
                                            <td>{{$itme_list->sell_price}}</td>
                                            <td>
                                                <div class="btn-group ">
                                                    <div class="dropdown">
                                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            Actions
                                                        </button>
                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                            <a class="dropdown-item" href="{{route('item-list.edit', $itme_list->id)}}">Edit</a>
                                                            <a class="dropdown-item" href="{{route('item-list.show', $itme_list->id)}}">View</a>
                                                            <a class="dropdown-item" href="{{ route('item-list.item-delete', $itme_list->id)}}">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
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
    $(document).ready(function() {
            $('.common-select2').select2();
    })
    $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN':'{{ csrf_token() }}'
        }
    });
     // Item type
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