@extends('layouts.backend.app')
@section('title', 'purchase return reject list')
@section('content')
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <div class="row" id="table-bordered">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="table-responsive card">
                            <div class="card-header">
                                <h4 class="card-title">PT Rejected List</h4>
                            </div>
                            <table  class="table table-sm table-bordered">
                                <thead>
                                    <tr>
                                        <th>PT No</th>
                                        <th>PO NO</th>
                                        <th>GR No</th>
                                        <th>Branch Name</th>
                                        <th>SUPPLIER NAME</th>
                                        <th>Comment</th>
                                    </tr>
                                </thead>
                                <tbody  id="tempLists"  class="user-table-body">
                                    @foreach ($pt_rejected_lists as $item)
                                    @php
                                        $n = App\Notification::where("purchase_id", $item->purchase_return_no)->where("state", "PT Editor")->where("status", 100)->first();
                                    @endphp
                                        <tr class="data-row">
                                            <td>{{$item->purchase_return_no}}</td>
                                            <td>{{$item->po_no}}</td>
                                            <td>{{$item->gr_no}}</td>
                                            <td>{{$item->projectInfo->proj_name}}</td>
                                            <td>{{$item->partInfo->pi_name}}</td>
                                            <td>{{$n->comment}}</td>
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