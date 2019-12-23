@extends('admin.layouts.master')
@section('style')
<style type="text/css">
	.select2-container {
		width: 100% !important;
	}

	.pro-img li {
		display: inline-block;
		margin-bottom: 15px;
		position: relative;
		height: 150px;
		width: 150px;
	}

	.pro-img li a img {
		width: 100%;
		height: 100%;
	}

	.pro-img li .link-del {
		position: absolute;
		top: 0;
		left: 0;
	}

	.hidden {
		display: none;
	}

	.comment-style {
		background: #f1f1f1;
		padding: 5px;
	}
</style>
@endsection
@section('content')
<!-- BEGIN .main-heading -->
<header class="main-heading">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
				<div class="page-icon">
					<i class="icon-layers"></i>
				</div>
				<div class="page-title">
					<h5>{{$opportunity->title}}
						@if(has_access('edit-opportunity'))

						<a href="javascript:void(0);" class="btn btn-primary btn-sm  float-right edit" data-id="{{$opportunity->id}}">
							<span class="icon-pencil"></span>
						</a>
						@endif
					</h5>
				</div>
			</div>


		</div>

	</div>
</header>
<!-- END: .main-heading -->
<!-- BEGIN .main-content -->
<div class="main-content">
	<div class="row gutters">
		<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
			<div class="card opportunity-card">
				<div class="card-body">
					<div class="row">

						<div class="col-md-9">
							<div class="proj-details">
								<h5>{{$opportunity->title}}

								</h5>
								<hr>
								<p>
									<span class="gray-head">Oppotunity Customer : </span>
									@if(count($customer))
									@foreach($customer as $cust)
									<td>{{$cust->name}}</td>
									@endforeach
									@else
									<td></td>

									@endif
								</p>


								<div class="titles">


									<button class="btn btn-gray mr-1">
										<span class="gray-head">Stage : </span>
										@if(count($opportunity->lastStage))
										@foreach($opportunity->lastStage as $stage)
										<td>{{$stage->name}}</td>
										@endforeach
										@else
										<td></td>

										@endif
									</button>


									<button class="btn btn-gray mr-1">
										<span class="gray-head">Expected Closed Date : </span>
										<td>{{ date('d-m-Y h:i A',strtotime($opportunity->expected_closed_date))}}</td>
									</button>

								</div>
							</div>
						</div>

					</div>


				</div>
				<!-- ----services section -->
				<div class="card ">
					<div class="card-header">
						<div class="card-title">
							<img src="{{url("admin/img/social-care.png")}}" class="card-icon">
							<a class="collapsed" data-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								<h6> Opportunity Services </h6>
							</a>
						</div>
						@if(has_access('addService-opportunity'))
						<a href="javascript:void(0);" class="btn btn-primary btn-sm  float-right addService" data-id="{{$opportunity->id}}">
							<span class="icon-pencil"></span>Add Services
						</a>
						@endif

					</div>
					<div id="collapseFour" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">
						<div class="card-body p-0">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Service Name</th>
										<th scope="col">Category </th>
									</tr>
								</thead>
								<tbody>

									@foreach($opportunity->services as $key=>$service)

									<tr>
										<th scope="row">{{$key+1}}</th>
										<td>{{$service->name}} </td>
										<td>{{$service->category->name}}</td>

									</tr>
									@endforeach

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- ----Stages section -->
				<div class="card ">
					<div class="card-header">
						<div class="card-title">
							<img src="{{url("admin/img/social-care.png")}}" class="card-icon">
							<a class="collapsed" data-toggle="collapse" href="#collapseStage" aria-expanded="false" aria-controls="collapseFour">
								<h6> Opportunity Stages

								</h6>


							</a>

						</div>
						@if(has_access('updateStage-opportunity'))
						<a href="javascript:void(0);" class="btn btn-primary btn-sm  float-right editStage" data-id="{{$opportunity->id}}">
							<span class="icon-pencil"></span>Change Stage
						</a>
						@endif
					</div>
					<div id="collapseStage" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">
						<div class="card-body p-0">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Stage</th>
										<th scope="col">Notes</th>
										<th scope="col">Created At </th>
									</tr>
								</thead>
								<tbody>

									@foreach($opportunity->stages as $key=>$stage)

									<tr>
										<th scope="row">{{$key+1}}</th>
										<td>{{$stage->name}} </td>
										@if($stage->pivot->notes)
										<td>{{$stage->pivot->notes}} </td>

										@else
										<td>{{$opportunity->notes}} </td>

										@endif
										<td>{{$stage->created_at}}</td>

									</tr>
									@endforeach

								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- --notes section -->
				<div class="card">
					<div class="card-header">
						<div class="card-title">
							<img src="{{url("admin/img/notes.png")}}" class="card-icon">
							<h6> Notes </h6>

						</div>

					</div>
					<div class="card-body">
						<ol class="pl-2">
							<li>

								<span class="gray-head"> {{$opportunity->notes}} </span>
							</li>
						</ol>
					</div>
				</div>
			</div>

		</div>
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

								<select class="form-control validate[required]" id="edit_services" name="services" multiple>
									<option disabled>Select Services</option>
									@if(!empty($services))
									@foreach($services as $service)
									<option value="{{$service->id}}" selected>{{$service->name}}</option>
									@endforeach
									@endif
								</select>
							</div>
							<div class="form-group">
								<label for="stage_id"><strong>Stage</strong><span style="color: red;"> * </span></label>

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
		<!--Edit Stage-->

		<div class="modal fade" id="editStageModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Update Opportunity Stage</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form id="edit_stage_form">
						<div class="modal-body">
							<div class="error hidden">
								<ul></ul>
							</div>
							<input type="hidden" name="id" id="opportunity_id" value="{{$opportunity->id}}">




							<div class="form-group">
								<label for="stage_id"><strong>Stage</strong><span style="color: red;"> * </span></label>

								<select class="form-control validate[required]" id="update_stage_id" name="stage_id">
									<option disabled>Select Stage</option>
									@foreach($stages as $stage)
									<option value="{{$stage->id}}" selected>{{$stage->name}}</option>
									@endforeach
								</select>

							</div>

							<div class="form-group">
								<label for="notes"><strong>Notes</strong></label>
								<textarea class="form-control" id="update_notes" rows="8" name="notes" placeholder="Notes">{{old('notes')}}</textarea>
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


		<!--Edit Stage-->
		<!--Add Service-->

		<div class="modal fade" id="addServiceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Add Service</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form id="add_service_form">
						<div class="modal-body">
							<div class="error hidden">
								<ul></ul>
							</div>
							<input type="hidden" name="id" id="opportunity_id" value="{{$opportunity->id}}">




							<div class="form-group">
								<label for="service_id"><strong>Service</strong><span style="color: red;"> * </span></label>

								<select class="form-control validate[required]" id="services" name="services[]" multiple>
									<option disabled>Select Services</option>
									@if(!empty($services))
									@foreach($services as $service)
									<option value="{{$service->id}}" selected>{{$service->name}}</option>
									@endforeach
									@endif
								</select>

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


		<!--Add Service-->


		<!-- END: .main-content -->



		@endsection
		@section('scripts')
		<script src="{{asset('admin/custom/js/pipeline.js')}}"></script>
		@endsection