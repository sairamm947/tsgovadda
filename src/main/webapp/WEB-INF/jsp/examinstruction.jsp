<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login | TsGovAdda</title>

<c:url value="./resources/css/style.css" var="mainCss" />
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
	   	  <div class="col-md-3">
			<div class="courses_box1-left">
                <form action="displayquestions" method="post">
				<p>Select a subject</p>
                 <div class="select-block1">
                    <select name="subject">
						<option value="Physics"> Physics </option>
						<option value="Chemistry"> Chemistry </option>
						<option value="Aptitude"> Aptitude </option>
						<option value="Reasoning"> Reasoning </option>
						<option value="History"> History </option>
						<option value="Geography"> Geography </option>
					</select>
                 </div>
                <!-- select-block -->
                <div class="select-block1">
                    <select name="level">
                        <option value="L">All</option>
						<option value="L1">Level 1</option>
                        <option value="L2">Level 2</option>
                        <option value="L3">Level 3</option>
                        <option value="L4">Level 4</option>
                        <option value="L5">Level 5</option>
                    </select>
                </div>
                <!-- select-block -->
                <input type="submit" value="Take Exam" class="course-submit">		                            
            </form>
	       </div>
	       
		</div>
		<div class="col-md-9 detail">
			<h3>Take a Exam</h3>
			<p>Select a subject , Level of the Exam and read Below instructions before submitting <b>"<u>take Exams</u>"</b> Button.</p>
			<p>Step 1. Check Your Browser Options before the Test to ensure that it is not set to disconnect after several minutes of inactivity.

* The location of this setting depends on your browser. For example, in Internet Explorer 5, 6, 7 & 8 it is located under Tools>Internet Options>Connections>Settings> Advanced
* If you have an Internet Service Provider that will break your connection if you don.t visit a new site after a certain period of time, then keep another window open and occasionally visit it and load a new page or refresh the page to keep your connection open.
                        </p>
						<p>Step 2. Do Not Use the "Back" Button on Your Browser During the Test once you have begun taking the quiz. Instead, use the scroll bar to move back to check earlier questions.
Don't close the window of the test for any reason.
If something goes wrong, send an e-mail to your professor immediately, documenting the exact problem and asking how you should proceed. Include your username and the course and section number                        </div>
                    </p>
					<p>Step 3. Review All of Your Answers Before Submitting the Quiz. Make sure you have not accidentally changed your response to a question or made a typographic mistake.</p>
					<p>Step 4. When you are satisfied with the result make sure you finish by clicking the SUBMIT button at the bottom of the screen. Click the Submit Button ONLY ONCE!
After you submit the test answers, you will receive a score unless you have exceeded the time limit for the quiz</p>
			
		  <div class="clearfix"> </div>
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