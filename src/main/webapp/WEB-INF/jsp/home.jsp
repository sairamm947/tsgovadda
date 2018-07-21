<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>TsGovAdda</title>

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
	<header>
		<jsp:include page="header.jsp" />
	</header>
	<!-- banner -->
	<div class="banner">
		<!-- banner Slider starts Here -->
		<script src="<c:url value="./resources/js/responsiveslides.min.js"/>"
			type="text/javascript"></script>
		<script>
			// You can also use "$(window).load(function() {"
			$(function() {
				// Slideshow 4
				$("#slider3").responsiveSlides({
					auto : true,
					pager : true,
					nav : true,
					speed : 500,
					namespace : "callbacks",
					before : function() {
						$('.events').append("<li>before event fired.</li>");
					},
					after : function() {
						$('.events').append("<li>after event fired.</li>");
					}
				});

			});
		</script>
		<!--//End-slider-script -->
		<div id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="banner-bg">
						<div class="container">
							<div class="banner-info">
								</br>
								</br> <a href="./register"><i class="fa fa-thumbs-up icon_1"
									style="font-size: 20px; transition: color 0.2s ease 0s, border-color 0.2s ease 0s, background-color 0.2s ease 0s; min-height: 0px; min-width: 0px; line-height: 20px; border-width: 0px 2px 0px 0px; margin: 0px; padding: 0px 10px 0 0; letter-spacing: 0px;"></i>Register</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-bg banner-img2">
						<div class="container">
							<div class="banner-info">
								<a href="./register"><i class="fa fa-thumbs-up icon_1"
									style="font-size: 20px; transition: color 0.2s ease 0s, border-color 0.2s ease 0s, background-color 0.2s ease 0s; min-height: 0px; min-width: 0px; line-height: 20px; border-width: 0px 2px 0px 0px; margin: 0px; padding: 0px 10px 0 0; letter-spacing: 0px;"></i>Register</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-bg banner-img">
						<div class="container">
							<div class="banner-info">
								<a href="./register"><i class="fa fa-thumbs-up icon_1"
									style="font-size: 20px; transition: color 0.2s ease 0s, border-color 0.2s ease 0s, background-color 0.2s ease 0s; min-height: 0px; min-width: 0px; line-height: 20px; border-width: 0px 2px 0px 0px; margin: 0px; padding: 0px 10px 0 0; letter-spacing: 0px;"></i>Register</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-bg">
						<div class="container">
							<div class="banner-info">
								<a href="./register"><i class="fa fa-thumbs-up icon_1"
									style="font-size: 20px; transition: color 0.2s ease 0s, border-color 0.2s ease 0s, background-color 0.2s ease 0s; min-height: 0px; min-width: 0px; line-height: 20px; border-width: 0px 2px 0px 0px; margin: 0px; padding: 0px 10px 0 0; letter-spacing: 0px;"></i>Register</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-bg banner-img2">
						<div class="container">
							<div class="banner-info">
								<a href="./register"><i class="fa fa-thumbs-up icon_1"
									style="font-size: 20px; transition: color 0.2s ease 0s, border-color 0.2s ease 0s, background-color 0.2s ease 0s; min-height: 0px; min-width: 0px; line-height: 20px; border-width: 0px 2px 0px 0px; margin: 0px; padding: 0px 10px 0 0; letter-spacing: 0px;"></i>Register</a>
							</div>
						</div>
					</div>
				</li>

			</ul>
		</div>
	</div>
	<!-- //banner -->
	<!-- Current Affairs -->
	<div class="grid_1">
		<div class="container">


			<div class="col-md-10 grid_1_right">
				<h2>Current Affairs</h2>
				<div class="but_list">
					<div class="bs-example bs-example-tabs" role="tabpanel"
						data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
								aria-expanded="true">To Day&nbsp;&nbsp;&nbsp;</a></li>
							<li role="presentation"><a href="#profile" role="tab"
								id="profile-tab" data-toggle="tab" aria-controls="profile">Yesterday&nbsp;&nbsp;&nbsp;</a></li>
							<li role="presentation"><a href="#profile1" role="tab"
								id="profile-tab1" data-toggle="tab" aria-controls="profile1">More&nbsp;&nbsp;&nbsp;</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="home"
								aria-labelledby="home-tab">
								<div class="events_box">

									<div class="event_right">
										<h3>
											<a href="#">Welcoming and introduction</a>
										</h3>
										<p>
											It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout. <a href="#">Read More</a>
										</p>
										<img src="./resources/images/t9.jpg" class="img-responsive"
											alt="" />
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="events_box">
									<div class="event_right">
										<h3>
											<a href="#">Welcoming and introduction</a>
										</h3>
										<p>
											There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form <a href="#">Read More</a>
										</p>
										<img src="./resources/images/t5.jpg" class="img-responsive"
											alt="" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="profile"
								aria-labelledby="profile-tab">
								<div class="events_box">
									<div class="event_right">
										<h3>
											<a href="#">Welcoming and introduction</a>
										</h3>
										<p>
											There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form <a href="#">Read More</a>
										</p>
										<img src="./resources/images/t8.jpg" class="img-responsive"
											alt="" />
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="events_box">
									<div class="event_right">
										<h3>
											<a href="#">Welcoming and introduction</a>
										</h3>
										<p>
											Contrary to popular belief, Lorem Ipsum is not simply random
											text. It has roots in a piece of classical Latin literature <a
												href="#">Read More</a>
										</p>
										<img src="./resources/images/t2.jpg" class="img-responsive"
											alt="" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="profile1"
								aria-labelledby="profile-tab1">
								<div class="events_box">
									<div class="event_right">
										<h3>
											<a href="#">Welcoming and introduction</a>
										</h3>
										<p>
											But I must explain to you how all this mistaken idea of
											denouncing pleasure and praising pain was born and I will
											give you a complete account of the system, and expound the
											actual teachings <a href="#">Read More</a>
										</p>
										<img src="./resources/images/t7.jpg" class="img-responsive"
											alt="" />
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="events_box">
									<div class="event_right">
										<h3>
											<a href="#">Welcoming and introduction</a>
										</h3>
										<p>
											Vestibulum id ligula porta felis euismod semper. Nullam quis
											risus eget urna mollis ornare vel eu leo. Donec ullamcorper
											nulla non metus auctor fringilla. Aenean lacinia bibendum
											nulla sed consectetur.... <a href="#">Read More</a>
										</p>
										<img src="./resources/images/t4.jpg" class="img-responsive"
											alt="" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //Current Affairs -->
	<!-- footer -->
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
	<!-- //footer -->




	<script src="<c:url value="./resources/js/jquery.countdown.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="./resources/js/script.js"/>"
		type="text/javascript"></script>
</body>
</html>
