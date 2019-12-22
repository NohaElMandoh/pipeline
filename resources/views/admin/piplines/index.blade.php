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
            @if(has_access('add-opportunity'))
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                <div class="right-actions">
                    <a href="javascript:void(0);" class="btn btn-primary float-right" data-placement="left" title="Add opportunity" data-target="#addOpportunity" data-toggle="modal" id="add">
                        <i class="fa fa-plus"></i>
                    </a>
                </div>
            </div>
            @endif

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
                <div class="card-body" id="table-body">
                    @include('admin.piplines.table')
                </div>
            </div>
        </div>
    </div>
    <!-- Row ends -->
</div>
<!-- END: .main-content -->
<!--Add Opportunity-->
<div class="modal fade" id="addOpportunity" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Opportunity</h5>
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
                        <label for="title" class="col-form-label">Title:</label>
                        <input type="text" class="form-control validate[required]" name="title" id="title">
                    </div>

                    <div class="form-group">
                        <label for="customer_id"><strong>Customer</strong><span style="color: red;"> * </span></label>

                        <select class="form-control validate[required]" id="customer_id" name="customer_id">
                            <option disabled selected>Select Customer</option>
                            @foreach($customers as $customer)
                            <option value="{{$customer->id}}">{{$customer->name}}</option>
                            @endforeach
                        </select>

                    </div>
                    <div class="form-group">
                        <label><strong>Service</strong></label>

                        <select class="form-control validate[required]" id="services" name="services[]" multiple>
                            <option disabled>Select Services</option>
                            @if(!empty($services))
                            @foreach($services as $service)
                            <option value="{{$service->id}}">{{$service->name}}</option>
                            @endforeach
                            @endif
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="customer_id"><strong>Stage</strong><span style="color: red;"> * </span></label>

                        <select class="form-control validate[required]" id="stage_id" name="stage_id">
                            <option disabled>Select Stage</option>
                            @foreach($stages as $stage)
                            <option value="{{$stage->id}}" selected>{{$stage->name}}</option>
                            @endforeach
                        </select>

                    </div>
                    <div class="form-group">
                        <label for="expected_closed_date"><strong>Expected Closed Date <span style="color: red;"> * </span></strong></label>
                        <input type="date" name="expected_closed_date" class="form-control validate[required]" id="expected_closed_date" formate="yyyy-mm-dd" value="{{old('expected_closed_date')}}">
                    </div>

                    <div class="form-group">
                        <label for="notes"><strong>Notes</strong></label>
                        <textarea class="form-control" id="notes" rows="8" name="notes" placeholder="Notes">{{old('notes')}}</textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--Add Opportunity-->


<!--Edit Opportunity-->

<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Opportunity</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="edit_form">
                <div class="modal-body">
                    <div class="error hidden">
                        <ul></ul>
                    </div>
                    <input type="hidden" name="id" id="edit_id">


                    <div class="form-group">
                        <label for="title" class="col-form-label">Title:</label>
                        <input type="text" class="form-control validate[required]" name="title" id="edit_title">
                    </div>

                    <div class="form-group">
                        <label for="customer_id"><strong>Customer</strong><span style="color: red;"> * </span></label>

                        <select class="form-control validate[required]" id="edit_customer_id" name="customer_id">
                            <option disabled>Select Customer</option>
                            @foreach($customers as $customer)
                            <option value="{{$customer->id}}" selected>{{$customer->name}}</option>
                            @endforeach
                        </select>

                    </div>
                    <div class="form-group">
                        <label><strong>Service</strong></label>

                        <select class="form-control validate[required]" id="edit_services" name="services[]" multiple>
                            <option disabled>Select Services</option>
                            @if(!empty($services))
                            @foreach($services as $service)
                            <option value="{{$service->id}}" selected>{{$service->name}}</option>
                            @endforeach
                            @endif
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="customer_id"><strong>Stage</strong><span style="color: red;"> * </span></label>

                        <select class="form-control validate[required]" id="edit_stage_id" name="stage_id">
                            <option disabled>Select Stage</option>
                            @foreach($stages as $stage)
                            <option value="{{$stage->id}}" selected>{{$stage->name}}</option>
                            @endforeach
                        </select>

                    </div>
                    <div class="form-group">
                        <label for="expected_closed_date"><strong>Expected Closed Date <span style="color: red;"> * </span></strong></label>
                        <input type="date" name="expected_closed_date" class="form-control validate[required]" id="edit_expected_closed_date" formate="yyyy-mm-dd" value="{{old('expected_closed_date')}}">
                    </div>

                    <div class="form-group">
                        <label for="notes"><strong>Notes</strong></label>
                        <textarea class="form-control" id="edit_notes" rows="8" name="notes" placeholder="Notes">{{old('notes')}}</textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>

    </div>
</div>


<!--Edit Opportunity-->
@endsection
@section('scripts')
<script src="{{asset('admin/custom/js/pipeline.js')}}"></script>
@endsection