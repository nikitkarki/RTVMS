<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
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
        <form:form action="${pageContext.request.contextPath}/admin/registeruser" method="post" modelAttribute="registrationForm">
        <h2 class="text-center">Registration form</h2>    
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
            <label class="control-label" for="">First Name:</label>
            <form:input path="firstName" class="form-control" type="text" placeholder="Enter First Name" required="required" />
        </div>   
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
            <label class="control-label" for="">Last Name:</label>
         	<form:input path="lastName" class="form-control" type="text" placeholder="Enter Last Name" required="required" />
        </div>
        <div class="form-group col-xs-12">
        <label class="control-label" for="">Date of Birth:</label>
        <form:input path="dateOfBirth" class="form-control" type="text" placeholder="Enter Date of Birth" required="required" />
        </div>  
        <div class="form-group col-xs-12">
            <label class="control-label" for="">Email:</label>
            <form:input path="email"  class="form-control" type="text" placeholder="Enter email" required="required"/>
        </div>
        <div class="form-group col-xs-12">
        <label class="control-label" for="">Password:</label>
        <form:input path="password" class="form-control" type="password" placeholder="Enter Password"  required="required"/>
        </div>
         <div class="form-group col-xs-12">
         <label class="control-label" for="">Country:</label>
         <form:input path="address.country" class="form-control" type="text" placeholder="Enter Country"/>
        </div>  
        <div class="form-group col-xs-12">
        <label class="control-label" for="">District:</label>
        <form:input path="address.district" class="form-control" type="text" placeholder="Enter District"/>
        </div>
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
        <label class="control-label" for="">City:</label>
        <form:input path="address.city" class="form-control" type="text" placeholder="Enter City"/>
        </div>
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
        <label class="control-label" for="">Ward:</label>
        <form:input path="address.wardNumber" class="form-control" type="text" placeholder="Enter Ward"/>
        </div>
        <div class="form-group col-xs-12">
        <label class="control-label" for="">Phone Number:</label>
        <form:input path="phoneNo" type="text" class="form-control" placeholder="Enter Phone Number"/>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Register</button>
        </div>    
        </form:form>
        </div>
        </div>  
        </body>
        </html>