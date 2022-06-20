@foreach ($groups as $item)
    <tr>
        <td>{{$item->item_type_no}}</td>
        <td>{{$item->item_type}}</td>
        <td>
            <a href="{{route('group.edit', $item->id)}}" class="btn btn-sm btn-warning"><i class="bx bx-edit"></i></a>                                    
            <a href="">
                <form action="{{ route('group.destroy', $item->id) }}" method="POST" class="flot-right">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Confirm?')" ><i class="bx bx-trash"></i></button>
                </form>
            </a>
        </td>
    </tr>
@endforeach