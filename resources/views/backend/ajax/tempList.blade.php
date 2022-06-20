@foreach ($temp_items as $item)
<tr>
    <td>{{$item->itemName->item_name}}</td>
    <td>{{$item->brandName->name}}</td>
    <td>{{$item->purchase_rate}}</td>
    <td>{{$item->quantity}}</td>
    <td>{{$item->total_amount}}</td>
    <td>
        <a href="{{ route('temp-item-list-delete', $item->id)}}" class="btn btn-danger sm-btn"> <i class="bx bx-trash"></i> </a>
    </td>
</tr>
@endforeach
<tr class="border-top" style="line-height: 0;">
    <td colspan="4"  class="text-right">Net Amount: </td>
    <td colspan="2">
        @isset($temp_items)
        {{ $temp_items->sum('total_amount') - $temp_items->sum('vat_amount')}}
        @endisset
    </td>
</tr>
<tr style="line-height: 0;">
    <td colspan="4" class="text-right">Vat:</td>
    <td colspan="2">
        @isset($temp_items)
            {{$temp_items->sum('vat_amount')}}
        @endisset
    </td>
</tr>
<tr style="line-height: 0;">
    <td colspan="4" class="text-right">Total Gross:</td>
    <td colspan="2">
        @isset($temp_items)
        {{$temp_items->sum('total_amount')}}
        @endisset
    </td>
</tr>