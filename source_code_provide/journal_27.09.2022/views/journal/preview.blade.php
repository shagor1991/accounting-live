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
    </style>
@endpush
@section('content')
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <section id="widgets-Statistics">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4>Journal View</h4>
                                </div>
                                
                                <div class="col-md-6 text-right">
                                    <a href="{{ route('voucher-details', $journal->id)}}" class="btn btn-sm btn-info" target="_blank"><i class="bx bx-printer "></i> Print</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-sm table-bordered">
                                            <thead class="thead-light">
                                                <tr>
                                                    <th>Date</th>
                                                    <th>Description</th>
                                                    <th>Debit</th>
                                                    <th>Credit</th>
                                                    {{-- <th>Action</th> --}}
                                                </tr>
                                            </thead>
            
                                            <tbody class="user-table-body">
                                                    @php
                                                        $rowcount=$journal->records->count(); 
                                                    @endphp
                                                    @foreach ($journal->records as $record)
                                                    <tr>
                                                        @if ($loop->index==0)
                                                            <td rowspan="{{$rowcount+1}}">{{ \Carbon\Carbon::parse($record->created_at)->format('d.m.Y')}}</td>
                                                        @endif
                                                        
                                                        <td style="border-bottom: none;">{{ $record->account_head }}</td>
                                                        <td style="border-bottom: none;">{{ $retVal = ($record->transaction_type=='DR') ? $record->amount : ''  }}</td>
                                                        <td style="border-bottom: none;">{{ $retVal = ($record->transaction_type=='CR') ? $record->amount : ''  }}</td>
                                                        
                                                    </tr>
                                                    @endforeach
                                                    <tr>
                                                        <td>( {{$journal->narration}} ) </td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                            </tbody>
            
            
                                        </table>
            
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-5">
                                                    <strong>Journal No </strong>
                                                </div>
                                                <div class="col-7">
                                                  <strong>:</strong>  {{ $journal->journal_no}}
                                                </div>

                                                <div class="col-5">
                                                    <strong>Journal Date</strong> 
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->date}}
                                                </div>

                                                <div class="col-5">
                                                    <strong>Project</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->project->proj_name}}
                                                </div>

                                                <div class="col-5">
                                                   <strong>Cost Center</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->cost_center->cc_name}}
                                                </div>

                                                <div class="col-5">
                                                   <strong>Party</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->party->pi_name}}
                                                </div>

                                                <div class="col-5">
                                                    <strong>Invoice No</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->invoice_no}}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-5">
                                                    <strong>Account Head </strong>
                                                </div>
                                                <div class="col-7">
                                                  <strong>:</strong>  {{ $journal->ac_head->fld_ac_head}}
                                                </div>

                                                <div class="col-5">
                                                    <strong>Payment Mode</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->pay_mode}}
                                                </div>

                                                <div class="col-5">
                                                    <strong>Amount</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->total_amount}}
                                                </div>

                                                <div class="col-5">
                                                   <strong>Vate Rate</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->tax_rate}}
                                                </div>

                                                <div class="col-5">
                                                   <strong>Total Amount</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->amount}}
                                                </div>

                                                <div class="col-5">
                                                    <strong>Narration</strong>
                                                </div>
                                                <div class="col-7">
                                                   <strong>:</strong> {{ $journal->narration}}
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                    </div>

                </section>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/js/toastr.js"></script>
    <script>
        function refreshPage() {
            window.location.reload();
        }

    </script>
@endpush
