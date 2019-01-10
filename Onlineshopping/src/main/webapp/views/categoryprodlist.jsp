
<%@include file="header.jsp" %>

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
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a href="#" class="btn btn-primary">Edit info</a>
			<a href="<c:url value="/deleteproduct/${l.pId}/${l.cname}"/>" class="btn btn-primary">Delete</a>
		</sec:authorize>
			<a href="<c:url value="/cartadd/${l.pId}/${l.pName}"/>" class="btn btn-primary">Add to cart</a>
		</div>
	</div>
	</div>
	<hr>
</c:forEach>
</div>

<%@include file="footer.jsp" %>
</body>
</html>