@foreach ($partyInfos as $pInfo)
<tr>
    <td>{{ $pInfo->cc_code }}</td>
    <td>{{ $pInfo->cc_name }}</td>
    <td>{{ $pInfo->cc_type }}</td>
    <td>{{ $pInfo->trn_no }}</td>
    <td>{{ $pInfo->con_person }}</td>
    <td>{{ $pInfo->con_no }}</td>
    <td>{{ $pInfo->phone_no }}</td>
    <td>{{ $pInfo->address }}</td>
    <td>{{ $pInfo->email }}</td>

    <td style="white-space: nowrap">
        <a href="{{ route('partyInfoEdit', $pInfo) }}"
            class="btn btn-sm btn-warning"><i class="bx bx-edit"></i></a>
        <a href="{{ route('partyInfoDelete', $pInfo) }}"
            onclick="return confirm('about to delete Party Info. Please, Confirm?')"
            class="btn btn-sm btn-danger"><i class="bx bx-trash"
                aria-hidden="true"></i></a>

    </td>
</tr>
@endforeach
