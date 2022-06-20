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
                                <h4 class="card-title">Group Information</h4>
                                {{-- <a href="" class="btn btn-primary">Add New</a> --}}
                            </div>
                            <div class="card-body">
                                <!-- table bordered -->
                                <form action="{{route('group.update', $group_info->id)}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="col-sm-6 col-12 mb-1">
                                            <label>Group No</label>
                                            <input type="text" class="form-control" readonly name="item_type_no" value="{{$group_info->item_type_no}}">
                                        </div>
                                        <div class="col-sm-6 col-12 mb-1">
                                            <label>Group Name</label>
                                            <input type="text" class="form-control" name="item_type" value="{{$group_info->item_type}}">
                                        </div>
                                        <div class="col-12 d-flex justify-content-end mb-1">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                            <button type="reset" class="btn" id="reset">Reset</button>
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

@endpush