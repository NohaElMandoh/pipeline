<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', 'AuthAdmin\LoginController@showLoginForm');


Route::group(['prefix' => 'admin'], function () {

    Route::group(['middleware' => 'auth:web'], function () {
        
        Route::get('/dashboard', 'DashboardController@index')->name('admin.dashboard');
        // Route::get('/', function () {
        //     return redirect()->to('admin/dashboard');
        // })->name('admin.dashboard');
        // Route::get('/dashboard', 'DashboardController@index');


        Route::resource('customers', 'CustomerController')->except(['store','update']);
        Route::post('customer', 'CustomerController@store')->name('customer.store');
        Route::post('customer/{id}', 'CustomerController@update')->name('customer.update');


        Route::resource('stages', 'StageController')->except(['store','update']);
        Route::post('stage', 'StageController@store')->name('stage.store');
        Route::post('stage/{id}', 'StageController@update')->name('stage.update');


        Route::resource('categories', 'CategoryController')->except(['store','update']);
        Route::post('category', 'CategoryController@store')->name('category.store');
        Route::post('category/{id}', 'CategoryController@update')->name('category.update');



        Route::resource('services', 'ServiceController')->except(['store','update']);
        Route::post('service', 'ServiceController@store')->name('service.store');
        Route::post('service/{id}', 'ServiceController@update')->name('service.update');

        Route::resource('users', 'EmployeeController')->except('store');
        Route::post('user', 'EmployeeController@store')->name('admin.employee'); // add employee
        Route::post('user/{id}', 'EmployeeController@update')->name('admin.employee.update'); // add employee


        Route::get('employee/{id}/permission', 'RoleController@getPermissions');
        Route::post('employee/{id}/permission', 'RoleController@setPermissions');



        Route::resource('opportunities', 'OpportunityController')->except('store','update','updateStage');
        Route::get('opportunities/getAjaxRequest/{id}', 'OpportunityController@getAjaxRequest');
        Route::post('opportunity/updateStage', 'OpportunityController@updateStage');
        Route::post('opportunity/{id}', 'OpportunityController@update')->name('admin.opportunity.update'); // add employee

        
        Route::post('opportunities', 'OpportunityController@store');


        
        Route::resource('role', 'RoleController');
        Route::resource('permission', 'PermissionController');
        
    });

    Route::get('register', 'AuthAdmin\LoginController@showRegisterForm');
    Route::post('register', 'AuthAdmin\LoginController@register')->name('admin.register'); //to add sales Manager
    Route::get('login', 'AuthAdmin\LoginController@showLoginForm');
    Route::post('login', 'AuthAdmin\LoginController@login')->name('admin.login');
    Route::post('logout', 'Auth\LoginController@logout')->name('admin.logout');
});
