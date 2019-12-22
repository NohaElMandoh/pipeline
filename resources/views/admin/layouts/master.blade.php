<!doctype html>
<html lang="en">
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        
		<title>Roqay | PipeLine</title>
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="Unify Admin Panel" />
		<meta name="keywords" content="Admin, Dashboard, Bootstrap4, Sass, CSS3, HTML5, Responsive Dashboard, Responsive Admin Template, Admin Template, Best Admin Template, Bootstrap Template, Themeforest" />
		<meta name="author" content="Bootstrap Gallery" />
		
		@include('admin.partials.style')
		@yield('style')
	</head>
	<body>
		

		<!-- BEGIN .app-wrap -->
		<div class="app-wrap">
			@include('admin.partials.header')
			<!-- BEGIN .app-container -->
			<div class="app-container">
				@include('admin.partials.side-bar')

				<!-- BEGIN .app-main -->
				<div class="app-main">
					@yield('content')
				</div>
				<!-- END: .app-main -->
			</div>
			<!-- END: .app-container -->
			@include('admin.partials.footer')
		</div>
		<!-- END: .app-wrap -->

		@include('admin.partials.scripts')
		@yield('scripts')
		
	</body>
</html>