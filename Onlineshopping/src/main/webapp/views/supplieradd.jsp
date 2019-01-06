<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewpx`ort" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="//https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<form class="form-horizontal" action="/Onlineshopping/suppliersuccess">
  <div class="form-group">
    <label class="control-label col-sm-2">Supplier name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="Enter name" name="sName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Supplier Location:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" placeholder="Enter location" name="sLocation">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">Submit</button>
      <a href="/Onlineshopping/home" class="btn btn-info" role="button">Home</a>
    </div>
  </div>
</form>
<h4>${message2}</h4>
</body>
</html>