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
			@if(has_access('add-employee'))
			<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
				<div class="right-actions">
					<a href="javascript:void(0);" class="btn btn-primary float-right" data-placement="left" title="Add User" data-target="#addModal" data-toggle="modal" id="add">
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

				<div class="card-body" id="table-body">
					@include('admin.users.table')
				</div>
			</div>
		</div>
	</div>
	<!-- Row ends -->
</div>
<!-- END: .main-content -->
<!--Edit Employee-->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Edit Employee</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="edit_form" enctype="multipart/form-data" >
				<div class="modal-body">

				<input type="hidden" name="id"  id="edit_id">
				
					<div class="card">
					<div class="card-body">

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="edit_name" class="col-form-label">Name:</label>
										<input type="text" class="form-control validate[required]" name="edit_name" id="edit_name">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="edit_email" class="col-form-label">Email:</label>
										<input type="email" class="form-control validate[required] " name="edit_email" id="edit_email">

									
									</div>
								</div>


							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="edit_job_title" class="col-form-label">Job Title:</label>
										<input type="text" class="form-control" name="edit_job_title" id="edit_job_title">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="edit_type" class="col-form-label">Employee Type:</label>
										<select class="form-control" id="edit_type" name="edit_type">
											<option selected disabled>Select Employee Type</option>
											<option value="1">Sales Manager</option>
											<option value="2">Sales</option>
										</select>
									</div>
								</div>

							</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_password" class="col-form-label">Password:</label>
											<input type="password" class="form-control " name="edit_password" id="edit_password">
											
										</div>

									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_password_confirmation" class="col-form-label">Password Confirmation:</label>
											<input type="password" class="form-control " name="edit_password_confirmation" id="edit_password_confirmation">
											
										</div>

									</div>
								</div>


								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_filename">Profile Photo</label>
											<label class="custom-file" style="width: 100% !important;">
												<input type="file" id="edit_filename" class="custom-file-input" name="edit_filename" onchange="changePreview(event, 'add', 'editUser');">
												<span class="custom-file-control"></span>
											</label>
										</div>
										<div id="editUser"></div>
										<div class="clearfix"></div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_phone" class="col-form-label">Phone:</label>
											<input type="text" class="form-control"name="edit_phone" id="edit_phone">
										</div>
									</div>


								</div>

							
						</div>
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
<!--Edit Employee-->
<!--Add Employee-->
<div class="modal fade" id="addModal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Add Employee</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="add_form" enctype="multipart/form-data">
				<div class="modal-body">

					<div class="error hidden">
						<ul></ul>
					</div>
					<div class="card">

						<div class="card-body">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="name" class="col-form-label">Name:</label>
										<input type="text" class="form-control validate[required]" id="name">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="email" class="col-form-label">Email:</label>
										<input type="email" class="form-control validate[required] @error('email') is-invalid @enderror" name="email" id="email">

										@error('email')
										<span style="display: block" class="invalid-feedback" role="alert">
											<strong>{{ $message }}</strong>
										</span>
										@enderror
									</div>
								</div>


							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="job_title" class="col-form-label">Job Title:</label>
										<input type="text" class="form-control" id="job_title">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="type" class="col-form-label">Employee Type:</label>
										<select class="form-control" id="type" name="type">
											<option selected disabled>Select Employee Type</option>
											<option value="1">Sales Manager</option>
											<option value="2">Sales</option>
										</select>
									</div>
								</div>

							</div>

							<div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="password" class="col-form-label">Password:</label>
											<input type="password" class="form-control @error('password') is-invalid @enderror" name="password" id="password">
											@error('password')
											<span style="display: block" class="invalid-feedback" role="alert">
												<strong>{{ $message }}</strong>
											</span>
											@enderror
										</div>

									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="password_confirmation" class="col-form-label">Password Confirmation:</label>
											<input type="password" class="form-control @error('password_confirmation') is-invalid @enderror" name="password_confirmation" id="password_confirmation">
											@error('password_confirmation')
											<span style="display: block" class="invalid-feedback" role="alert">
												<strong>{{ $message }}</strong>
											</span>
											@enderror
										</div>

									</div>
								</div>


								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="filename">Profile Photo</label>
											<label class="custom-file" style="width: 100% !important;">
												<input type="file" id="filename" class="custom-file-input" name="filename" onchange="changePreview(event, 'add', 'addUser');">
												<span class="custom-file-control"></span>
											</label>
										</div>
										<div id="addUser"></div>
										<div class="clearfix"></div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="phone" class="col-form-label">Phone:</label>
											<input type="text" class="form-control" id="phone">
										</div>
									</div>


								</div>

							</div>
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
<!--Add Employee-->


@endsection
@section('scripts')
<script src="{{asset('admin/custom/js/user.js')}}"></script>
@endsection