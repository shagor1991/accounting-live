@extends('layouts.backend.app')
@push('css')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/css/toastr.css" rel="stylesheet" />
@endpush
@section('content')
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <!-- Widgets Statistics start -->
                <section id="widgets-Statistics">
                    <div class="row">
                            <h4>Project Details Form</h4>
                            <hr>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Project Details</h4>
                                </div>
                                <div class="card-body">
                                    <div class="project-form">
                                    @isset($proj)
                                        <form action="{{ route('projectDetailsUpdate', $proj) }}" method="POST">
                                        @else
                                            <form action="{{ route('projectDetailsPost') }}" method="POST">
                                            @endisset
                                            @csrf

                                                <div class="row match-height">



                                                    <div class="col-md-6">

                                                        <div class="form-body">
                                                            <div class="row">

                                                                <div class="col-md-4">
                                                                    <label>Project No</label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <input type="text" id="" class="form-control"
                                                                        name=""
                                                                        value="{{ isset($p_code)? $p_code:"" }}"
                                                                        placeholder="Project No" disabled readonly>
                                                                    @error('proj_no')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>

                                                                <div class="col-md-4">
                                                                    <label>Project Name</label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <input type="text" id="proj_name" class="form-control"
                                                                        name="proj_name"
                                                                        value="{{ isset($proj) ? $proj->proj_name : '' }}"
                                                                        placeholder="Project Name" disabled readonly >
                                                                    @error('proj_name')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Type</label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <select name="proj_type" class="form-control" id=""
                                                                    disabled readonly>
                                                                        <option value="">Select...</option>
                                                                        @foreach ($projectTypes as $item)
                                                                            <option value="{{ $item->title }}"
                                                                                {{ isset($proj->proj_type) ? ($proj->proj_type == $item->title ? 'selected' : '') : '' }}>
                                                                                {{ $item->title }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                    @error('proj_type')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Consulting Agent</label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <input type="text" id="cons_agent"
                                                                        class="form-control"
                                                                        value="{{ isset($proj) ? $proj->cons_agent : '' }}"
                                                                        name="cons_agent" placeholder="Consulting Agent"
                                                                        disabled readonly>
                                                                    @error('cons_agent')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>

                                                                <div class="col-md-4">
                                                                    <label>Site Location</label>
                                                                </div>
                                                                <div class="col-md-8 form-group ">
                                                                    <input type="text" id="address" class="form-control"
                                                                        name="address"
                                                                        value="{{ isset($proj) ? $proj->address : '' }}"
                                                                        placeholder="Site Location" disabled readonly>
                                                                    @error('address')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-body">
                                                            <div class="row">

                                                                <div class="col-md-4">
                                                                    <label>Owner Name</label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <input type="text" id="owner_name"
                                                                        class="form-control" name="owner_name"
                                                                        value="{{ isset($proj) ? $proj->owner_name : '' }}"
                                                                        placeholder="Owner Name" disabled readonly>
                                                                    @error('owner_name')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Mobile Phone Number
                                                                    </label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <input type="number" id="cont_no" class="form-control"
                                                                        name="cont_no"
                                                                        value="{{ isset($proj) ? $proj->cont_no : '' }}"
                                                                        placeholder="Mobile" disabled readonly>

                                                                    @error('cont_no')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Work Order Date</label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <input type="date" id="ord_date" class="form-control"
                                                                        name="ord_date"
                                                                        value="{{ isset($proj) ? $proj->ord_date : '' }}"
                                                                        placeholder="Work Order Date" disabled readonly>
                                                                    @error('ord_date')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Handover Date</label>
                                                                </div>
                                                                <div class="col-md-8 form-group">
                                                                    <input type="date" id="hnd_over_date"
                                                                        class="form-control" name="hnd_over_date"
                                                                        value="{{ isset($proj) ? $proj->hnd_over_date : '' }}"
                                                                        placeholder="Work Order Date" disabled readonly>
                                                                    @error('hnd_over_date')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Profit Center</label>
                                                                </div>
                                                                <div class="col-md-8 form-group ">
                                                                   <select name="profit_pc_code" class="form-control" id="" disabled readonly>
                                                                       <option value="">Select...</option>
                                                                       @foreach ($profit_centers as $item)
                                                                       <option value="{{ $item->pc_code }}">{{ $item->pc_name }} </option>

                                                                       @endforeach
                                                                   </select>
                                                                    @error('address')
                                                                        <div class="btn btn-sm btn-danger">{{ $message }}
                                                                        </div>
                                                                    @enderror
                                                                </div>
                                                                <div class="col-12 d-flex justify-content-end ">
                                                                    <button class="btn btn-info project-form-btn mr-1"
                                                                    data_target="{{ route('projectForm') }}">New</button>
                                                                    <button type="submit"
                                                                        class="btn btn-primary mr-1" disabled>Submit</button>
                                                                    <button type="reset"
                                                                        class="btn btn-light-secondary" disabled>Reset</button>

                                                                </div>
                                                            </div>
                                                        </div>

                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>





                    <div class="row">
                        <div class="col-md-6">
                            <form>
                                <input type="text" name="q" class="form-control input-xs pull-right ajax-search"
                                    placeholder="Search By Project No, Project Name, Mobile Number"
                                    data-url="{{ route('admin.masterAccSearchAjax', $id = 'projectDetails') }}">

                            </form>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="{{ route('pdf', $id = 'projDetails') }}" class="btn btn-xs btn-info float-right"
                                target="_blank">Print</a>
                            <button class="btn btn-xs btn-info float-right"
                                onclick="exportTableToCSV('projectdetails.csv')">Export To CSV</button>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th>Project No</th>
                                        <th>Project Name</th>
                                        <th>Project Type</th>
                                        <th>Consulting Agent</th>
                                        <th>Site Location</th>
                                        <th>Owner Name</th>
                                        <th>Mobile Number</th>
                                        <th>Work Order Date</th>
                                        <th>Handover Date</th>
                                        <th>Profit Center</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody class="user-table-body">
                                    @foreach ($projDetails as $proj)
                                        <tr>
                                            <td>{{ $proj->proj_no }}</td>
                                            <td>{{ $proj->proj_name }}</td>
                                            <td>{{ $proj->proj_type }}</td>
                                            <td>{{ $proj->cons_agent }}</td>
                                            <td>{{ $proj->address }}</td>
                                            <td>{{ $proj->owner_name }}</td>
                                            <td>{{ $proj->cont_no }}</td>
                                            <td>{{ $proj->ord_date }}</td>
                                            <td>{{ $proj->hnd_over_date }}</td>
                                            <td>{{ $proj->profitCenter($proj->pc_code)->pc_name }}</td>
                                            <td style="white-space: nowrap">
                                                <a href="{{ route('projectEdit', $proj) }}"
                                                    class="btn btn-sm btn-warning"><i class="bx bx-edit"></i></a>
                                                <a href="{{ route('projectDelete', $proj) }}"
                                                    onclick="return confirm('about to delete project. Please, Confirm?')"
                                                    class="btn btn-sm btn-danger"><i class="bx bx-trash"
                                                        aria-hidden="true"></i></a>

                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>


                            </table>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 text-right">
                            {{ $projDetails->links() }}
                        </div>
                    </div>
                </section>
                <!-- Widgets Statistics End -->



            </div>
        </div>
    </div>
    <!-- END: Content-->
@endsection

@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/js/toastr.js"></script>
    {{-- <script src="{{ asset('assets/backend/app-assets/vendors/js/jquery/jquery.min.js') }}"></script> --}}
    <script>
        // $(document).ready(function() {
        // Page Script
        // alert("Alhamdulillah");
        // });
    </script>

    <script>
        $(document).ready(function() {

                    var delay = (function() {
                        var timer = 0;
                        return function(callback, ms) {
                            clearTimeout(timer);
                            timer = setTimeout(callback, ms);
                        };
                    })();
                    $(document).on("click", ".project-form-btn", function(e) {
                        e.preventDefault();
                        var that = $(this);
                        var urls = that.attr("data_target");
                        // alert(urls);
                        delay(function() {
                            $.ajax({
                                url: urls,
                                type: 'GET',
                                cache: false,
                                dataType: 'json',
                                success: function(response) {
                                    //   alert('ok');
                                    console.log(response);
                                    $(".project-form").empty().append(response.page);
                                },
                                error: function() {
                                    //   alert('no');
                                }
                            });
                        }, 999);
                    });
                });
    </script>
@endpush
