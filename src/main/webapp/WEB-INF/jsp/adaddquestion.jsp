<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TsGovAdda</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="TsGovAdda" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="<a:url value="/resources/admin/css/bootstrap.css" />" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="<a:url value="/resources/admin/css/style.css" />" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="<a:url value="/resources/admin/css/font-awesome.css" />" rel="stylesheet"> 
<!-- //font-awesome icons CSS -->

 <!-- side nav css file -->
 <link href="<a:url value='/resources/admin/css/SidebarNav.min.css' />" media='all' rel='stylesheet' type='text/css'/>
 <!-- side nav css file -->
 
 <!-- js-->
<script src="<a:url value="/resources/admin/js/jquery-1.11.1.min.js"/>"></script>
<script src="<a:url value="/resources/admin/js/modernizr.custom.js"/>"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- Metis Menu -->
<script src="<a:url value="/resources/admin/js/metisMenu.min.js"/>"></script>
<script  src="<a:url value="/resources/admin/js/custom.js"/>"></script>
<link href="<a:url value="/resources/admin/css/custom.css" />" rel="stylesheet">
<!--//Metis Menu -->


</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="index.html"> TsGovAdda<span class="dashboard_text">We Serve.You Learn</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">MAIN NAVIGATION</li>
              <li class="treeview">
                <a href="index.html">
                <i class="fa fa-dashboard"></i> <span>Home</span>
                </a>
              </li>
			  <li class="treeview">
                <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Add Questions</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="grids.html"><i class="fa fa-angle-right"></i> Single</a></li>
                  <li><a href="media.html"><i class="fa fa-angle-right"></i> Multiple</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-edit"></i> <span>Sign</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="login.html"><i class="fa fa-angle-right"></i> Login</a></li>
                  <li><a href="signup.html"><i class="fa fa-angle-right"></i> Register</a></li>
                </ul>
              </li>
            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				
				<!--notification menu end -->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				
				
				
				
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/2  .jpg" alt=""> </span> 
									<div class="user-name">
										<p>Sairam</p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> My Account</a> </li>
								<li> <a href="#"><i class="fa fa-suitcase"></i> Profile</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
				<p style="color:green; text-align: center;">${message }</p>
		<div class="row">
						<h3 class="title1">Add Question :</h3>
						<div class="form-three widget-shadow">
							<form class="form-horizontal" action="questionserv" method="post">
								<div class="form-group">
									<label for="radio" class="col-sm-2 control-label">Select Subject :</label>
									<div class="col-sm-8" required>
										<select name="subject">
											<option value="Physics"> Physics </option>
											<option value="Chemistry"> Chemistry </option>
											<option value="Aptitude"> Aptitude </option>
											<option value="Reasoning"> Reasoning </option>
											<option value="History"> History </option>
											<option value="Geography"> Geography </option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="txtarea1" class="col-sm-2 control-label">Question</label>
									<div class="col-sm-8"><textarea name="question" cols="50" rows="4" class="form-control1" required></textarea></div>
								</div>
								<div class="form-group mb-n">
									<label for="largeinput" class="col-sm-2 control-label label-input-lg">Option A :</label>
									<div class="col-sm-8">
										<input type="text" name="option_a" class="form-control1 input-lg"  placeholder="Enter Option A" required="">
									</div>
								</div>
								<div class="form-group mb-n">
									<label for="largeinput" class="col-sm-2 control-label label-input-lg">Option B :</label>
									<div class="col-sm-8">
										<input type="text" name="option_b" class="form-control1 input-lg"  placeholder="Enter Option B" required="">
									</div>
								</div>
								<div class="form-group mb-n">
									<label for="largeinput" class="col-sm-2 control-label label-input-lg">Option C :</label>
									<div class="col-sm-8">
										<input type="text" name="option_c" class="form-control1 input-lg"  placeholder="Enter Option C" required="">
									</div>
								</div>
								<div class="form-group mb-n">
									<label for="largeinput" class="col-sm-2 control-label label-input-lg">Option D :</label>
									<div class="col-sm-8">
										<input type="text" name="option_d" class="form-control1 input-lg"  placeholder="Enter Option D" required="">
									</div>
								</div>
								<div class="form-group">
									<label for="radio" class="col-sm-2 control-label">Correct Option :</label>
									<div class="col-sm-8" required="">
										<div class="radio-inline"><label><input type="radio" name="correct" value="1"> Option A</label></div>
										<div class="radio-inline"><label><input type="radio" name="correct" value="2"> Option B</label></div>
										<div class="radio-inline"><label><input type="radio" name="correct" value="3"> Option C</label></div>
										<div class="radio-inline"><label><input type="radio" name="correct" value="4"> Option D</label></div>
									</div>
								</div>
								<div class="form-group">
									<label for="txtarea1" class="col-sm-2 control-label">Explanation Answer</label>
									<div class="col-sm-8"><textarea name="explain" cols="50" rows="4" class="form-control1"></textarea></div>
								</div>
								<div class="form-group">
									<label for="checkbox" class="col-sm-2 control-label"></label>
									<div class="col-sm-8">
										<div class="checkbox-inline1"><label><input type="checkbox" name="checkbox">Do you want Add another one Question</label></div>
									</div>
								</div>
								
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
								
							</form>
						</div>
					</div>
		
			</div>
			</div>
		</div>
	

		
		
		
		</br></br>
		
		<!-- //main content start-->
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2018 TsGovAdda. All Rights Reserved | Design by <a href="#" target="_blank">TsGovAdda</a></p>
	   </div>
        <!--//footer-->
	</div>
	
	<!-- side nav js -->
	<script src="<a:url value="/resources/admin/js/SidebarNav.min.js"/>" type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="<a:url value="/resources/admin/js/classie.js"/>"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
	
	<!--scrolling js-->
	<script src="<a:url value="/resources/admin/js/jquery.nicescroll.js"/>"></script>
	<script src="<a:url value="/resources/admin/js/scripts.js"/>"></script>
	<!--//scrolling js-->
	
	<!-- Bootstrap Core JavaScript -->
   <script src="<a:url value="/resources/admin/js/bootstrap.js"/>"> </script>
   
</body>
</html>