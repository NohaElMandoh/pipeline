@extends('admin.layouts.master')
@section('title', $title)
@section('style')
    <style>
        ul.stats li span.icon {
            background: transparent !important;
            font-weight: bold ;
            width: 120px !important;
            text-align: left !important;
        }
    </style>

    @endsection
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
                        <h5>{{$user->name}}</h5>
                        <!-- <h6 class="sub-heading">Welcome to Unify Admin Template</h6> -->
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- END: .main-heading -->
    <!-- BEGIN .main-content -->
    <div class="main-content">
        <div class="row gutters">
            <div class="col-xl-9 col-lg-6 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-header">Basic Information</div>
                    <div class="card-body">
                        <ul class="stats">
                            <li>
                                <span class="icon">
                                    Email
                                </span>
                                {{$user->email}}
                            </li>
                            <li>
                                <span class="icon">
                                    Phone &nbsp;&nbsp;
                                </span>
                                {{$user->phone}}
                            </li>
                            <li>
                                <span class="icon">
                                    Department
                                </span>
                                {{$user->department->name}}
                            </li>
                            <li>
                                <span class="icon">
                                    Home Number
                                </span>
                                {{$user->userInfo->home_number}}
                            </li>
                            <li>
                                <span class="icon">
                                    Personal Number
                                </span>
                                {{$user->department->personal_number}}
                            </li>
                            <li>
                                <span class="icon">
                                    City
                                </span>
                                {{$user->userInfo->city}}
                            </li>
                            <li>
                                <span class="icon">
                                    Street
                                </span>
                                {{$user->department->street}}
                            </li>


                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <a class="block-300 center-text">
                    <div class="user-profile">
                        <img src="{{userPath($user->profile_pic)}}" class="profile-thumb" alt="User Thumb">
                        <h5 class="profile-name">{{$user->name}}</h5>
                        <h6 class="profile-designation">{{$user->job_title}}</h6>
                        <div class="ml-5 mr-5 chartist custom-two">
                            <div class="team-act"></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row gutters">
            <div class="col-xl-9 col-lg-6 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-header">Relative Information</div>
                    <div class="card-body">
                        <ul class="stats">

                            <li>
                                <span class="icon">
                                   Relative Name
                                </span>
                                {{$user->userInfo->relative_name}}
                            </li>
                            <li>
                                <span class="icon">
                                    Relative Relation
                                </span>
                                {{$user->userInfo->relative_relation}}
                            </li>
                            <li>
                                <span class="icon">
                                    Home Number
                                </span>
                                {{$user->userInfo->relative_home_number}}
                            </li>
                            <li>
                                <span class="icon">
                                    Mobile Number
                                </span>
                                {{$user->department->relative_mobile_number}}
                            </li>
                            <li>
                                <span class="icon">
                                    City
                                </span>
                                {{$user->userInfo->relative_city}}
                            </li>
                            <li>
                                <span class="icon">
                                    Street
                                </span>
                                {{$user->department->relative_street}}
                            </li>


                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row gutters">
            <div class="col-xl-9 col-lg-6 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-header">Attachement</div>
                    <div class="card-body">
                        <ul class="stats">
                            @if(count($user->attachments))
                            @foreach($user->attachments as $attach)
                            <li style="width: 150px;display: inline-block;">
                                <a target="_blank" href='{{url("public/admin/uploads/users/attachements/$attach->file_name")}}'>
                                    <img class="card-img-top" src="{{asset('public/admin/uploads/announcement/pdf-icon.jpg')}}" alt="Card image cap">
                                </a>
                            </li>
                            @endforeach
                            @else
                               <li>No Data Found</li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: .main-content -->
@endsection
@section('scripts')
    <script type="text/javascript" src="{{asset('public/admin/custom/js/user.js')}}"></script>
@endsection