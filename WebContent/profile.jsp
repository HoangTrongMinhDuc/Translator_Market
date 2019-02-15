<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Model.*"%>
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

	<!-- popup post -->
	<div id="myModal" class="modal">

	  <!-- Modal content -->
	  <form enctype="multipart/form-data" method="post" aciton="newpost">
	  <div class="modal-content">
	    <span class="close">&times;</span>
	    <h1>Post</h1>
	    <div class="row">
	    <div class="col-md-6">
	    	<label>Title</label>
			<input class="form-control" type="text" name="tenyeucau" placeholder="Title of post">
	    </div>

	  	<div class="col-md-3">
	  		<label> Source language </label>
	    <select class="form-control" name="idngonngunguon">
		  <option value="1">English</option>
		  <option value="2">Vietnamese</option>
		  <option value="3">Thailand</option>
		  <option value="4" selected>Myanmar</option>
		</select>
		</div>
		<div class="col-md-3">
	  		<label> Destination language </label>
		<select class="form-control" name="idngonngudich">
		  <option value="1">English</option>
		  <option value="2">Vietnamese</option>
		  <option value="3">Thailand</option>
		  <option value="4" selected>Myanmar</option>
		</select>
	</div>
	</div>

		<div class="row">
		<div class="col-md-6">
			<label>Require</label>
	    	<textarea class="form-control" id="" placeholder="Require" name="yeucau"></textarea>
			
		</div>
		<div class="col-md-6">
			<label>Topic</label>
			<input class="form-control" type="text" name="" placeholder="Example: Life">
		</div>
		</div>
	<div class="row">
	    <div class="col-md-6">
	    	<label>File</label>
	    	<input class="form-control" type="file" name="filedocument">
	    </div>
	
	    <div class="col-md-3">
	    	<label>Deadline</label>
	    	<input class="form-control" type="date" name="hancuoi">
	    </div>
	    <div class="col-md-3">
	    	<label>Price($)</label>
	    	<input class="form-control" type="number" name="sotien" placeholder="100">
	    </div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-10"></div>
		<div class="col-md-2">
		<button type="submit" class="btn btn-primary">POST</button>
		<button type="Reset" class="btn btn-warning">Reset</button>
		</div>
	</div>
	    </div>

	  </div>
</form>
	</div>
	<%@include file="header.jsp" %>


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
							<form class="form" method="post" action="<%=request.getContextPath() %>/ThongTinTaiKhoanNewController" enctype="multipart/form-data">
								<input class="name" type="text" placeholder="Name" name="fullname">
								<div class="row">
								<div class="col-md-6">
								<div class="col-md-3">
								<input style="height: 20px;" type="radio" name="gender" value="male">
								</div>
								<div class="col-md-6">
								 Male
								</div>
								</div>
								<div class="col-md-6">
								<div class="col-md-3">
								<input style="height: 20px;" type="radio" name="gender" value="female">
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
						<img src="img/sample.jpg" alt="avatar" height="300" width="300">
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
	<script>
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	  modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	</script>
</body>

</html>