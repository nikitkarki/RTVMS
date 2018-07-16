<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>LookUp User page</title>
<style>
	body{
	background-color:#AAB7B8;
}
</style>
</head>
<body>
	<div class="container" style="width: 25%; margin: 0px auto;">
	<br>
	 <form action="${pageContext.request.contextPath}/admin/lookupuser" method="POST">
	 	<div class="form-group row">
	 	<label>Search User by Fullname</label>
	 <input type="text" class="form-control" name="username" placeholder="Example John Doe"><br>
	 	<button type="submit" class="btn btn-primary">Submit</button>
	 	<a href="${pageContext.request.contextPath}/admin/home">Cancel</a>
	 </form>
	 <div class="col-xs-12">
	 	<table class="table table-striped table-hover table-bordered datatable">
			<thead>
				<tr>
					<th scope="col">User ID</th>
					<th scope="col">FirstName</th>
					<th scope="col">LastName</th>
					<th scope="col">Date Of Birth</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${searchedUser}">
					<tr>
						<td>${user.userId}</td>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.dateOfBirth}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
 	</div>
</body>
</html>