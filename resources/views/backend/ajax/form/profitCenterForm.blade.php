
@isset($profitCenter)
<form action="{{ route('profitCentersUpdate', $profitCenter) }}" method="POST">
@else
    <form action="{{ route('profitCenterPost') }}" method="POST">
    @endisset
    @csrf
    <div class="cardStyleChange">
        <div class="row">
            <div class="col-md-2">
                <label>Code</label>
                <input type="text" id="" class="form-control inputFieldHeight" name="" value="{{ isset($pc) ? $pc : '' }}" placeholder="Profit Center Code" disabled readonly>
            </div>

            <div class="col-md-4">
                <label>Profit Center Name</label>
                <input type="text" id="pc_name" class="form-control inputFieldHeight" name="pc_name" value="{{ isset($profitCenter) ? $profitCenter->pc_name : '' }}" placeholder="Profit Center Name">
                    @error('pc_name')
                <div class="btn btn-sm btn-danger">{{ $message }}
                </div>
                     @enderror
            </div>

            <div class="col-md-2">
                <label>Activities</label>
                <input type="text" id="activity" class="form-control inputFieldHeight" name="activity" value="{{ isset($profitCenter) ? $profitCenter->activity : '' }}" placeholder="Activity">
                    @error('activity')
                <div class="btn btn-sm btn-danger">{{ $message }}</div>
                    @enderror
            </div>

            <div class="col-md-4">
                <label>Person responsible</label>
                <input type="text" id="prsn_responsible" class="form-control inputFieldHeight" name="prsn_responsible" value="{{ isset($profitCenter) ? $profitCenter->prsn_responsible : '' }}" placeholder="Person responsible">
                    @error('prsn_responsible')
                <div class="btn btn-sm btn-danger">{{ $message }}</div>
                    @enderror
            </div>
            
                <div class="col-12 d-flex justify-content-end mt-1">
                    <button class="btn btn-info profit-center-form-btn mr-1 formButton" data_target="{{ route('profitCenterForm') }}" id="profitCenterButton"><img src="{{ asset('assets/backend/app-assets/icon/add-icon.png')}}" alt="" srcset="" class="image-fluid" width="25">New</button>
                    <button type="submit" class="btn mr-1 btn-primary formButton" title="Form Save">
                        <div class="d-flex">
                            <div class="formSaveIcon">
                                <img  src="{{asset('assets/backend/app-assets/icon/save-icon.png')}}" alt="" srcset="" class="img-fluid" width="25">
                            </div>
                            <div><span> Save</span></div>
                        </div>
                    </button>
                    <button type="reset" class="btn btn-light-secondary formButton" title="Form Reset">
                        <div class="d-flex">
                            <div class="formRefreshIcon">
                                <img  src="{{asset('assets/backend/app-assets/icon/refresh-icon.png')}}" alt="" srcset="" class="img-fluid" width="25">
                            </div>
                            <div><span> Reset</span></div>
                        </div>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
