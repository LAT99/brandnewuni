<!DOCTYPE html>
<html lang="en">
<head>
<title>Dell training</title>
<meta charset="UTF-8" />
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="{{asset('css/backend_css/bootstrap.min.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/bootstrap-responsive.min.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/colorpicker.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/datepicker.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/uniform.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/select2.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/matrix-style.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/matrix-media.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/bootstrap-wysihtml5.css')}}" />
<link rel="stylesheet" href="{{asset('css/backend_css/custom_backend.css')}}" />
<link href="{{asset('fonts/backend_fonts/css/font-awesome.css')}}" rel="stylesheet" />
<link rel="stylesheet" href="{{asset('css/backend_css/jquery.gritter.css')}}" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<style>
        body {
          font-family: 'Roboto', sans-serif !important;
        }
      </style>
</head>
<body>

<!--Header-part-->
@include('layouts.adminLayout.admin_header')
<!--close-Header-part--> 



<!--sidebar-menu-->
@include('layouts.adminLayout.admin_sidebar')
<!--sidebar-menu-->

<!--main-container-part-->
@yield('content')

<!--end-main-container-part-->

<!--Footer-part-->

@include('layouts.adminLayout.admin_footer')

<!--end-Footer-part-->
<script src="{{asset('js/backend_js/excanvas.min.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.min.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.ui.custom.js')}}"></script> 
<script src="{{asset('js/backend_js/bootstrap.min.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.flot.min.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.flot.resize.min.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.peity.min.js')}}"></script> 
<script src="{{asset('js/backend_js/fullcalendar.min.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.gritter.min.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.validate.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.wizard.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.uniform.js')}}"></script> 
<script src="{{asset('js/backend_js/select2.min.js')}}"></script> 
<script src="{{asset('js/backend_js/bootstrap-datepicker.js')}}"></script> 
<script src="{{asset('js/backend_js/jquery.dataTables.min.js')}}"></script> 
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
  
  $('.submenu > a').click(function(e)
	{
		e.preventDefault();
		var submenu = $(this).siblings('ul');
		var li = $(this).parents('li');
		var submenus = $('#sidebar li.submenu ul');
		var submenus_parents = $('#sidebar li.submenu');
		if(li.hasClass('open'))
		{
			if(($(window).width() > 768) || ($(window).width() < 479)) {
				submenu.slideUp();
			} else {
				submenu.fadeOut(250);
			}
			li.removeClass('open');
		} else 
		{
			if(($(window).width() > 768) || ($(window).width() < 479)) {
				submenus.slideUp();			
				submenu.slideDown();
			} else {
				submenus.fadeOut(250);			
				submenu.fadeIn(250);
			}
			submenus_parents.removeClass('open');		
			li.addClass('open');	
		}
	});
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
@yield('scripts')