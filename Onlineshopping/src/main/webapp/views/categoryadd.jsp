
<%@include file="header.jsp" %>

<form class="form-horizontal" action="/Onlineshopping/categorysuccess">
  <div class="form-group">
    <label class="control-label col-sm-2">Category name:</label>
    <div class="col-sm-10 col-md-5">
      <input type="text" class="form-control" placeholder="Enter name" name="cName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Category Description:</label>
    <div class="col-sm-10 col-md-5">
      <input type="text" class="form-control" placeholder="Enter Description" name="cDescription">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">Submit</button>
      <a href="/Onlineshopping/home" class="btn btn-info" role="button">Home</a>
    </div>
  </div>
</form>
<h4>${message3}</h4>

<%@include file="footer.jsp" %>
</body>
</html>