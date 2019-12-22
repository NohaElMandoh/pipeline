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
                        <form id="admin-permissions-form" class="form-horizontal validate-form" method="POST" action='{{url("admin/employee/{$id}/permission")}}' enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="table-responsive">
                                <table id="opening-hours-table" class="table">
                                    <thead>
                                    <tr>
                                        <th class="">
                                            <input type="checkbox" id="selectAll">Module</th>
                                        <th colspan="" class="table-text-center">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($pages as $key=>$page)
                                        <tr>
                                            <td class="text-left">
                                            {{ucfirst($key)}}
                                            </td>
                                            <td class="text-left">
                                            @foreach($page as $index=>$p)
                                            <input class="lists" type="checkbox" value="{{$index.'-'.$key}}" name="permissions[]" @if(in_array($index.'-'.$key,$user->permission_names)) checked @endif> {{$p}}
                                            @endforeach
                                            </td>
                                        </tr>
                                   @endforeach
                                    <tr>
                                        <td class="table-text-center" colspan="6"> 
                                            <a href="{{route('users.index')}}" class="btn btn-info">Back</a>
                                            <button type="submit" class="btn btn-primary  btn-c">Save</button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Row ends -->
    </div>
    <!-- END: .main-content -->
@endsection

@section('scripts')
    <script>
        $(function(){
            $('#selectAll').click(function() {
                 if($(this).prop("checked") == true){
                     $('input:checkbox').not('#selectAll').each(function (i) {
                         $(this).prop('checked', true);
                     });
                 }else {
                     $('input:checkbox').not('#selectAll').each(function (i) {
                         $(this).prop('checked', false);
                     });
                 }
            });

            if($('.lists').length == $('.lists:checked').length){
                $('input:checkbox').each(function (i) {
                    $(this).prop('checked', true);
                });
            }
        })
    </script>
@endsection