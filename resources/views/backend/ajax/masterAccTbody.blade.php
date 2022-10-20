@foreach ($masterDetails as $masterAcc)
<tr class="trFontSize">
    <td>{{ $masterAcc->mst_ac_code }}</td>
    <td>{{ $masterAcc->mst_ac_head }}</td>
    <td>{{ $masterAcc->mst_definition }}</td>
    <td>{{ $masterAcc->mst_ac_type }}</td>
    <td>{{ $masterAcc->vat_type }}</td>

    <td style="padding-bottom: 11px; padding-top: 0px">
       <div class="d-flex justify-content-end">
        <a href="{{ route('masterEdit',$masterAcc) }}" class="btn" style="height: 30px; width: 30px;" title="Eidt"><img src="{{ asset('assets/backend/app-assets/icon/edit-icon.png')}}" style=" height: 30px; width: 30px;"></a>
        <a href="{{ route('masterDelete',$masterAcc) }}" onclick="return confirm('about to delete master account. Please, Confirm?')"  class="btn" style="height: 30px; width: 30px;" title="Delete"><img src="{{ asset('assets/backend/app-assets/icon/delete-icon.png')}}" style=" height: 30px; width: 30px; margin-left: -12px;"></a>
       </div>

    </td>
</tr>
@endforeach
