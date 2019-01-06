<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset = "utf-8">
<meta name="viewport" content="width = device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import font awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Insert title here</title>

<style>
/* for dropdowns */
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}

h2.fontstyle{
	font-style:italic;
	color:MediumSeaGreen;
	font-weight: bold;
}


</style>

</head>
<body style="background-color:#f2efef">
	
	<c:url value="/j_spring_security_logout" var="logoutUrl"/>
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
	<script>
		function formSubmit()
		{
			document.getElementById("logoutForm").submit();
		}
	</script>

	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
    		<div class="navbar-header">
     			 <a class="navbar-brand" style="color:#FFFFFF" href="#">Eco-Products</a>
  			</div>
    		<ul class="nav navbar-nav">
      			 <li><a href="#categorys" style="color:#FFFFFF">Shop by category</a></li>
      	    </ul>
      	    <form class="navbar-form navbar-left" action="/action_page.php">
      			<div class="form-group">
      				<input type="text" class="form-control" placeholder="Search">
      			</div>
      			<button type="submit" class="btn btn-default">Submit</button>
    		</form>
    		
      			 <sec:authorize access="hasRole('ROLE_ADMIN')">
      			 <ul class="nav navbar-nav">
   				 <li><a class="dropdown-toggle" data-toggle="dropdown" style="color:#FFFFFF">Manage Components<span class="caret"></span></a>
    				 	<ul class="dropdown-menu">
      						<li><a tabindex="-1" href="/Onlineshopping/manageproduct">Manage Product</a></li>
      						<li class="dropdown-submenu">
        						<a class="test" tabindex="-1" href="#">Manage Supplier <span class="caret"></span></a>
        						<ul class="dropdownmenu">
         							<li><a tabindex="-1" href="/Onlineshopping/addsupplier">Add Supplier</a></li>
          						</ul>
          					</li>
      						<li class="dropdown-submenu">
        						<a class="test" tabindex="-1" href="#">Manage Category<span class="caret"></span></a>
        						<ul class="dropdown-menu">
         							<li><a tabindex="-1" href="/Onlineshopping/categoryadd">Add Category</a></li>
          						</ul>
          					</li>
          				</ul>
          		</li>
          		</ul>
       		    </sec:authorize>
       			
			<ul class="nav navbar-nav navbar-right">
				<li><c:if test="${pageContext.request.userPrincipal.name != null}">
				<ul class="nav navbar-nav navbar-right">
						<li><a class="dropdown-toggle" data-toggle="dropdown" style="color:#FFFFFF"><span class="glyphicon glyphicon-user"></span> ${pageContext.request.remoteUser} </a>
						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="javascript:formSubmit()">Logout</a></li>
						</ul><li>
						<li><a href="/Onlineshopping/cart" style="color:#FFFFFF"><span class="glyphicon glyphicon-shopping-cart"></span> Cart </a></li>
				</ul>
				</c:if></li>
				<li><c:if test="${pageContext.request.userPrincipal.name == null}">
      				<ul class="nav navbar-nav navbar-right">
      					<li><a href="/Onlineshopping/register"><span class="glyphicon glyphicon-user" style="color:#FFFFFF"></span> Sign Up</a></li>
     					<li><a href="/Onlineshopping/login"><span class="glyphicon glyphicon-log-in" style="color:#FFFFFF"></span> Login </a></li>
     				</ul>
     			</c:if></li>
    		</ul>
  		</div>
	</nav>
	