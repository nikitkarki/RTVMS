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
<title>LookUp Ticket</title>
</head>
<body>
<div class="container col-xs-6 col-md-6 col-sm-6">
<form action="${pageContext.request.contextPath}/tickets/lookupticket" method="POST">
  <div class="form-group">
    <label for="LicenceNumber">Licence Number</label>
    <input type="text" class="form-control" name="licenceNumber" placeholder="Enter Licence Number">
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
					</tr>
			</c:forEach>
			</tbody>
		</table>
		<div class="text-danger">${ticketMessage}</div>
	</div>
	<div>
	<table border=2px>
	<tr>
		<th>Voilation No.</th>
		<th>Voilation type</th>
		<th>Voilation charge</th>
		<th>Voilation description</th>	
	</tr>
	<tr>
		<td>1</td>
		<td>Roadsigns</td>
		<td>500</td>
		<td>Failure to follow traffic lights</td>
	</tr>
		<tr>
		<td>2</td>
		<td>Roadsigns</td>
		<td>500</td>
		<td>Failure to follow road lane laws</td>
	</tr>
		<tr>
		<td>3</td>
		<td>Roadsigns</td>
		<td>500</td>
		<td>Failure to follow road lane laws</td>
	</tr>
		<tr>
		<td>4</td>
		<td>Roadsigns</td>
		<td>500</td>
		<td>Failure to follow road lane laws</td>
	</tr>
		<tr>
		<td>5</td>
		<td>Vehicle</td>
		<td>1000</td>
		<td>Vehicle Body Illegally Modified</td>
	</tr>
	<tr>
		<td>6</td>
		<td>Vehicle</td>
		<td>1000</td>
		<td>Passengers more than legally permitted</td>
	</tr>
	<tr>
		<td>7</td>
		<td>Vehicle</td>
		<td>500</td>
		<td>Violated Motorcycle Helmet policy</td>
	</tr><tr>
		<td>8</td>
		<td>Vehicle</td>
		<td>500</td>
		<td>Vehicle Lights Illegallly Modified/ Not in function</td>
	</tr><tr>
		<td>9</td>
		<td>Vehicle</td>
		<td>500</td>
		<td>Vehicle Number Plates not clear</td>
	</tr><tr>
		<td>10</td>
		<td>Vehicle</td>
		<td>500</td>
		<td>Vehicle Bluebook not carried</td>
	</tr><tr>
		<td>11</td>
		<td>Vehicle</td>
		<td>1500</td>
		<td>Public Vehicle not stopping at bus-stop for passengers</td>
	</tr><tr>
		<td>12</td>
		<td>Vehicle</td>
		<td>1500</td>
		<td>Operating Vehicle physically not safe in condition</td>
	</tr><tr>
		<td>13</td>
		<td>Driver</td>
		<td>1000</td>
		<td>Operating Vehicle without a License</td>
	</tr><tr>
		<td>14</td>
		<td>Driver</td>
		<td>1000</td>
		<td>Operating Vehicle without a valid License</td>
	</tr><tr>
		<td>15</td>
		<td>Driver</td>
		<td>5000</td>
		<td>Operating Vehicle under influence of alcohol</td>
	</tr><tr>
		<td>16</td>
		<td>Driver</td>
		<td>2000</td>
		<td>Operating Vehicle in a reckless manner</td>
	</tr><tr>
		<td>17</td>
		<td>Driver</td>
		<td>1000</td>
		<td>Overspeeding than the posted Speed Limit</td>
	</tr><tr>
		<td>18</td>
		<td>Driver</td>
		<td>1000</td>
		<td>Valid Bluebook not in possesion of driver</td>
	</tr>
</table>
	</div>
</div>
</body>
</html>