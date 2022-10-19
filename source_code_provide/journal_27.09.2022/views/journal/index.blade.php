@extends('layouts.backend.app')
@push('css')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/css/toastr.css" rel="stylesheet" />
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

        .tarek-container {
            width: 85%;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 88% 12%;
            background-color: #ffff;
        }

        .invoice-label {
            font-size: 10px !important
        }

        .card {
    margin-bottom: 0.2rem;
    box-shadow: -8px 12px 18px 0 rgb(25 42 70 / 13%);
    transition: all .3s ease-in-out, background 0s, color 0s, border-color 0s;
}

.form-group {
    margin-bottom: 0px !important;
}
    </style>
@endpush
@php

@endphp
@section('content')
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <section id="widgets-Statistics">
                    <div class="row">
                        <div class="col-md-6">
                            <h4>{{ date('d M Y') }}  Journal</h4>
                        </div>
                        <div class="col-md-6 text-right">
                        <a href="{{ route('journalEntry')}}" class="btn btn-success">Journal Entry</a>
                        <p></p>
                        </div>
                    </div>
                    <div class="row">
                            
                           <div class="col-md-6 text-right">
                            <form action="{{ route('journal.index') }}" method="GET">
                               <div class="row form-group">
                                <input type="text" class="form-control col-9" name="text"  placeholder="Search by Journal No" id="date" required>
                                <button class="bx bx-search col-3 btn-warning btn-block" type="submit"></button>
                               </div>
                            </form>
                           </div>

                           <div class="col-md-2 text-right">
                            <form action="{{ route('journal.index') }}" method="GET">
                               <div class="row form-group">
                                <input type="text" class="form-control col-9" name="date"  placeholder="Select Date" onfocus="(this.type='date')" id="date" required>
                                <button class="bx bx-search col-3 btn-warning btn-block" type="submit"></button>
                               </div>
                            </form>
                           </div>
                           <div class="col-md-4  col-left-padding">
                            <form action="{{ route('journal.index') }}" method="GET">
                                {{-- @csrf --}}
                                <div class="row form-group">
                                    <div class="col-5 col-right-padding">
                                        <input type="text" class="form-control" name="from"
                                        placeholder="From"  value="{{ isset($searchDatefrom)? $searchDatefrom:"" }}"  onfocus="(this.type='date')"  id="from" required>

                                    </div>
                                    <div class="col-5  col-left-padding col-right-padding">
                                        <input type="text" class="form-control" name="to"
                                        placeholder="To" value="{{ isset($searchDateto)? $searchDateto:"" }}" onfocus="(this.type='date')" id="to" required>
                                    </div>
                                    <button class="bx bx-search col-2 btn-warning btn-block" type="submit"></button>
                                </div>
                            </form>
                            <p></p>
                            <input type="hidden" name="hidden_date_from" value="{{ isset($from)? $from:"" }}" id="hidden_date_from">
                            <input type="hidden" name="hidden_date_to" value="{{ isset($to)? $to:"" }}" id="hidden_date_to">
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            {{-- <form>
                                <input type="text" name="q" class="form-control input-xs pull-right ajax-search"
                                    placeholder="Search By Project No, Project Name, Mobile Number"
                                    data-url="">
                            </form> --}}
                        </div>
                        <div class="col-md-6 text-right">
                            {{-- <a href="{{ route('pdf', $id = 'projDetails') }}" class="btn btn-xs btn-info float-right"
                                target="_blank">Print</a> --}}
                            <button class="btn btn-xs btn-info float-right" onclick="exportTableToCSV('journal.csv')">Export
                                To CSV</button>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-sm table-bordered">
                                <thead class="thead-light">
                                    <tr>
                                        <th>Journal No</th>
                                        <th>Date</th>
                                        <th>Narration</th>
                                        <th>Amount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody class="user-table-body">
                                    @foreach ($journals as $journal)
                                        @php
                                            $rowcount=$journal->count(); 
                                        @endphp
                                        
                                        <tr>
                                            <td>{{$journal->journal_no}} </td>
                                            <td>{{ \Carbon\Carbon::parse($journal->date)->format('d.m.Y')}}</td>
                                            <td>{{ $journal->narration }}</td>
                                            <td>{{ $journal->amount }}</td>
                                            <td> 
                                                <a href="{{ route('voucher-details', $journal->id)}}" class="btn btn-sm btn-info" target="_blank"><i class="bx bx-printer "></i></a>
                                                <a href="{{ route('journal-preview', $journal->id)}}" class="btn btn-sm btn-info" target="_blank"><i class='bx bx-street-view'></i></a> 
                                            </td>
                                            
                                        </tr>
                                        
                                    @endforeach
                                </tbody>


                            </table>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 text-right">
                            {{-- {{ $journals->links() }} --}}
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/js/toastr.js"></script>
    {{-- <script src="{{ asset('assets/backend/app-assets/vendors/js/jquery/jquery.min.js') }}"></script> --}}
    <script>
        function refreshPage() {
            window.location.reload();
        }



        $(document).ready(function() {
            $("#date").focus();

            $(document).on("change", "#date", function(e) {
                $("#txn_type").focus();

            })

            $(document).on("keypress", "#date", function(e) {
                var key = e.which;
                var value = $(this).val();
                if (e.which == 13) {
                    $("#txn_type").focus();
                    e.preventDefault();
                    return false;
                }

            });

            $('#txn_type').change(function() {
                $("#cc_code").focus();

            })





            var value = $('#project').val();
            var _token = $('input[name="_token"]').val();
                    $.ajax({
                        url: "{{ route('findProject') }}",
                        method: "POST",
                        data: {
                            value: value,
                            _token: _token,
                        },
                        success: function(response) {
                            console.log(response);
                            $("#owner").val(response.owner_name);
                            $("#location").val(response.address);
                            $("#address").val(response.address);
                            $("#mobile").val(response.cont_no);

                        }
                    })

            $('#project').change(function() {
                if ($(this).val() != '') {
                    var value = $(this).val();
                    var _token = $('input[name="_token"]').val();
                    $.ajax({
                        url: "{{ route('findProject') }}",
                        method: "POST",
                        data: {
                            value: value,
                            _token: _token,
                        },
                        success: function(response) {
                            console.log(response);
                            $("#owner").val(response.owner_name);
                            $("#location").val(response.address);
                            $("#address").val(response.address);
                            $("#mobile").val(response.cont_no);

                        }
                    })
                }
            });

            $('#pay_mode').change(function() {

                    var value = $(this).val();
                    if (value=="NonCash") {
                        $('.non-cash-account-head').show();
                        // $("#acc_head_2").focus();
                        $('.common-select2').select2();

                    } else {
                        $('.non-cash-account-head').hide();
                        $("#ac_code").focus();
                    }


            });


            $(document).on("change", "#credit_party_info", function(e) {

                    $("#ac_code").focus();

            });

            $(document).on("keyup", "#cc_code", function(e) {
                var value = $(this).val();

                var _token = $('input[name="_token"]').val();
                if ($(this).val() != '') {
                $.ajax({
                    url: "{{ route('findCostCenter') }}",
                    method: "POST",
                    data: {
                        value: value,
                        _token: _token,
                    },
                    success: function(response) {
                        var qty = 1;
                        if(respons != '')
                        {
                            $("div.search-item select").val(response.id);
                        $('.common-select2').select2();
                        $("#pi_code").focus();
                        }
                    }
                })
            }
            });


            $(document).on("keypress", "#cc_code", function(e) {
                var key = e.which;
                var value = $(this).val();
                if (e.which == 13) {
                    $("#cost_center_name").focus();
                    e.preventDefault();
                    return false;
                }

            });


            $('#cost_center_name').change(function() {

                if ($(this).val() != '') {
                    var value = $(this).val();
                    var _token = $('input[name="_token"]').val();
                    $.ajax({
                        url: "{{ route('findCostCenterId') }}",
                        method: "POST",
                        data: {
                            value: value,
                            _token: _token,
                        },
                        success: function(response) {
                            console.log(response);
                            $("#cc_code").val(response.cc_code);
                            $("#pi_code").focus();


                        }
                    })
                }
            });

            $('#party_info').change(function() {
                if ($(this).val() != '') {
                    var value = $(this).val();
                    var _token = $('input[name="_token"]').val();
                    $.ajax({
                        url: "{{ route('partyInfoInvoice2') }}",
                        method: "POST",
                        data: {
                            value: value,
                            _token: _token,
                        },
                        success: function(response) {
                            console.log(response);
                            $("#trn_no").val(response.trn_no);
                            $("#pi_code").val(response.pi_code);
                            $("#invoice_no").focus();

                        }
                    })
                }
            });



            $(document).on("keyup", "#pi_code", function(e) {
                // alert(1);
                var value = $(this).val();
                var _token = $('input[name="_token"]').val();
                if ($(this).val() != '') {
                $.ajax({
                    url: "{{ route('partyInfoInvoice3') }}",
                    method: "POST",
                    data: {
                        value: value,
                        _token: _token,
                    },
                    success: function(response) {
                        var qty = 1;
                        if (response != '') {

                            $("div.search-item-pi select").val(response.id);
                            $('.common-select2').select2();
                            $("#trn_no").val(response.trn_no);

                            $("#invoice_no").focus();
                        }


                    }
                })
            }
            });

            $(document).on("keypress", "#pi_code", function(e) {
                var key = e.which;
                var value = $(this).val();
                if (e.which == 13) {


                    $("#party_info").focus();
                    e.preventDefault();
                    return false;
                }

            });


            $(document).on("keypress", "#invoice_no", function(e) {
                var key = e.which;
                var value = $(this).val();
                if (e.which == 13) {


                    $("#pay_mode").focus();
                    e.preventDefault();
                    return false;
                }

            });

            $(document).on("keyup", "#ac_code", function(e) {
                // alert(1);
                var value = $(this).val();
                var _token = $('input[name="_token"]').val();
                if ($(this).val() != '') {
                $.ajax({
                    url: "{{ route('findAccHead') }}",
                    method: "POST",
                    data: {
                        value: value,
                        _token: _token,
                    },
                    success: function(response) {
                        var qty = 1;
                        if (response != '') {

                        $("div.search-item-head select").val(response.id);
                        $("#amount").focus();
                        $('.common-select2').select2();
                        }


                    }
                })
            }
            });

            $(document).on("keypress", "#ac_code", function(e) {
                var key = e.which;
                var value = $(this).val();
                    if (e.which == 13) {
                    $("#acc_head").focus();
                    e.preventDefault();
                    return false;
                }


            });


            $('#acc_head').change(function() {
                if ($(this).val() != '') {
                    var value = $(this).val();
                    var _token = $('input[name="_token"]').val();
                    $.ajax({
                        url: "{{ route('findAccHeadId') }}",
                        method: "POST",
                        data: {
                            value: value,
                            _token: _token,
                        },
                        success: function(response) {
                            console.log(response);
                            $("#ac_code").val(response.fld_ac_code);
                            $("#amount").focus();
                        }
                    })
                }
            });

            $('#tax_rate').change(function() {

                    var value = $(this).val();
                    var amount = $('#amount').val();
                    var _token = $('input[name="_token"]').val();
                    $.ajax({
                        url: "{{ route('findTaxRate') }}",
                        method: "POST",
                        data: {
                            value: value,
                            amount: amount,
                            _token: _token,
                        },
                        success: function(response) {
                            console.log(response);
                            $("#vat_amount").val(response.vat_amount);
                            $("#total_amount").val(response.total_amount);
                            $("#narration").focus();
                        }
                    })

            });

            $(document).on("keyup", "#amount", function(e) {
                var amount = $(this).val();
                var tax_rate = $('#tax_rate').val();
                var _token = $('input[name="_token"]').val();
                $.ajax({
                    url: "{{ route('findamount') }}",
                    method: "POST",
                    data: {
                        amount: amount,
                        tax_rate:tax_rate,
                        _token: _token,
                    },
                    success: function(response) {
                        console.log(response);
                            $("#vat_amount").val(response.vat_amount);
                            $("#total_amount").val(response.total_amount);

                    }
                })
            });

            $(document).on("keypress", "#amount", function(e) {
                var key = e.which;
                var value = $(this).val();
                    if (e.which == 13) {
                    $("#tax_rate").focus();
                    e.preventDefault();
                    return false;
                }


            });


        });
    </script>

@endpush
