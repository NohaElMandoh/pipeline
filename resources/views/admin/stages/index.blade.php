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
            @if(has_access('add-stage'))
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                <div class="right-actions">
                    <a href="javascript:void(0);" class="btn btn-primary float-right" data-placement="left" title="Add Customer" data-target="#addStage" data-toggle="modal" id="add">
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
                    @include('admin.stages.table')
                </div>
            </div>
        </div>
    </div>
    <!-- Row ends -->
</div>
<!-- END: .main-content -->
<!--Add Stage-->
<div class="modal fade" id="addStage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Stage</h5>
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
                        <input type="text" class="form-control validate[required]" name="name" id="name">
                    </div>
                    <div class="form-group">
                        <label for="notes"><strong>Notes</strong></label>
                        <textarea class="form-control" id="notes" rows="8" name="notes" placeholder="Notes">{{old('notes')}}</textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" id="add_stage">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--Add Stage-->
<!--Edit Stage-->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Edit Stage</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="edit_form">
				<div class="modal-body">
					<div class="error hidden">
                      <ul></ul>
                    </div>
                    <input type="hidden" name="id"  id="edit_id">

					<div class="form-group">
						<label for="name" class="col-form-label">Name:</label>
						<input type="text" class="form-control validate[required]" id="edit_name">
					</div>

					<div class="form-group">
                        <label for="notes" class="col-form-label">Notes:</label>
                        <textarea class="form-control" id="edit_notes" rows="8" name="notes" placeholder="Notes">{{old('notes')}}</textarea>
                        
						
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
<!--Edit Stage-->
@endsection
@section('scripts')
<script src="{{asset('admin/custom/js/stage.js')}}"></script> 
@endsection
