<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewpx`ort" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width:8%;
}
</style>
</head>
<body>

	<br>
	<br>
	<div class="container">
	<h1 style="text-align:center">Your Order Is Confirmed!</h1>
	<p style="text-align:center">Order Id:#1024103</p>
<!-- 	<img alt="no image" src="images/checked.jpg" class="center"> -->
	<p style="text-align:center"><i class="fa fa-check" style="font-size:50px;color:green;"></i></p>
	
		<div class="row">
		<div class="col-md-6 ">
		<div class="col-md-offset-2">
			<br>
			<br>
			<h3><strong>Shipping to:</strong></h3>
			<h4>Mr. <%=request.getParameter("firstname") %></h4>
			<h4><%=request.getParameter("address") %></h4>
			<h4><%=request.getParameter("city") %> <%=request.getParameter("state") %> <%=request.getParameter("zip") %></h4>
		</div>	
		</div>
		<div class="col-md-6">
		<div class="col-md-offset-2">
			<br>
			<br>
			<h3><strong>Payment Details:</strong></h3>
			<h4>Payment by :<%=request.getParameter("cardname") %></h4>
			<h4>Total payment :${price} Rs</h4>
		</div>
		</div>
		</div>
	</div>
	
	
</body>
</html>