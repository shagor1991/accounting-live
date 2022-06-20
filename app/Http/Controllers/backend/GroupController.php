<?php

namespace App\Http\Controllers\backend;

use App\Group;
use App\Http\Controllers\Controller;
use App\ItemList;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $groups = Group::paginate(15);
        return view('backend.group.index', compact('groups'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'item_type' => 'required',
            'item_type_no' => 'required',
        ]);
        Group::create([
            'item_type' => $request->item_type,
            'item_type_no' => $request->item_type_no,
        ]);
        $notification= array(
            'message'       => 'Group Added successfully!',
            'alert-type'    => 'success'
        );
        return redirect('group')->with($notification);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $group_info  = Group::find($id);
        $groups = Group::paginate(15);
        return view('backend.group.edit', compact('groups', 'group_info'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'item_type' => 'required',
            'item_type_no' => 'required',
        ]);
        Group::find($id)->update([
            'item_type' => $request->item_type,
            'item_type_no' => $request->item_type_no,
        ]);
        $notification= array(
            'message'       => 'Group Updated successfully!',
            'alert-type'    => 'success'
        );
        return redirect('group')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $search = ItemList::where('groups_item_type_no', $id)->count();
        if ($search > 0) {
            return back()->with('error', "It has Related with Item Table");
        }
        $group = Group::find($id);
        $group->delete();
        $notification = array(
            'message'       => 'Group Deleted successfully!',
            'alert-type'    => 'success'
        );
        return redirect('group')->with($notification);
    }

    public function search_group(Request $request){
        $groups = Group::where('item_type_no', 'like', "%{$request->p}%")->orWhere('item_type', 'like', "%{$request->p}%")->get();
        return Response()->json($groups);
    }
}
