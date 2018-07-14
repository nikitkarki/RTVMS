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
<div class="container col-xs-6 col-md-6 col-sm-6">
<form>
  <div class="form-group">
    <label for="TicketNumber">Ticket Number</label>
    <input type="text" class="form-control" id="ticketNumber" placeholder="Enter Ticket Number">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <a href="/rtvms/home">Cancel</a>
</form>
</div>
</body>
</html>