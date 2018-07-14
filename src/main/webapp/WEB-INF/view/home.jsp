<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
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
					<li><a href="${pageContext.request.contextPath}/home"><i class="fas fa-home"></i>&nbspHome</a></li>
					<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fas fa-ticket-alt"></i>&nbspManage Tickets <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath}/tickets/lookupticket"><i class="fas fa-search"></i>&nbspLookup Ticket</a></li>
                <li><a href="${pageContext.request.contextPath}/tickets/payticket"><i class="fas fa-money-bill"></i>&nbspPay Ticket</a></li>
                </ul></li>
					<li><a href="${pageContext.request.contextPath}/contact"><i class="fas fa-phone"></i>&nbspContact Us</a></li>
					<li><a href="${pageContext.request.contextPath}/about"><i class="fas fa-file-alt"></i>&nbspAbout Us</a></li>
				</ul>
			</div>
			<div>
				<h1>Welcome to RTVMS web page</h1>
				<p>Here you can view your ticket and pay ticket online.</p>
			</div>
			<div class="col-xs-12">
				<jsp:include page="${content}"/>
			</div>
			
		</div>
		
		
	</div>
	</nav>
</body>
</html>