<!-- BEGIN .app-side -->
<aside class="app-side" id="app-side">
	<!-- BEGIN .side-content -->
	<div class="side-content ">
		<!-- BEGIN .user-profile -->
		<div class="user-profile">
			<a href="{{url('/admin/dashboard')}}" class="logo">
				<img src="{{ url('admin/img/logo.png') }}" alt="Admin Dashboard" />
			</a>

		</div>
		<!-- END .user-profile -->
		<!-- BEGIN .side-nav -->
		<nav class="side-nav">
			<!-- BEGIN: side-nav-content -->
			<ul class="unifyMenu" id="unifyMenu">
				{{--@if(has_access('view-dashboard'))
				<li class="@if(Request::is('admin/dashboard') == true) active selected @endif">
					<a href='{{url("admin/dashboard")}}'>
						<span class="has-icon">
							<i class="icon-flash-outline"></i>
						</span>
						<span class="nav-title">Dashboard</span>
					</a>
				</li>
				@endif--}}
				{{--@if(has_access('view-opportunity'))--}}
				<li class="@if(Request::is('admin/opportunities') == true) active selected @endif">

				<a href='{{url("admin/opportunities")}}'>

						<span class="has-icon">
							<i class="icon-flash-outline"></i>
						</span>
						<span class="nav-title">Opportunities</span>
					</a>
				</li>
				{{--@endif--}}
				@if(has_access('view-customer'))
				<li class="@if(Request::is('admin/customers') == true) active selected @endif">
					<a href='{{url("admin/customers")}}'>
						<span class="has-icon">
							<i class="icon-flash-outline"></i>
						</span>
						<span class="nav-title">Customers</span>
					</a>
				</li>
				@endif
				@if(has_access('view-stage'))
				<li>
					<a href="@if(Request::is('admin/stages') == true) active selected @endif">
						<a href='{{url("admin/stages")}}'>
							<span class="has-icon">
								<i class="icon-flash-outline"></i>
							</span>
							<span class="nav-title">Stages</span>
						</a>
				</li>
				@endif
				@if(has_access('view-category'))

				<li>
					<a href="@if(Request::is('admin/categories') == true) active selected @endif">
						<a href='{{url("admin/categories")}}'>
							<span class="has-icon">
								<i class="icon-flash-outline"></i>
							</span>
							<span class="nav-title">Categories</span>
						</a>
				</li>
				@endif
				@if(has_access('view-employee'))

				<li>
					<a href="@if(Request::is('admin/users') == true) active selected @endif">
						<a href='{{url("admin/users")}}'>
							<span class="has-icon">
								<i class="icon-flash-outline"></i>
							</span>
							<span class="nav-title">Employees</span>
						</a>
				</li>
				@endif
				@if(has_access('view-service'))

				<li>
					<a href="@if(Request::is('admin/services') == true) active selected @endif">
						<a href='{{url("admin/services")}}'>
							<span class="has-icon">
								<i class="icon-flash-outline"></i>
							</span>
							<span class="nav-title">Services</span>
						</a>
				</li>
				@endif
				<li class="@if(Request::is('admin/Reports') == true) active selected @endif">
					<a href='{{route("reports.index")}}' >
					<span class="has-icon">
					<i class="icon-flash-outline"></i>

					</span>
						<span class="nav-title">Reports</span>
					</a>
				
				</li>
		


			</ul>
			<!-- END: side-nav-content -->
		</nav>
		<!-- END: .side-nav -->
	</div>
	<!-- END: .side-content -->
</aside>
<!-- END: .app-side -->