@foreach ($profitDetails as $pCenter)
<tr>
    <tr class="trFontSize">
        <td>{{ $pCenter->pc_code }}</td>
        <td>{{ $pCenter->pc_name }}</td>
        <td>{{ $pCenter->activity }}</td>
        <td>{{ $pCenter->prsn_responsible }}</td>

        <td style="padding-bottom: 11px; padding-top: 0px">
           <div class="d-flex justify-content-end">
            <a href="{{ route('profitCenEdit', $pCenter) }}" class="btn" style="height: 30px; width: 30px;" title="Eidt"><img src="{{ asset('assets/backend/app-assets/icon/edit-icon.png')}}" style=" height: 30px; width: 30px;"></a>
            <a href="{{ route('profitCenDelete', $pCenter) }}" onclick="return confirm('about to delete master account. Please, Confirm?')"  class="btn" style="height: 30px; width: 30px;" title="Delete"><img src="{{ asset('assets/backend/app-assets/icon/delete-icon.png')}}" style=" height: 30px; width: 30px; margin-left: -12px;"></a>
           </div>

        </td>
    </tr>
@endforeach
