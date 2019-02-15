<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.bean.*"%>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Create My Profile</title>
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet'
		type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
</head>

<body>

	<!-- ====================================================
	header section -->
	<header class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 header-logo">
					<br>
					<a href="index.html"><img src="<%= request.getContextPath() %>/images/logo.png" alt="" class="img-responsive logo"></a>
				</div>

				<div class="col-md-7">
					<nav class="navbar navbar-default">
						<div class="container-fluid nav-bar">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

								<ul class="nav navbar-nav navbar-right">
									<li><a class="menu" href="#home">Home</a></li>
									<li><a a class="menu active" href="#about">Profile</a></li>
									<li><a class="menu" href="#service">Post </a></li>
									<li><a class="menu" href="#team">hello : admin</a></li>
									<li><a class="menu" href="#team">Sign out</a></li>

								</ul>
							</div><!-- /navbar-collapse -->
						</div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->


	<!-- -->

	<!-- profile section -->
	<section class="about text-center" id="about">
		<!-- contact section starts here -->

		<div class="container">
			<div class="row">
				<div class="contact-caption clearfix">
					<div class="contact-heading text-center">
						<h2>Create My Profile</h2>
					</div>
					<div class="col-md-6 contact-info text-left">
						<h3>Create My Account Information</h3>
						<div class="col-md-12 col-md-offset-1 contact-form">
							<form name="f1" class="form" method="post" action="<%=request.getContextPath() %>/ThongTinTaiKhoanNewController" enctype="multipart/form-data">
								<input class="name" type="text" placeholder="Name" name="fullname">
								<div class="row">
								<div class="col-md-6">
								<div class="col-md-3">
								<input style="height: 20px;" type="radio" name="Gender" value="male">
								</div>
								<div class="col-md-6">
								 Male
								</div>
								</div>
								<div class="col-md-6">
								<div class="col-md-3">
								<input style="height: 20px;" type="radio" name="Gender" value="female">
								</div>
								<div class="col-md-6">
								Female
								</div>
								</div>
  								</div>
								<input class="name" type="date" placeholder="Birthday" name="birthday">
								<input class="phone" type="text" placeholder="Phone" name="phone">
								<input class="email" type="email" placeholder="Email" name="email">
								<input class="phone" type="text" placeholder="Payment Infor" name="payment">
								<input type="file" name="avatar">
								<input class="submit-btn" type="reset" value="RESET">
								<input class="submit-btn" type="submit" value="CREATE">
							</form>
						</div>

					</div>
					<h3></h3>
					<div>
						<img src="img/111.jpg" alt="avatar" height="300" width="300">
					</div>
				</div>
			</div>
		</div>
	</section><!-- end of about section -->



	<!-- footer starts here -->
	<footer class="footer clearfix">
		<div class="container">
			<div class="row">
				<div class="col-xs-6 footer-para">
					<p>&copy; <a href="https://www.freshdesignweb.com">freshDesignweb.com</a> All right reserved</p>
				</div>

				<div class="col-xs-6 text-right">
					<a href=""><i class="fa fa-facebook"></i></a>
					<a href=""><i class="fa fa-twitter"></i></a>
					<a href=""><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
	</footer>


	<!-- script tags
	============================================================= -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/gmaps.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>

</body>

</html>