<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE HTML>
<html>
<head>
<title>Register | TsGovAdda</title>
<c:url value="./resources/css/style.css" var="mainCss" />
<c:url value="./resources/css/jquery.countdown.css"
	var="jquerycountdownCss" />
<c:url value="./resources/css/font-awesome.css" var="fontawesomeCss" />
<c:url value="./resources/css/bootstrap-3.1.1.min.css" var="boostrapCss" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Learn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="${boostrapCss}" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="./resources/js/jquery.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="./resources/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<!-- Custom Theme files -->
<link href="${mainCss}" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${jquerycountdownCss}" />

<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700'
	rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="${fontawesomeCss}" rel="stylesheet">
<!----font-Awesome----->
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
	
	<div class="courses_box1">
	   <div class="container">
	   	  <form action="studentregisterser" method="post">
                <p class="lead">Register New Account</p>
                <div class="form-group">
                    <input type="text" autocomplete="off" class="required form-control" placeholder="Name *" name="sname">
                </div>
                <div class="form-group">
                    <input type="text" autocomplete="off" class="required form-control" placeholder="Username *" name="susername">
                </div>
                <div class="form-group">
                    <input type="password" class="required form-control" placeholder="Password *" name="spassword">
                </div>
                <div class="form-group">
                    <input type="password" class="required form-control" placeholder="Conform Password *" name="scpassword">
                </div>
                <div class="form-group">
                    <input type="text" autocomplete="off" class="required form-control" placeholder="Email *" name="semail">
                </div>
                <div class="form-group">
                    <input type="text" autocomplete="off" class="required form-control" placeholder="Conform Email *" name="scemail">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary btn-lg1 btn-block" value="Register">
                </div>
                
            </form>
            <p>Already have an account? <a href="./login">Sign In</a></p>
	   </div>
	</div>
         <!-- footer -->
  		    <footer>
        <jsp:include page="footer.jsp"/>
    </footer>
  <!-- //footer -->
</body>
</html>	