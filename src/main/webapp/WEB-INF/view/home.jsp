<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>RTVMS HOME</title>
<style>
.dropdown:hover .dropdown-menu {
    display: block;
}
.dropdown:hover {
background-color:#64cbff;
}
.col-xs-12 .navbar-nav li:hover {
background-color:#64cbff;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="col-xs-12">
				<ul class="nav navbar-nav col-xs-12 col-lg-12 col-md-12">
					<li><a href="#">Home</a></li>
					<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Manage Tickets <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="tickets/lookupticket">Lookup Ticket</a></li>
                <li><a href="tickets/payticket">Pay Ticket</a></li>
                </ul></li>
					<li><a href="contact">Contact Us</a></li>
					<li><a href="about">About Us</a></li>
				</ul>
			</div>
		</div>
		<div class="container-fluid">
			<h1>Welcome to RTVMS web page</h1>
		<p>Here you can view your ticket and pay ticket online.</p>
		</div>
	</div>
	</nav>
</body>
</html>