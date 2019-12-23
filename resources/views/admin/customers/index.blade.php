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
            @if(has_access('add-customer'))

            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                <div class="right-actions">
                    <a href="javascript:void(0);" class="btn btn-primary float-right" data-placement="left" title="Add Customer" data-target="#addModal" data-toggle="modal" id="add">
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
                    @include('admin.customers.table')

                </div>
            </div>
        </div>
    </div>
    <!-- Row ends -->
</div>
<!-- END: .main-content -->

<!--Add Customer-->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add customer</h5>
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
                        <input type="text" class="form-control validate[required]" id="name" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label for="title" class="col-form-label">Title:</label>
                        <input type="text" class="form-control validate[required]" id="title" placeholder="Title">
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-form-label">Email:</label>

                        <input type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email" id="email" name="email" >

                    </div>
                    <div class="form-group">
                            <label for="type">Type</label>
                            <select class="form-control validate[required]" id="type" name="type">
                                <option disabled selected>Select Type</option>
                                <option value="2">Company</option>
                                <option value="1">Person</option>
                            </select>
                        </div>
                    <div class="form-group">
                        <label for="mobile" class="col-form-label">Mobile:</label>
                        <input type="tel" class="form-control validate[required]" id="mobile" placeholder="Mobile">
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-form-label">Phone:</label>
                        <input type="text" class="form-control " id="phone" placeholder=Phone">
                    </div>
                    <div class="form-group">
                        <label for="location" class="col-form-label">Location:</label>
                        <input type="text" class="form-control " id="location" placeholder=Location">
                    </div>
                    <div class="form-group">
                        <label for="website" class="col-form-label">Website:</label>
                        <input type="url" class="form-control " id="website" placeholder=Website">
                    </div>
                    <div class="form-group">
                        <label for="facebook" class="col-form-label">Facebook:</label>
                        <input type="url" class="form-control " id="facebook" placeholder=Facebook">
                    </div>
                    <div class="form-group">
                        <label for="instagram" class="col-form-label">Instagram:</label>
                        <input type="url" class="form-control " id="instagram" placeholder=Instagram">
                    </div>
                    <div class="form-group">
                        <label for="linkedin" class="col-form-label">Linkedin:</label>
                        <input type="url" class="form-control " id="linkedin" placeholder=Linkedin">
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
<!--Add Customer-->
<!--Edit Customer-->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Edit Customer</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="edit_form">
				<div class="modal-body">
					<div class="error hidden">
                      <ul></ul>
                    </div>
                    <input type="hidden" name="id"  id="edit_id" >

					<div class="form-group">
						<label for="edit_name" class="col-form-label">Name:</label>
						<input type="text" class="form-control validate[required]" name="edit_name" id="edit_name">
					</div>
                    <div class="form-group">
                        <label for="edit_title" class="col-form-label">Title:</label>
                        <input type="text" class="form-control validate[required]"name="edit_title" id="edit_title" placeholder="Title">
                    </div>
                    <div class="form-group">
                        <label for="edit_email" class="col-form-label">Email:</label>

                        <input type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="edit_email" id="edit_email" name="email" >

                    </div>
                    <div class="form-group">
                            <label for="edit_type">Type</label>
                            <select class="form-control validate[required]" id="edit_type" name="edit_type">
                                <option disabled selected>Select Type</option>
                                <option value="2">Company</option>
                                <option value="1">Person</option>
                            </select>
                        </div>
                    <div class="form-group">
                        <label for="edit_mobile" class="col-form-label">Mobile:</label>
                        <input type="text" class="form-control validate[required]" name="edit_mobile" id="edit_mobile" placeholder="Mobile">
                    </div>
                    <div class="form-group">
                        <label for="edit_phone" class="col-form-label">Phone:</label>
                        <input type="text" class="form-control " name="edit_phone"id="edit_phone" placeholder="Phone">
                    </div>
                    <div class="form-group">
                        <label for="edit_location" class="col-form-label">Location:</label>
                        <input type="text" class="form-control "name="edit_location" id="edit_location" placeholder="Location">
                    </div>
                    <div class="form-group">
                        <label for="edit_website" class="col-form-label">Website:</label>
                        <input type="text" class="form-control" name="edit_website"id="edit_website" placeholder="Website">
                    </div>
                    <div class="form-group">
                        <label for="edit_acebook" class="col-form-label">Facebook:</label>
                        <input type="text" class="form-control " name="edit_acebook"id="edit_acebook" placeholder="Facebook">
                    </div>
                    <div class="form-group">
                        <label for="edit_instagram" class="col-form-label">Instagram:</label>
                        <input type="text" class="form-control " name="edit_instagram" id="edit_instagram" placeholder="Instagram">
                    </div>
                    <div class="form-group">
                        <label for="edit_linkedin" class="col-form-label">Linkedin:</label>
                        <input type="text" class="form-control " name="edit_linkedin" id="edit_linkedin" placeholder="Linkedin">
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
<script type="text/javascript" src="{{asset('admin/custom/js/customer.js')}}"></script>
@endsection