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
<!-- for login page -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- for thankyou.jsp -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import font awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- google-fonts for categoryprodlist-->
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">

<!-- google-fonts for cart.jsp-->
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">

<!-- for datatables -->
<link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="//https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>

<title>Insert title here</title>

<style>

/* for thankyou.jsp */

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width:8%;
}

/* for login page */

.login-form{ text-align:center;
background-color: #f2f2f2;
padding: 20px;
}

.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}

.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
	
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}

.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}

.forgot {
  text-align: left; margin-bottom:30px;
  
.login-form .form-group {
  margin-bottom:10px;
}


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
<body style="background-color:#f2efef" onload='document.loginForm.username.focus();'>

	
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
	
	<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>
	

	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
    		<div class="navbar-header">
     			 <a class="navbar-brand" style="color:#FFFFFF" href="/Onlineshopping/home">Eco-Products</a>
  			</div>
    		<ul class="nav navbar-nav">
      			 <li><a href="#categorys" style="color:#FFFFFF">Shop by category</a></li>
      	    </ul>
      	    <form class="navbar-form navbar-left" action="#">
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
        						<ul class="dropdown-menu">
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
						</ul>
						<li><a href="/Onlineshopping/cart" style="color:#FFFFFF"><span class="glyphicon glyphicon-shopping-cart"></span> Cart </a></li>
				</ul>
				</c:if></li>
				<li><c:if test="${pageContext.request.userPrincipal.name == null}">
      				<ul class="nav navbar-nav navbar-right">
      					<li><a href="/Onlineshopping/register"><span class="glyphicon glyphicon-user" style="color:#FFFFFF"></span> Sign Up</a></li>
     					<li><a href="/Onlineshopping/login"><span class="glyphicon glyphicon-log-in" style="color:#FFFFFF"></span> Login<span> </span></a></li>
     				</ul>
     			</c:if></li>
    		</ul>
  		</div>
	</nav>
	
	