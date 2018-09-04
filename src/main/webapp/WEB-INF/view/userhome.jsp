<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Traffic Homepage</title>
<style>
body, content-div{
	background-color:#AAB7B8;
}
.dropdown:hover .dropdown-menu {
    display: block;
}

.col-xs-12 .navbar-nav li:hover {
background-color:#f2f2f2;
}
.col-xs-12 .navbar-nav {
background-color:#ffffff;
}
</style>
</head>
<body>
<div class="container">
<h1>Traffic User Control Panel</h1>
	<div class="col-xs-12" >
	<ul class="nav navbar-nav col-xs-12 col-lg-12 col-md-12">
				<li><a href="${pageContext.request.contextPath}/user/home"><i class="fas fa-home"></i>&nbsp Home</a></li>
				 <li class="dropdown">
			 <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fas fa-ticket-alt"></i>&nbsp Ticket Portal <b class="caret"></b></a>
            	<ul class="dropdown-menu">
              	<li><a href="${pageContext.request.contextPath}/user/lookuplicense"><i class="fas fa-search"></i>&nbsp Lookup License</a></li>
                <li><a href="${pageContext.request.contextPath}/user/issueticket"><i class="fas fa-ticket-alt"></i>&nbsp Issue Ticket</a></li>
                </ul></li>
                <li><a href="${pageContext.request.contextPath}/user"><i class="fas fa-sign-out-alt"></i>&nbsp Logout</a></li>
				</ul>
	</div>
	<div class="col-xs-12 content-div">
			<jsp:include page="${content}"/>
		</div>
	<div class="col-xs-12 text-center">
				<h3>© 2018 RTVMS, All rights reserved</h3>
				</div>
				</div>
</body>
</html>