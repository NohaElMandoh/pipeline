@extends('admin.layouts.master')
@section('title', $title)
@section('content')
    <!-- BEGIN .main-heading -->
    <header class="main-heading">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8">
                    <div class="page-icon">
                        <i class="icon-layers"></i>
                    </div>
                    <div class="page-title">
                        <h5>{{$title}}</h5>
                        <!-- <h6 class="sub-heading">Welcome to Unify Admin Template</h6> -->
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                    <div class="right-actions">
                        <a href="javascript:void(0);" class="btn btn-primary float-right"data-placement="left" title="Add Job" data-target="#addModal" data-toggle="modal" id="add">
                            <i class="fa fa-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- END: .main-heading -->
    <!-- BEGIN .main-content -->
    <div class="main-content">
        <!-- Row start -->
        <div class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                    <!-- <div class="card-header">Basic Datatable</div> -->
                    <div class="card-body">
                        <table id="basicExample" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @if(count($roles))
                                @foreach($roles as $role)
                                    <tr data-id="{{$role->id}}" id="id{{$role->id}}">
                                        <td>{{$role->name}}</td>
                                        <td>{{ date('d-m-Y h:i A',strtotime($role->created_at)) }}</td>
                                        <td>{{ timeago($role->updated_at, 'en')}}</td>
                                        <td>
                                            <a href='javascript:void(0);' class="btn btn-info btn-sm">
                                                <i class="fa fa-eye"></i> Permissions
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-primary btn-sm edit"  data-id="{{$role->id}}">
                                                <span class="icon-pencil"></span>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-danger btn-sm deletej" onclick="deleteRole({{$role->id}});" data-id="{{$role->id}}">
                                                <i class="fa fa-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="4">No Data Found</td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Row ends -->
    </div>
    <!-- END: .main-content -->

    <!--Add project-->
    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Role</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="add_form">
                    <div class="modal-body">
                        <div class="error hidden">
                            <ul></ul>
                        </div>

                        <div class="form-group">
                            <label for="name" class="col-form-label">Name:</label>
                            <input type="text" class="form-control validate[required]" id="name">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" id="addValidate">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--Add Project-->

    <!--Edit project-->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Role</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="edit_form">
                    <div class="modal-body">
                        <div class="error hidden">
                            <ul></ul>
                        </div>
                        <input type="hidden" id="edit_id">
                        <div class="form-group">
                            <label for="name" class="col-form-label">Name:</label>
                            <input type="text" class="form-control" id="edit_name">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" id="editValidate">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--Edit Project-->

@endsection
@section('scripts')
    <script type="text/javascript" src="{{asset('admin/custom/js/role.js')}}"></script>
    <script type="text/javascript">
        $(function(){
            var table = $('#basicExample').DataTable( {
                //paging: false,
                //ordering: [],
                order: [[ 1, "DESC" ]],
                bDestroy: true
            } );
        });
    </script>

@endsection