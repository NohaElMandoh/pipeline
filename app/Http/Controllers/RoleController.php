<?php

namespace App\Http\Controllers;

use Spatie\Permission\Models\Permission;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

use Spatie\Permission\Traits\HasRoles;

class RoleController extends Controller
{
    private $permission;


    public function getPermissions($id){
       

        $title = 'Employee Permissions';
        $pages = get_pages_name();
        // return($pages);
        $user  = User::find($id);
    //    return($user);
        $permissions = $user->getPermissionNames();
        $user->permission_names = $permissions->toArray();
        return view('admin.roles.permission', compact('title', 'pages', 'user', 'id'));
    }

    public function setPermissions(Request $request, $id){
        $user = User::find($id);
        if(!empty($request->permissions)){
            foreach ($request->permissions as $item){
                $permissions = Permission::findOrCreate( $item);
            }
        }
        $user->syncPermissions($request->permissions);
        return redirect()->back()->with('success', 'Permission Added successfully');
    }
}
