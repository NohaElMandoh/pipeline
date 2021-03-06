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
            <form action="" method="GET">
					<div class="content-group">
						<div class="row" style="padding: 20px;">
							<div class="col-md-3">
								<div class="form-group">
									<label for="name"><strong>Name</strong></label>
									<input type="text" name="name" class="form-control" value="{{Request::get('name')? Request::get('name') : ''}}">
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="stage_id"><strong>Stage</strong></label>
									<select class="form-control" name="stage_id">
										<option value="0"  selected>All</option>
										@foreach($stages as $stage)
											<option value="{{$stage->id}}" {{Request::get('stage_id') == $stage->id ? 'selected' : ''}}>{{$stage->name}}</option>
										@endforeach
									</select>
								</div>
                            </div>
                            
							<div class="col-md-3">
								<div class="form-group">
									<label for="customer_id"><strong>Customer</strong></label>
									<select class="form-control" name="customer_id" id="customer_id">
										<option value="0"  selected>All</option>
										@foreach($customers as $customer)
											<option value="{{$customer->id}}" {{Request::get('customer_id') == $customer->id ? 'selected' : ''}}>{{$customer->name}}</option>
										@endforeach
									</select>
								</div>
                            </div>
                            <div class="col-md-3">
								<div class="form-group">
									<label for="month"><strong>Month</strong></label>
									<select class="form-control" name="month" id="month">
										<option value="0"  selected>All</option>
									
                                            <option value="01" >January</option>					
                                            <option value="02" >February</option>
                                             <option value="03" >March</option>
                                            <option value="04" >April</option>
											<option value="05" >May</option>
                                            <option value="06" >June</option>
                                            <option value="07" >July</option>
											<option value="08" >August</option>
                                            <option value="09" >September</option>
                                            <option value="10" >October</option>
											<option value="11" >November</option>
											<option value="12" >December</option>

										
									</select>
								</div>
							</div>
						
							<div class="col-md-6" style="margin-top: 35px;">
								<button type="submit" class="btn btn-primary" style="padding: 5px 10px;">Filter Data <i class="icon-arrow-right14 position-right"></i></button>
							
							</div>
						</div>
					</div>

					</fieldset>
				</form>
                <!-- <div class="card-header">Basic Datatable</div> -->
                <div class="card-body" id="table-body">
                    @include('admin.report.table')
                </div>
            </div>
        </div>
    </div>
    <!-- Row ends -->
</div>
<!-- END: .main-content -->

@endsection
