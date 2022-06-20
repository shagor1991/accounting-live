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
                      <div class="col-12">
                          <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Brand Information</h4>
                            </div>
                              <div class="card-body">
                                <form action="{{ route('brand.store') }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row match-height">
                                        <div class="col-md-6">
                                            <label for="">Brand ID</label>
                                            @php
                                            $brand_id = '';
                                            $lest_bnd_id = App\Brand::latest('id')->first();
                                                if($lest_bnd_id){
                                                    if($lest_bnd_id->id <= 9){
                                                        $brand_id = 'BND-000'.($lest_bnd_id->id + 1);
                                                    }elseif ($lest_bnd_id->id <= 99) {
                                                        $brand_id = 'BND-00'.($lest_bnd_id->id + 1);
                                                    }elseif ($lest_bnd_id->id <= 100) {
                                                        $brand_id = 'BND-0'.($lest_bnd_id->id + 1);
                                                    }elseif ($lest_bnd_id->id <= 1000) {
                                                        $brand_id = 'BND-'.($lest_bnd_id->id + 1);
                                                    }
                                                }else {
                                                    $brand_id = 'BND-0001';
                                                }
                                            @endphp
                                            <input type="text" name="brand_id" class="form-control" readonly value="{{$brand_id}}">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="">Brand Name</label>
                                            <input type="text" name="name" class="form-control">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="">Origin</label>
                                            <select name="origin" id="selectElement" class="form-control common-select2">
                                                <option value=""></option>
                                                @foreach ($countries as $country)
                                                <option value="{{$country->name}}">{{$country->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-12 d-flex justify-content-end mt-1">
                                            <button type="submit" class="btn btn-primary mr-1">Submit</button>
                                            <button type="reset" class="btn mr-1" id="reset">Reset</button>
                                        </div>
                                    </div>
                                </form>
                              </div>
                          </div>
                      </div>
                  </div>

                <div class="table-responsive">
                    <table class="table">
                        <thead class="thead-light">
                        <tr>
                            <th>Brand ID</th>
                            <th>Brand Name</th>
                            <th>Origin</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody class="user-table-body">
                            @foreach ($brands as $brand)
                            <tr>
                                <td>{{ $brand->brand_id }}</td>
                                <td>{{ $brand->name }}</td>
                                <td>{{ $brand->origin }}</td>

                                <td style="white-space: nowrap">
                                    <a href="{{route('brand.edit', $brand->id)}}" class="btn btn-sm btn-warning"><i class="bx bx-edit"></i></a>                                    
                                    <a href="">
                                        <form action="{{ route('brand.destroy', $brand->id) }}" method="POST">
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
                <div class="row">
                    <div class="col-12 text-right">
                        {{$brands->links()}}
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
<script src="{{ asset('assets/backend')}}/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
<script src="{{ asset('assets/backend')}}/app-assets/js/scripts/forms/select/form-select2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/js/toastr.js"></script>

<script>
    $(document).ready(function() {
        // $('.common-select2').select2();
        // document.getElementById('reset').onclick = function(){
        //     var select = document.getElementById('selectElement');
        //     var value = select.options[select.selectedIndex].value;
        //     console.log(value);
        //     document.getElementById("selectElement").innerHTML = "";
        // }
    });
</script>
@endpush
