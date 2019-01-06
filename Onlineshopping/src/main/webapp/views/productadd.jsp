<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset = "utf-8">
<meta name="viewport" content="width = device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id="navb">

</div>
<script>
$(function(){
  $("#navb").load("header.jsp");
});
</script>

<form class="form-horizontal" action="/Onlineshopping/productsuccess">
  <div class="form-group">
    <label class="control-label col-sm-2">Product name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="Enter name" name="pName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Product cost:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" placeholder="Enter cost" name="pCost">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Product description:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" placeholder="Enter product description" name="pDescription">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Category name</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" placeholder="Enter category name" name="cname">
    </div>
  </div>


  <div class="form-group">
    <label class="control-label col-sm-2">Product image</label>
    <div class="col-sm-10 col-md-5"> 
      <input type="file" name="name" class="form-control">
      
    </div>
  </div>
  
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">Submit</button>
      <a href="/Onlineshopping/home" class="btn btn-info" role="button">Home</a>
    </div>
  </div>
</form>
<h4>${message1}</h4>
</body>
</html>