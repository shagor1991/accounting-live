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
                            <h4>Stock Position</h4>
                            <hr>
                    </div>

                    <div class="row">
                        @foreach ($brands as $brand)
                        <div class="col-12" style="background-color: gray; color:black">
                            <strong><tr>Brand:</tr> <tr>{{ $brand->name }}</tr></strong>
                        </div>

                        <table class="table table-sm">
                            <thead class="thead-dark">
                              <tr>
                                <th scope="col">Shipment No</th>
                                <th scope="col">Brand</th>
                                <th scope="col">Style No</th>
                                <th scope="col">Item Name</th>
                                <th scope="col">  Purchase <small>(PCS)</small></th>
                                <th scope="col">Sale <small>(PCS)</small></th>
                                <th scope="col">Pur. Return</th>
                                <th scope="col">Sale Return</th>
                                <th scope="col">Stock <small>(PCS)</small></th>
                                <th scope="col">Stock Amount</th>
                              </tr>
                            </thead>
                            <tbody>
                                @php
                                    $i=0;
                                @endphp
                                @foreach ($brand->items as $item)
                                <tr>
                                    <th scope="row">0</th>
                                    <td>{{ $item->brand->name }}</td>
                                    <td>{{ $item->style_id }}</td>
                                    <td>{{ $item->item_name }}</td>
                                    <td>{{  $item->thisMontItemPurch($item) }}</td>
                                    <td>{{  $item->thisMonthItemSale($item) }}</td>
                                    <td></td>
                                    <td></td>
                                    <td>{{ isset($item->itemOpenningStock)? $item->itemOpenningStock->quantity:"0" }}</td>
                                    <td>{{ isset($item->itemOpenningStock)? number_format($item->itemOpenningStock->quantity,2):"0" }}</td>

                                </tr>

                                @endforeach


                            </tbody>
                        </table>

                        @endforeach
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


@endpush
