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
					<h5>Edit Profile</h5>

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
				<form action="{{route('user.edit')}}" method="POST" id="edit_profile_form" enctype="multipart/form-data">
					@csrf

					<div class="modal-body">
						<div class="error hidden">
							<ul></ul>
						</div>
						<div class="card">
							<div class="card-header">Basic Information</div>
							<div class="card-body">
								<input type="hidden" id="edit_id" value="{{Auth::user()->id}}">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_name" class="col-form-label">Name:</label>
											<input type="text" class="form-control validate[required]" value=" {{$user->name}}" id="edit_name">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_email" class="col-form-label">Email:</label>
											<input type="text" class="form-control validate[required, custom[email]]" value="{{$user->email}}" id="edit_email">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_job_title" class="col-form-label">Job Title:</label>
											<input type="text" class="form-control" value="{{$user->job_title}}  " id="edit_job_title">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_department">Department</label>
											<select class="form-control validate[required, custom[integer]]" id="edit_department" name="edit_department">
												<option disabled selected>Select Department</option>
												@foreach($departments as $dept)
												<option value="{{$dept->id}}" @if($user->department_id == $dept->id) selected @endif >{{$dept->name}}</option>
												@endforeach
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_type" class="col-form-label">Employee Type:</label>
											<select class="form-control" id="edit_type" name="edit_type">
												<option selected disabled>Select Employee Type</option>
												<option value="1" @if($user->type == '1') selected @endif >Management</option>
												<option value="2" @if($user->type == '2') selected @endif>Teamleader</option>
												<option value="3" @if($user->type == '3') selected @endif>Developer</option>
												<option value="4" @if($user->type == '4') selected @endif>Quality Control</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_order" class="col-form-label">Order:</label>
											<input type="number" class="form-control validate[required]" id="edit_order" min="1" value="1">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_evaluation_question_group">Evaluation Question Group</label>
											<select class="form-control validate[required, custom[integer]]" id="edit_evaluation_question_group" name="edit_evaluation_question_group">
												<option disabled selected>Select Evaluation Question Group</option>
												<option value="0">none</option>
												@foreach($evaluationTypes as $ev)
												<option value="{{$ev->id}}" @if($user->question_group_id == $ev->id) selected @endif>{{$ev->name}}</option>
												@endforeach
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_filename">Profile Photo</label>
											<label class="custom-file" style="width: 100% !important;">
												<input type="file" id="edit_filename" class="custom-file-input" name="filename" onchange="changePreview(event, 'add', 'editUser');">
												<span class="custom-file-control"></span>
											</label>
										</div>
									</div>
								</div>
								<div id="editUser"></div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">Related Information</div>
							<div class="card-body">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_home_number" class="col-form-label">Home Number:</label>
											<input type="text" class="form-control" id="edit_home_number">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_personal_number" class="col-form-label">Personal Number:</label>
											<input type="text" class="form-control" id="edit_personal_number">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_city" class="col-form-label">City:</label>
											<input type="text" class="form-control" id="edit_city">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_street" class="col-form-label">Street:</label>
											<input type="text" class="form-control" id="edit_street">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_relative_name" class="col-form-label">Relative Name:</label>
											<input type="text" class="form-control" id="edit_relative_name">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_relative_relation" class="col-form-label">Relative Relation:</label>
											<input type="text" class="form-control" id="edit_relative_relation">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_relative_home_number" class="col-form-label">Relative Home Number:</label>
											<input type="text" class="form-control" id="edit_relative_home_number">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_relative_mobile_number" class="col-form-label">Relative Mobile Number:</label>
											<input type="text" class="form-control" id="edit_relative_mobile_number">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_relative_city" class="col-form-label">Relative City:</label>
											<input type="text" class="form-control" id="edit_relative_city">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="edit_relative_street" class="col-form-label">Relative Street:</label>
											<input type="text" class="form-control" id="edit_relative_street">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<p>Attachment:</p>
											<label class="custom-file" style="width: 100% !important;">
												<input multiple type="file" id="edit_attachment" class="custom-file-input" name="edit_attachment">
												<span class="custom-file-control"></span>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary" id="editProfile">Save</button>
					</div>
				</form>

			</div>
		</div>
	</div>
	<!-- Row ends -->
</div>
<!-- END: .main-content -->







@endsection
@section('scripts')
<script type="text/javascript" src="{{asset('public/admin/custom/js/user.js')}}"></script>
<script>
	// ----
	$(document).on('click', '#editProfile', function(e) {
		e.preventDefault();
		// alert($('#edit_id').val());


		var form = new FormData();
		var TotalImages = $('#edit_attachment')[0].files.length;
		var images = $('#edit_attachment')[0];

		for (var i = 0; i < TotalImages; i++) {
			form.append('attachment[]', images.files[i]);
		}

		form.append('id', $('#edit_id').val());
		form.append('name', $('#edit_name').val());
		form.append('type', $('#edit_type').val());
		form.append('job_title', $('#edit_job_title').val());
		form.append('email', $('#edit_email').val());
		form.append('department_id', $('#edit_department').val());
		form.append('question_group_id', $('#edit_evaluation_question_group').val());
		form.append('profile_pic', $('#edit_filename')[0].files[0]);
		form.append('order', $('#edit_order').val());
		form.append('home_number', $('#edit_home_number').val());
		form.append('personal_number', $('#edit_personal_number').val());
		form.append('city', $('#edit_city').val());
		form.append('street', $('#edit_street').val());
		form.append('relative_name', $('#edit_relative_name').val());
		form.append('relative_relation', $('#edit_relative_relation').val());
		form.append('relative_home_number', $('#edit_relative_home_number').val());
		form.append('relative_mobile_number', $('#edit_relative_mobile_number').val());
		form.append('relative_city', $('#edit_relative_city').val());
		form.append('relative_street', $('#edit_relative_street').val());


		var id = $('#edit_id').val(),

			url = base_url + '/admin/user/edit',
			method = 'POST',
			modal = '#editProfile';

		editFormProcess(e, id, url, method, form, modal)
	});

	</script>
@endsection