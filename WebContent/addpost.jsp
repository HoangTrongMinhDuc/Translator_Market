<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ubusina - Responsive HTML5 Template</title>
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=BenchNine:300,400,700" rel="stylesheet">
	<style>
/*body {font-family: Arial, Helvetica, sans-serif;}*/

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  height: 80%;
}

/* The Close Button */
.close {
  color: #848181;
  float: right;
  font-size: 50px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head>
<body>

	
	<!-- popup post -->
	<div id="myModal" class="modal">

	  <!-- Modal content -->
	  <form enctype="multipart/form-data" method="post">
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
	

	
	
	<!-- ====================================================
	header section -->
	<header class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 header-logo">
					<br>
					<a href="index.html"><img src="img/logo.png" alt="" class="img-responsive logo"></a>
				</div>

				<div class="col-md-7">
					<nav class="navbar navbar-default">
					  <div class="container-fluid nav-bar">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
					    </div>

					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					      
					      <ul class="nav navbar-nav navbar-right">
					        <li><a class="menu active" href="#home" >Home</a></li>
					        <li><a class="menu" href="#about">Profile</a></li>
							<li><a class="menu" id="myBtn" href="javascript:void(0)">Post</a></li>
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

			
			

			<section class="slider" id="home">
				<div class="container-fluid">
					<div class="row">

					    <div id="carouselHacked" class="carousel slide carousel-fade" data-ride="carousel">
							<div class="header-backup"></div>
					        <!-- Wrapper for slides -->
					        <div class="carousel-inner" role="listbox">
					            <div class="item active">
					            	<img src="img/slide-one.jpg" alt="">
					                <div class="carousel-caption">
				               			<h1>Translation</h1>
				               			<p>good find translator service</p>
				               			<button>learn more</button>
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/slide-three.jpg" alt="">
					                <div class="carousel-caption">
				               			<h1>Languages</h1>
				               			<p>Variety of languages</p>
				               			<button>learn more</button>
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/slide-four.jpg" alt="">
					                <div class="carousel-caption">
				               			<h1>Money</h1>
				               			<p>good price for the renter</p>
				               			<button>learn more</button>
					                </div>
					            </div>
					        </div>

					        <!-- Controls -->
					        <a class="left carousel-control" href="#carouselHacked" role="button" data-slide="prev">
					            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					            <span class="sr-only">Previous</span>
					        </a>
					        <a class="right carousel-control" href="#carouselHacked" role="button" data-slide="next">
					            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					            <span class="sr-only">Next</span>
					        </a>
					    </div>

					</div>
				</div>
			</section><!-- end of slider section -->


			<!-- about section -->
			<section class="about text-center" id="about">
				<div class="container">
					<div class="row">
						<h2>POSTS</h2>
						<h3>Reliable | Quality | Professional | Economical</h3>

						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail clearfix">
								<div class="about-img">
									<img src="img/about1.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>T</h1>
									</div>

									<h3>English</h3>
									<p>The renter: Nhân cave</p>
									<p>Date post: 14/2/2019</p>
									<p>Require: </p>
								</div>
							</div>
						</div>

						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail">
								<div class="about-img">
									<img class="img-responsive" src="img/about2.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>B</h1>
									</div>

									<h3>Business Consulting</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer.</p>
								</div>
							</div>
						</div>


						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail">
								<div class="about-img">
									<img class="img-responsive" src="img/about3.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>F</h1>
									</div>

									<h3>Financial Consulting</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer.</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</section><!-- end of about section -->


			<!-- service section starts here -->

			<section class="service text-center" id="service">
				<div class="container">
					<div class="row">
						<h2>our services</h2>
						<h4>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</h4>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/service1.png" alt="">
									</div>
								</div>
								<h3>Consulting</h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/service2.png" alt="">
									</div>
								</div>
								<h3>Financial</h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/service3.png" alt="">
									</div>
								</div>
								<h3>Tax Help</h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/service4.png" alt="">
									</div>
								</div>
								<h3>Money</h3>
							</div>
						</div>
					</div>
				</div>
			</section><!-- end of service section -->


			<!-- team section -->

			<section class="team" id="team">
				<div class="container">
					<div class="row">
						<div class="team-heading text-center">
							<h2>our team</h2>

							<h4>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</h4>
						</div>

						<div class="col-md-2 single-member col-sm-4">
							<div class="person">
								<img class="img-responsive" src="img/item1.jpg" alt="member-1">
							</div>

							<div class="person-detail">
								<div class="arrow-bottom"></div>
								<h3>Mr. Graham</h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
							</div>
						
						</div>

						<div class="col-md-2 single-member col-sm-4">

							<div class="person-detail">
								<div class="arrow-top"></div>
								<h3>Mr. David</h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
							</div>
							<div class="person">
								<img class="img-responsive" src="img/item2.jpg" alt="member-2">
							</div>
						</div>
						<div class="col-md-2 single-member col-sm-4">
							<div class="person">
								<img class="img-responsive" src="img/item3.jpg" alt="member-3">
							</div>
							<div class="person-detail">
								<div class="arrow-bottom"></div>
								<h3>Mr. Hovid</h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
							</div>
						</div>

						<div class="col-md-2 single-member col-sm-4">
							<div class="person-detail">
								<div class="arrow-top"></div>
								<h3>Mr Jasak</h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
							</div>
							<div class="person">
								<img class="img-responsive" src="img/item4.jpg" alt="member-4">
							</div>
						</div>

						<div class="col-md-2 single-member col-sm-4">
							<div class="person">
								<img class="img-responsive" src="img/item5.jpg" alt="member-5">
							</div>

							<div class="person-detail">
								<div class="arrow-bottom"></div>
								<h3>Mr. Joy Ka</h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
							</div>
						</div>

						<div class="col-md-2 single-member col-sm-4">

							<div class="person-detail">
								<div class="arrow-top"></div>
								<h3>Mr. Mikari</h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
							</div>
							<div class="person">
								<img class="img-responsive" src="img/item6.jpg" alt="member-5">
							</div>

						</div>
					</div>
				</div>
			</section><!-- end of team section -->

			<!-- map section -->
			<section class="api-map" id="contact">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12 map" id="map"></div>
					</div>
				</div>
			</section><!-- end of map section -->

			<!-- contact section starts here -->
			<section class="contact">
				<div class="container">
					<div class="row">
							<div class="contact-caption clearfix">
								<div class="contact-heading text-center">
									<h2>contact us</h2>
								</div>

								<div class="col-md-5 contact-info text-left">
									<h3>contact information</h3>
									<div class="info-detail">
										<ul><li><i class="fa fa-calendar"></i><span>Monday - Friday:</span> 9:30 AM to 6:30 PM</li></ul>
										<ul><li><i class="fa fa-map-marker"></i><span>Address:</span> 123 Some Street , California, US, CP 123</li></ul>
										<ul><li><i class="fa fa-phone"></i><span>Phone:</span> (01) 999-1235</li></ul>
										<ul><li><i class="fa fa-fax"></i><span>Fax:</span> (01) 999-1234</li></ul>
										<ul><li><i class="fa fa-envelope"></i><span>Email:</span> info@domain.com</li></ul>
									</div>
								</div>


								<div class="col-md-6 col-md-offset-1 contact-form">
									<h3>leave us a message</h3>

									<form class="form">
										<input class="name" type="text" placeholder="Name">
										<input class="email" type="email" placeholder="Email">
										<input class="phone" type="text" placeholder="Phone No:">
										<textarea class="message" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
										<input class="submit-btn" type="submit" value="SUBMIT">
									</form>
								</div>

							</div>
					</div>
				</div>
			</section><!-- end of contact section -->


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