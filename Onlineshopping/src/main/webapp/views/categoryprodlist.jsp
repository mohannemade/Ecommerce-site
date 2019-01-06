<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewpx`ort" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- google-fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
<div class="row">
<c:forEach items="${list}" var="l">
	<div class="container">
	<div class="col-md-6">
		<h3 style="font-family: 'Roboto', sans-serif">${l.pName}</h3>
		<div class="col-md-12 col-md-offset-2">
		<img src="/Onlineshopping/getimg/${l.pId}" alt="Los Angeles" style="height:400px;width:400"/>
		</div>	
	</div>
	<div class="col-md-6">
		<br>
		<br>
		
		<h4><strong>Price:</strong> <span style="font-family: 'Anton', sans-serif">${l.pCost} Rs</span></h4>	
		<p>${l.pDescription}</p>
		<div class="inline">
			<a href="#" class="btn btn-primary">Edit info</a>
			<a href="<c:url value="/deleteproduct/${l.pId}/${l.cname}"/>" class="btn btn-primary">Delete</a>
			<a href="<c:url value="/cartadd/${l.pId}/${l.pName}"/>" class="btn btn-primary">Add to cart</a>
		</div>
	</div>
	</div>
	<hr>
</c:forEach>
</div>
</body>
</html>