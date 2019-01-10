
<%@include file="header.jsp" %>

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
	<br>
	
<%@include file="footer.jsp" %>	
</body>
</html>