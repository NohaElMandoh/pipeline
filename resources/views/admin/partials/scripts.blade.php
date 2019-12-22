<!-- jQuery first, then Tether, then other JS. -->
	<script src="{{ asset('admin/js/jquery.js') }}"></script>
	<script src="{{ asset('admin/js/tether.min.js') }}"></script>
	<script src="{{ asset('admin/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('admin/vendor/unifyMenu/unifyMenu.js') }}"></script>
	<script src="{{ asset('admin/vendor/onoffcanvas/onoffcanvas.js') }}"></script>
	<script src="{{ asset('admin/js/moment.js') }}"></script>

	<!-- Sparkline JS -->
	<script src="{{ asset('admin/vendor/sparkline/sparkline-retina.js') }}"></script>
	<script src="{{ asset('admin/vendor/sparkline/custom-sparkline.js') }}"></script>

	<!-- Slimscroll JS -->
	<script src="{{ asset('admin/vendor/slimscroll/slimscroll.min.js') }}"></script>
	<script src="{{ asset('admin/vendor/slimscroll/custom-scrollbar.js') }}"></script>

	    <!-- Data Tables -->
	<script src="{{ asset('admin/vendor/datatables/dataTables.min.js') }}"></script>
	<script src="{{ asset('admin/vendor/datatables/dataTables.bootstrap.min.js') }}"></script>

	<!-- Custom Data tables -->
	<script src="{{ asset('admin/vendor/datatables/custom/custom-datatables.js') }}"></script>
	<script src="{{ asset('admin/vendor/datatables/custom/fixedHeader.js') }}"></script>
	<!-- Select Plugin -->
	<script src="{{ asset('admin/vendor/select/js/select2.full.min.js') }}"></script>
	<!-- sweet alert -->
	<script src="{{ asset('admin/vendor/sweetalert/js/sweetalert2.min.js') }}"></script>
	<!-- jquery.validation -->
	<script src="{{ asset('admin/vendor/validateJquery/js/jquery.validationEngine.js')}}" type="text/javascript" charset="utf-8"></script>
	<script src="{{ asset('admin/vendor/validateJquery/js/jquery.validationEngine-en.js')}}" type="text/javascript" charset="utf-8"></script>
	<!-- Custom Javascript -->
	<script src="{{ asset('admin/custom/js/main.js') }}"></script>

	<!-- Common JS -->
	<script src="{{ asset('admin/js/common.js') }}"></script>
	<script src="{{ asset('admin/custom/js/moment.js') }}"></script>
	<script type="text/javascript">
		//token for ajax request
		$.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
        });
        //start dashboard links
		var base_url = '{{url("/")}}';
		// var project_files_url = '{{url(Config("constants.PR_FILES_PATH"))}}';
		var user_url          = '{{url(Config("constants.USER_PATH"))}}';
		// var comment_url          = '{{url(Config("constants.COMMENT_PATH"))}}';
		
		
		$(function(){
			$('select').select2();

			$('.close').click(function(){
				$('.bg-secondary-errors').fadeOut();
			});
		});
	</script>
    @if(session('success'))
    <style type="text/css">
      .swal2-popup .swal2-content{
        display: none;
      }
    </style>
      <script>
      Swal.fire({
        position: 'top-middle',
        type: 'success',
        title: "{{session('success')}}",
        showConfirmButton: false,
        timer: 3500
      })
      </script>
      @endif