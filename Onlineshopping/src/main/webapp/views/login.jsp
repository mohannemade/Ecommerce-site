
		
<%@include file="header.jsp" %>

<div class="login-form">
	<div class="main-div">
		 <div class="panel">
   			<h2>Login Form</h2>
   			<p>Please enter your username and password</p>
  		 </div>
		 <form id="Login" name="loginForm" action="<c:url value='/j_spring_security_check'/>" method="post">

        	<div class="form-group">
           		<input type="text" name="username" class="form-control" id="inputEmail" placeholder="Username">
        	</div>
        	<div class="form-group">
            	<input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password">
        	</div>
        	<div class="forgot">
        		<a href="#">Forgot password?</a>
			</div>
        	<button name="submit" type="submit" value="submit" class="btn btn-primary">Login</button>
        	<span></span>
        	<a href="/Onlineshopping/home" style="text-decoration: underline;">Home</a>
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        	
        	<c:if test="${not empty error}">
			<div>${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
			<div>${msg}</div>
			</c:if>

    	 </form>
		 </div>
	</div>
	
<%@include file="footer.jsp" %>
</body>
</html>