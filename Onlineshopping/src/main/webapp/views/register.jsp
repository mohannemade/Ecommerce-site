<%@include file="header.jsp" %>

	<form class="form-horizontal" action="/Onlineshopping/registersuccess">
  		<div class="form-group">
    		<label class="control-label col-sm-2">Username :</label>
   			<div class="col-sm-10 col-md-5">
      			<input type="text" class="form-control" placeholder="Enter username" name="username">
    		</div>
  		</div>
 		<div class="form-group">
    		<label class="control-label col-sm-2">Password :</label>
    		<div class="col-sm-10 col-md-5"> 
      			<input type="password" class="form-control" placeholder="Enter password" name="password">
   			</div>
  		</div>
  		<div class="form-group">
    		<label class="control-label col-sm-2">Enter email-id :</label>
    		<div class="col-sm-10 col-md-5"> 
      			<input type="email" class="form-control" placeholder="Enter email-id" name="email">
    		</div>
  		</div>
  		<div class="form-group">
    		<label class="control-label col-sm-2">User role</label>
   			<div class="col-sm-10"> 
      			<label class="radio-inline">
      				<input type="radio" name="role" value="ROLE_USER" checked>User
   				</label>
    			<label class="radio-inline">
      				<input type="radio" name="role" value="ROLE_ADMIN">Admin
    			</label>
    		</div>
  		</div>
  
  		<div class="form-group"> 
    		<div class="col-sm-offset-2 col-sm-10">
      			<button type="submit" class="btn btn-info">Submit</button>
      			<a href="/Onlineshopping/login" class="btn btn-info" role="button">Login</a>
    		</div>
  		</div>
	</form>
	<br>
	<h4>${msg}</h4>
<br>

<%@include file="footer.jsp" %>
</body>
</html>