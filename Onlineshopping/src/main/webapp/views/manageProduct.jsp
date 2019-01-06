<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<title>Insert title here</title>
</head>
<body>

	<h2 style="padding:5px"><Strong>Product List</Strong></h2>
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
	<h4 style="padding:5px"><Strong>To add product click here</Strong><a href="/Onlineshopping/addProduct">ADD</a></h4>
	</div>
</body>
</html>