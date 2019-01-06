<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset = "utf-8">
<meta name="viewport" content="width = device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<form class="form-horizontal" action="/Onlineshopping/categorysuccess">
  <div class="form-group">
    <label class="control-label col-sm-2">Category name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="Enter name" name="cName">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">Submit</button>
      <a href="/Onlineshopping/home" class="btn btn-info" role="button">Home</a>
    </div>
  </div>
</form>
<h4>${message3}</h4>
</body>
</html>