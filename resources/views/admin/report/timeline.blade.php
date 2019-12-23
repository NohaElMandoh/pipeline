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
		<form action="" method="GET">
					<div class="content-group">
						<div class="row" style="padding: 20px;">
							<div class="col-md-3">
								<div class="form-group">
									<label for="name"><strong>Name</strong></label>
									<input type="text" name="name" class="form-control">
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="stage_id"><strong>Stage</strong></label>
									<select class="form-control" name="stage_id">
										<option value="0"  selected>All</option>
										@foreach($stages as $stage)
											<option value="{{$stage->id}}" >{{$stage->name}}</option>
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
											<option value="{{$customer->id}}" >{{$customer->name}}</option>
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
			
		</div>
		
	</div>

			<div class="panel-body">
			

                 <div class="timeline">
                  <div class="timeline__wrap">
                   <div class="timeline__items">
				   @foreach($opportunities as $opportunity)
                    <div class="timeline__item">
                     <div class="timeline__content">

					 
					  <h2>{{$opportunity->title}}</h2>
					  @if(!empty($opportunity->customer))

					  <h6>Customer : {{$opportunity->customer->name}}</h6>
					  @endif
					  @if(count($opportunity->lastStage))

            @foreach($opportunity->lastStage as $key=>$stage)
            <h6>Current Stage : {{$stage->name}}</h6>
            @endforeach
            @else
            <h6></h6>

            @endif
					  <h6>Expected Closed Date : {{ date('d-m-Y h:i A',strtotime($opportunity->expected_closed_date)) }}</h1>
					  <h6>Created At : {{ date('d-m-Y h:i A',strtotime($opportunity->created_at)) }}</h6>
					  <h6>Updated At :  {{ date('d-m-Y h:i A',strtotime($opportunity->updated_at))}}</h6>
                     </div>
					</div>
				@endforeach
					
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
$(document).ready(function(){
 jQuery('.timeline').timeline({
  //mode: 'horizontal',
  //visibleItems: 4
  //Remove this comment for see Timeline in Horizontal Format otherwise it will display in Vertical Direction Timeline
 });
});
</script>
@endsection