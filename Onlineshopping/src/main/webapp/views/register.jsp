<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width = device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<form class="form-horizontal" action="/Onlineshopping/registersuccess">
  		<div class="form-group">
    		<label class="control-label col-sm-2">Username :</label>
   			<div class="col-sm-10">
      			<input type="text" class="form-control" placeholder="Enter username" name="username">
    		</div>
  		</div>
 		<div class="form-group">
    		<label class="control-label col-sm-2">Password :</label>
    		<div class="col-sm-10"> 
      			<input type="password" class="form-control" placeholder="Enter password" name="password">
   			</div>
  		</div>
  		<div class="form-group">
    		<label class="control-label col-sm-2">Enter email-id :</label>
    		<div class="col-sm-10"> 
      			<input type="email" class="form-control" placeholder="Enter email-id" name="email">
    		</div>
  		</div>
  		<div class="form-group">
    		<label class="control-label col-sm-2">User role</label>
   			<div class="col-sm-10"> 
      			<label class="radio-inline">
      				<input type="radio" name="role" value="ROLE_USER" checked>User
   				</label>
    			<label class="radio-inline">
      				<input type="radio" name="role" value="ROLE_ADMIN">Admin
    			</label>
    		</div>
  		</div>
  
  		<div class="form-group"> 
    		<div class="col-sm-offset-2 col-sm-10">
      			<button type="submit" class="btn btn-info">Submit</button>
      			<a href="/Onlineshopping/login" class="btn btn-info" role="button">Login</a>
    		</div>
  		</div>
	</form>
	<br>
	<h4>${msg}</h4>

</body>
</html>