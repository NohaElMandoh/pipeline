<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;


class Manager
{
   

    protected function redirectTo($request)
    {

        if (! $request->expectsJson()) {
            return route('admin.login');
        }
    }

}