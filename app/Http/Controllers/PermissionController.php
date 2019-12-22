<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Repositories\Contracts\PermissionInterface;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    private $permission;
    public function __construct(PermissionInterface $permission){
        $this->permission = $permission;
    }

    public function index()
    {
        $title = 'Permissions';
        $permissions = $this->permission->findAll($applyOrder = true, $orderBy = 'order', $orderDir = 'ASC');
        return view('admin.permissions.index', compact('title','permissions'));
    }


    public function store(Request $request)
    {
        $validateData = [
            'name'=> 'required|unique:permissions,name',
        ];

        $valid = validator($request->all(), $validateData);
        if ($valid->fails()) {
            return response()->json(['success'=>false,'errors'=>$valid->errors()->all()]);
        }

        $msg  = 'Permission Added Successfully';

        $permission = $this->permission->createOrUpdate($request->all());
        return response()->json(['success'=>true, 'message'=>$msg, 'result'=> $permission]);
    }
    public function show($id)
    {
        if(!empty($id)){
            $permission = $this->permission->find($id);
            return response()->json(['success'=>true, 'permission'=>$permission]);
        }else{
            return response()->json(['success'=>false, 'errors'=>[0=>'Not Found Data']]);
        }
    }

    public function update(Request $request, $id)
    {
        $validateData = ['name'=>'required|unique:permissions,name,'.$id];
        $valid = validator($request->all(), $validateData);
        if ($valid->fails()) {
            return response()->json(['success'=>false,'errors'=>$valid->errors()->all()]);
        }

        $msg  = 'Permission Updated Successfully';
        $permission = $this->permission->findOrFail($id);
        $permission->name  = $request->name;
        $permission->save();
        return response()->json(['success'=>true, 'message'=>$msg]);
    }
    public function destroy($id){
        $msg  = 'Permission Deleted Successfully';
        $msg1 = 'Something Goes Wrong';

        if(!empty($id)){
            $permission = $this->permission->findOrFail($id);
            $permission->delete();
            return response()->json(['success'=>true, 'message'=>$msg]);
        }else{
            return response()->json(['success'=>false, 'message'=>$msg1]);
        }
    }
}
