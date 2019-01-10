<%@include file="header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	  $.ajax({
		  url: '/Onlineshopping/getproducts',
		  method: 'get',
		  dataType: 'json',
		  success: function (data) {
			  $('#myTable').dataTable({
				  data: data,
				  columns: [
					  { 'data': 'pId' },
					  { 'data': 'pName'},
					  { 'data': 'pCost'},
					  { 'data': 'pDescription'},
				  ]
			  });
		  }
		  
	  });
	  
});
</script>
<style>
body {
	background-color:#FFFFFF;
}
</style>
	<h3 style="padding:5px;text-decoration:underline"><Strong>Product List</Strong></h3>
	<p style="padding:5px">(Product can be edited or deleted only in category mode)</p>
	
	<table id="myTable" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Product Id</th>	
				<th>Product Name</th>
				<th>Product Cost</th>
				<th>Product Description</th>
			</tr>
		</thead>
	</table>
	<br>
	<div class="inline">
	<h4 style="padding:5px"><Strong>To add product click here: </Strong><a href="/Onlineshopping/addProduct">ADD</a></h4>
	</div>
	
<br>
<%@include file="footer.jsp" %>
</body>
</html>