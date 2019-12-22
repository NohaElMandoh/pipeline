<?php

use App\User;
use App\Models\Project;
use App\Models\Department;
use App\Models\EndUserAccountProject;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Models\Permission;



if(!function_exists('userPath')){
    function userPath($img=null){
        $path = Config('constants.USER_PATH');
        if(!empty($img)){
            $path = $path.$img;
        }
        return url($path);
    }
}


if(!function_exists('file_extension')){
    function file_extension($ext){
        $video       = ['3g2','3GPP2','3gp','3GPP','avi','flv','h264','m4v','mkv','mov','mp4','mpg','mpeg','rm','swf','vob','wmv'];
        $word         = ['doc','docx','odt','pdf','rtf','tex','txt','wks','wps','wpd',];
        $spreadsheet  = ['ods','xlr','xls','xlsx'];
        $presentation = ['key','odp','pps','ppt','pptx'];
        $image = ['ai','bmp','gif','ico','jpeg','png','jpg','ps','psd','svg','tif','tiff'];
        if(in_array($ext, $video)){
            $type = 'video';
        }elseif(in_array($ext, $image)){
            $type = 'image';
        }elseif(in_array($ext, $word)){
            $type = 'file';
        }else{
            $type = 'file';
        }
        return $type;
    }
}

if (!function_exists('get_module_names')) {
    function get_module_names()
    {
        $controllers = $module_names = [];
        foreach (Route::getRoutes()->getRoutes() as $route) {
            $action = $route->getAction();

            if (array_key_exists('controller', $action)) {
                $controllerAction = class_basename($action['controller']);
                list($controller, $method) = explode('@', $controllerAction);

                if (strpos($action['controller'], 'Controllers')) {
                    if (!in_array($controller, $controllers))
                        $controllers[] = $controller;
                }
            }
        }
        foreach ($controllers as $controller) {
            $module_name = config('constants.module_names.' . $controller);
            if (!empty($module_name))
                $module_names[] = strtolower($module_name);
        }
        return ($module_names);
    }
}

if (!function_exists('get_pages_name')) {
    function get_pages_name()
    {
        $modules = [];
        $pages = get_module_names();
        foreach ($pages as $key => $value) {
            if (in_array($value, ['stage', 'customer','category','service','opportunity'])) {
                $modules[$value] = ['view' => 'view', 'add' => 'add', 'edit' => 'edit', 'delete' => 'delete'];
            } elseif (in_array($value, ['dashboard'])) {
                $modules[$value] = ['view' => 'view'];
            } 
            elseif ($value == 'employee') {
                $modules[$value] = ['view' => 'view', 'add' => 'add', 'edit' => 'edit', 'delete' => 'delete', 'addPermission' => 'permissions'];
            }
        }
        return ($modules);
    }
}

if (!function_exists('has_access')) {
    function has_access($action)
    {
        $logged_user = auth()->user();

        $all_permissions   = Permission::getPermissions();
        $permissions_names = [];
        foreach ($all_permissions as $permission) {
            $permissions_names[] = $permission->name;
        }
        if (!in_array($action, $permissions_names)) return false;

        $permissions = $logged_user->getPermissionNames();
        //        return $logged_user;
        $logged_user->permission_names = $permissions->toArray();
        //        dd($logged_user->permission_names);
        if ($logged_user->hasPermissionTo($action))
            return true;
        else
            return false;
    }
}


