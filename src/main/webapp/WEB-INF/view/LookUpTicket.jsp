<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<form>
  <div class="form-group">
    <label for="TicketNumber">Ticket Number</label>
    <input type="number" class="form-control" id="ticketNumber" placeholder="Enter Ticket Number">
  </div>
  <div class="form-group">
    <label for="DOB">Date Of Birth</label>
    <input type="date" class="form-control" id="DOB" placeholder="Enter date of birth">
  </div>
  <div class="form-group">
  	<label for="LicenseNumber">License Number</label>
    <input type="number" class="form-control" id="licenseNumber" placeholder="Enter License number">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <a href="index.jsp">Cancel</a>
</form>
</body>
</html>