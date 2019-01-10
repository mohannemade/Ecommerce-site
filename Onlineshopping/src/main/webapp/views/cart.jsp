
<%@include file="header.jsp" %>

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
<br>
<%@include file="footer.jsp" %>
</body>
</html>