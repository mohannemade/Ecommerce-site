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
<title>Insert title here</title>

<!-- google-fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">

<script src="./src/bootstrap-input-spinner.js"></script>
<script type="text/javascript">


  $(function () {
    var spinner = $("#spinner1").spinner({
        step: 1 ,
        spin: function( event, ui ){
            handleSpinnerValue(ui.value);
        }
    });
});
function handleSpinnerValue(txtValue)
{
	window.location.href = "/Onlineshopping/spinner/${txtValue}";
}  
    
</script>

</head>
<body>
<div class="container-fluid">
<h2 style="padding:5px">Your Cart</h2>
<div class="row">
	<c:set var="sum" value="${0}"/>
	<c:forEach items="${cartlist}" var="l">	
	<c:set var="sum" value="${sum+l.itemPrice}"/>
		<div class="container">
		<div class="col-md-6">
			<h3 style="font-family: 'Roboto', sans-serif">${l.itemName}</h3>
			<div class="col-md-12 col-md-offset-2">
			<img src="/Onlineshopping/getcartimg/${l.itemId}" alt="Los Angeles" style="height:200px;width:300"/>	
			</div>	
		</div>
		<div class="col-md-6">	
			<br>
			<br>
			<h4><strong>Price:</strong> <span style="font-family: 'Anton', sans-serif">${l.itemPrice} Rs</span></h4>
			<p>Will shipped till January</p>	
			
			<p><strong>Quantity:</strong> <input type="number" id="spinner1" value="${l.itemQuantity}" onchange="selFirt()"></p>
			<a href="<c:url value="/removeitem/${l.itemId}"/>" class="btn btn-primary">Remove</a>
		</div>
		</div>
		<hr>
	</c:forEach>
</div>
<c:if test="${sum==0}">
	<h4>No items available in your cart</h4>
</c:if>
<hr>
<div class="container">
<h3>Total price : <c:out value = "${sum}"/></h3>
<div class="inline">
	<a href="<c:url value="/home"/>" class="btn btn-primary">Continue Shopping</a>
	<a href="<c:url value="/checkout/${sum}"/>" class="btn btn-primary">Checkout</a>
</div>	
</div>
</div>
</body>
</html>