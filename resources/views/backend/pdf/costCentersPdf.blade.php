
@extends('layouts.pdf.app')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
         <section id="widgets-Statistics">
             <div class="row">
                 <div class="col-12 mt-1 mb-2">
                     <h4>Cost Center</h4>
                     <hr>
                 </div>
             </div>

                 <div class="row">
                        <table id="customers">
                            <tr>
                                <th>Profit Center Code</th>
                                <th>Profit Center Name</th>
                                <th>Activity</th>
                                <th>Person Resposible</th>
                            </tr>

                            @foreach ($costCenters as $cCenter)
                            <tr>
                                <td>{{ $cCenter->cc_code }}</td>
                                <td>{{ $cCenter->cc_name }}</td>
                                <td>{{ $cCenter->activity }}</td>
                                <td>{{ $cCenter->prsn_responsible }}</td>

                            </tr>

                            @endforeach


                        </table>
                 </div>
         </section>
        </div>
    </div>
</div>

@endsection
