<%@include file="header.jsp" %>

	<form class="form-horizontal" action="/Onlineshopping/suppliersuccess">
  <div class="form-group">
    <label class="control-label col-sm-2">Supplier name:</label>
    <div class="col-sm-10 col-md-5">
      <input type="text" class="form-control" placeholder="Enter name" name="sName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Supplier Location:</label>
    <div class="col-sm-10 col-md-5"> 
      <input type="text" class="form-control" placeholder="Enter location" name="sLocation">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">Submit</button>
      <a href="/Onlineshopping/home" class="btn btn-info" role="button">Home</a>
    </div>
  </div>
</form>
<h4>${message2}</h4>
<br>

<%@include file="footer.jsp" %>
</body>
</html>