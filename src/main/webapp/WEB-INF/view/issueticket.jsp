<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Issue Ticket</title>
<style>
body{
	background-color:#AAB7B8;
	}
	 .registration-form {
        width: 500px;
        margin: 50px auto;
    }
    .registration-form form {
        margin-bottom: 15px;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
        background:#f2f2f2;
    }
    .registration-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
     a{
       text-decoration:underline;
       color:black; 
         }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="container">
        <div class="registration-form">
        <form:form action="${pageContext.request.contextPath}/user/issueticket" method="post" modelAttribute="myTicketForm">
        <h2 class="text-center">Issue Ticket</h2>    
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
            <label class="control-label" for="">First Name:</label>
            <form:input path="firstName" class="form-control" type="text" placeholder="Enter First Name" required="required" />
        </div>   
         <div class="form-group col-xs-6 col-md-6 col-sm-6">
            <label class="control-label" for="">Last Name:</label>
            <form:input path="lastName" class="form-control" type="text" placeholder="Enter Last Name" required="required" />
        </div>   
         <div class="form-group col-xs-6 col-md-6 col-sm-6">
            <label class="control-label" for="">License Number:</label>
            <form:input path="licenseNumber" class="form-control" type="text" placeholder="Enter License number" required="required" />
            </div>
              <div class="form-group col-xs-6 col-md-6 col-sm-6">
            <label class="control-label" for="">Date of Birth:</label>
            <form:input path="dateOfBirth" class="form-control" type="text" placeholder="Enter Date of Birth" required="required" />
        </div>   
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Search</button>
			</div>   
			<h2 style="color:green;" class="text-center">${lookupmessage}</h2>     
        </form:form>
        </div>
	</div>
</body>
</html>