<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login | TsGovAdda</title>

<c:url value="./resources/style.css" var="mainCss" />
<c:url value="./resources/css/jquery.countdown.css"
	var="jquerycountdownCss" />
<c:url value="./resources/css/font-awesome.css" var="fontawesomeCss" />
<c:url value="./resources/css/bootstrap-3.1.1.min.css" var="boostrapCss" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="TsGovAdda" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="${boostrapCss}" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="./resources/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<!-- Custom Theme files -->

<link rel="stylesheet" href="${jquerycountdownCss}" />

<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700'
	rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="${fontawesomeCss}" rel="stylesheet">
<!----font-Awesome----->
<link href="${mainCss}" rel='stylesheet' type='text/css' />
<script>
	$(document).ready(function() {
		$(".dropdown").hover(function() {
			$('.dropdown-menu', this).stop(true, true).slideDown("fast");
			$(this).toggleClass('open');
		}, function() {
			$('.dropdown-menu', this).stop(true, true).slideUp("fast");
			$(this).toggleClass('open');
		});
	});
</script>
</head>
<body>
<!-- header -->
   <header>
        <jsp:include page="header.jsp"/>
    </header>
    <!-- //header -->
    
    <!-- login -->
	<div class="courses_box1">
	   <div class="container">
	   <p style="color:green; text-align: center;">${message }</p>
	   <p style="color: red; text-align: center;">${sid }</p>
	   	  <form action="studentloginser" method="post">
	    	<p class="lead">Welcome Back!</p>
		    <div class="form-group">
			    <input autocomplete="off" type="text" name="susername" class="required form-control" placeholder="Enter Username">
		    </div>
		    <div class="form-group">
			    <input autocomplete="off" type="password" class="password required form-control" placeholder="Enter Password" name="spassword">
		    </div>
		    <div class="form-group">
		    	<input type="checkbox" name="remember" value="true"> Remember Me
		    	<input type="submit" class="btn btn-primary btn-lg1 btn-block" value="Log In">
		    </div>
	        <p>Don not have an account? <a href="register.html" title="Sign Up">Sign Up</a></p>
		 </form>
	   </div>
	</div>
	<!-- //login -->
	
      <!-- footer -->
  		    <footer>
        <jsp:include page="footer.jsp"/>
    </footer>
  <!-- //footer -->
  
  	<script src="<c:url value="./resources/js/jquery.countdown.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="./resources/js/script.js"/>"
		type="text/javascript"></script>
</body>
</html>	