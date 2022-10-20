@foreach ($costCenters as $cCenter)
<tr class="trFontSize">
    <td>{{ $cCenter->cc_code }}</td>
    <td>{{ $cCenter->cc_name }}</td>
    <td>{{ $cCenter->activity }}</td>
    <td>{{ $cCenter->prsn_responsible }}</td>
    <td>{{ isset($cCenter->project)? $cCenter->project->proj_name :"" }}</td>

    <td style="padding-bottom: 11px; padding-top: 0px">
       <div class="d-flex justify-content-end">
        <a href="{{ route('costCenEdit', $cCenter) }}" class="btn" style="height: 30px; width: 30px;" title="Eidt"><img src="{{ asset('assets/backend/app-assets/icon/edit-icon.png')}}" style=" height: 30px; width: 30px;"></a>
        <a href="{{ route('costCenDelete',$cCenter) }}" onclick="return confirm('about to delete master account. Please, Confirm?')"  class="btn" style="height: 30px; width: 30px;" title="Delete"><img src="{{ asset('assets/backend/app-assets/icon/delete-icon.png')}}" style=" height: 30px; width: 30px; margin-left: -12px;"></a>
       </div>

    </td>
</tr>
@endforeach
