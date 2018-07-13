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
<title>Admin Panel</title>
<style>
body{
	background-color:#AAB7B8;
}
.dropdown:hover .dropdown-menu {
    display: block;
}

.col-xs-12 .navbar-nav li:hover {
background-color:#f2f2f2;
}
</style>
</head>
<body>
<div class="container" style="background-color:white">
<h1>RTVMS admin panel</h1>
	<div class="col-xs-12" >
	<ul class="nav navbar-nav col-xs-12 col-lg-12 col-md-12">
					<li><a href="#">Home</a></li>
					 <li class="dropdown">
					 <a href="#" class="dropdown-toggle" data-toggle="dropdown">User Management <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Register</a></li>
                <li><a href="#">Lookup</a></li>
                </ul></li>
					<li><a href="#">Manage Tickets</a></li>
					<li><a href="#">Logout</a></li>
					</ul>
	</div>
		<div class="col-xs-12">

		</div>
			<div class="col-xs-12">

			</div>
				<div class="col-xs-12 text-center">
				<h3>2018 RTVMS, All rights reserved</h3>
				</div>
	</div>
</div>
</body>
</html>