
@extends('layouts.pdf.app')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
         <section id="widgets-Statistics">
             <div class="row">
                 <div class="col-12 mt-1 mb-2">
                     <h4>Project Details</h4>
                     <hr>
                 </div>
             </div>

                 <div class="row">
                        <table id="customers">
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

                            </tr>

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

                            </tr>

                            @endforeach


                        </table>
                 </div>
         </section>
        </div>
    </div>
</div>

@endsection
