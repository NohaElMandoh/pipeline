<!-- BEGIN .app-heading -->
<header class="app-header">
	<div class="container-fluid">
		<div class="row gutters">
			<div class="col-xl-7 col-lg-7 col-md-7 col-sm-7 col-8">
				<a class="mini-nav-btn" href="#" id="app-side-mini-toggler">
					<i class="icon-arrow_back"></i>
				</a>
				<a href="#app-side" data-toggle="onoffcanvas" class="onoffcanvas-toggler" aria-expanded="true">
					<i class="icon-chevron-thin-left"></i>
				</a>
			
			</div>
			<div class="col-xl-5 col-lg-5 col-md-5 col-sm-5 col-4">
				<ul class="header-actions">
					
					
					<li>
						<a href="#" id="userSettings" class="user-settings" data-toggle="dropdown" aria-haspopup="true">
							<img style="height: 40px;" class="avatar" src="{{ userPath(Auth::user()->profile_pic) }}" alt="User Thumb" />
							<span class="user-name">{{Auth::user()->name}}</span>
							<i class="icon-chevron-small-down"></i>
						</a>
						<div class="dropdown-menu lg dropdown-menu-right" aria-labelledby="userSettings">
							<div class="logout-btn">
								<a class="btn btn-primary" href=""
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('admin.logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
								<!-- <a href="login.html" class="btn btn-primary">Logout</a> -->
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</header>
<!-- END: .app-heading -->