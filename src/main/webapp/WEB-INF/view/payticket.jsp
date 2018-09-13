<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Pay Ticket</title>
</head>
<body>
<div class="container col-xs-6 col-md-6 col-sm-6">
<form action="${pageContext.request.contextPath}/tickets/payticket" method="POST">
  <div class="form-group">
    <label for="License Number">License Number</label>
    <input type="text" class="form-control" name="licenseNumber" placeholder="Enter License Number">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <a href="/rtvms/home">Cancel</a>
</form>
<div class="col-xs-12">
	 	<table class="table table-striped table-hover table-bordered datatable">
			<thead>
				<tr>
					<th scope="col">Ticket ID</th>
					<th scope="col">FirstName</th>
					<th scope="col">LastName</th>
					<th scope="col">Date Of Birth</th>
					<th scope="col">Issue Date</th>
					<th scope="col">License Number</th>
					<th scope="col">Violation Number</th>
					<th scope="col">Pay?</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${searchedTicket}" var="ticket">
				<tr>
						<td>${ticket.ticketId}</td>
						<td>${ticket.firstName}</td>
						<td>${ticket.lastName}</td>
						<td>${ticket.dateOfBirth}</td>
						<td>${ticket.issueDate}</td>
						<td>${ticket.licenseNumber}</td>
						<td>${ticket.violation}</td>
						<td><a href="#">Pay Now</a></td>
					</tr>
			</c:forEach> 
			</tbody>
		</table>
		<div class="text-danger">${ticketMessage}</div>
	</div>
</div>
</body>
</html>