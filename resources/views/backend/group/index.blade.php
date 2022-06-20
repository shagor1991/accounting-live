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
                                <form action="{{route('group.store')}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="">Group No</label>
                                            @php
                                            $item_type_no = '';
                                            $lest_gat_id = App\Group::latest('id')->first();
                                                if($lest_gat_id){
                                                    if($lest_gat_id->id <= 9){
                                                        $item_type_no = 'GRP-000'.($lest_gat_id->id + 1);
                                                    }elseif ($lest_gat_id->id <= 99) {
                                                        $item_type_no = 'GRP-00'.($lest_gat_id->id + 1);
                                                    }elseif ($lest_gat_id->id <= 100) {
                                                        $item_type_no = 'GRP-0'.($lest_gat_id->id + 1);
                                                    }elseif ($lest_gat_id->id <= 1000) {
                                                        $item_type_no = 'GRP-'.($lest_gat_id->id + 1);
                                                    }
                                                }else {
                                                    $item_type_no = 'GRP-0001';
                                                }
                                            @endphp
                                            <input type="text" name="item_type_no" class="form-control" readonly value="{{$item_type_no}}">
                                        </div>
                                        <div class="col-sm-6 col-12 mb-1">
                                            <label>Group Name</label>
                                            <input type="text" class="form-control" name="item_type">
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
                                    <input type="text" name="q" class="form-control input-xs pull-right ajax-search" placeholder="Search By Group No, Group Name" data-url="{{ route('admin.masterAccSearchAjax',$id="group") }}">
                                </form>
                            </div>
                            <table class="table table-bordered mb-0">
                                <thead>
                                    <tr>
                                        <th>Group No</th>
                                        <th>Group Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody class="user-table-body">
                                    @foreach ($groups as $item)
                                        <tr>
                                            <td>{{$item->item_type_no}}</td>
                                            <td>{{$item->item_type}}</td>
                                            <td>
                                                <a href="{{route('group.edit', $item->id)}}" class="btn btn-sm btn-warning"><i class="bx bx-edit"></i></a>                                    
                                                <a href="">
                                                    <form action="{{ route('group.destroy', $item->id) }}" method="POST" class="flot-right">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Confirm?')" ><i class="bx bx-trash"></i></button>
                                                    </form>
                                                </a>
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

@endpush