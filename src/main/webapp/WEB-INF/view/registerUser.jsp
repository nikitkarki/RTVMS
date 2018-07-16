<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <form action="/" method="post">
        <h2 class="text-center">Registration form</h2>    
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
            First Name:<input type="text" class="form-control" placeholder="Enter First Name" required="required">
        </div>   
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
            Last Name:<input type="text" class="form-control" placeholder="Enter Last Name" required="required">
        </div>
        <div class="form-group col-xs-12">
            Date of Birth:<input type="text" class="form-control" placeholder="Enter Date of Birth" required="required">
        </div>
         <div class="form-group col-xs-12">
            Gender: <input type="radio" name="gender" value="male">Male
                    <input type="radio" name="gender" value="female">Female
        </div>
        <div class="form-group col-xs-12">
            Email:<input type="text" class="form-control" placeholder="Enter email" required="required">
        </div>
        <div class="form-group col-xs-12">
            Password:<input type="password" class="form-control" placeholder="Enter Password"  required="required">
        </div>
        <div class="form-group col-xs-12">
            Repeat password:<input type="password" class="form-control" placeholder="Repeat Password"  required="required">
        </div>
         <div class="form-group col-xs-12">
            Country:<input type="text" class="form-control" placeholder="Enter Country">
        </div>  
        <div class="form-group col-xs-12">
            District:<input type="text" class="form-control" placeholder="Enter District">
        </div>
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
            City:<input type="text" class="form-control" placeholder="Enter City">
        </div>
        <div class="form-group col-xs-6 col-md-6 col-sm-6">
            Ward:<input type="text" class="form-control" placeholder="Enter Ward">
        </div>
        <div class="form-group col-xs-12">
            Phone Number:<input type="text" class="form-control" placeholder="Enter Phone Number">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Register</button>
        </div>    
        </form>
        </div>
        </div>  
        </body>
        </html>