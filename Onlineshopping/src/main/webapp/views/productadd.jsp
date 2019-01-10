<%@include file="header.jsp" %>

<form class="form-horizontal" action="/Onlineshopping/productsuccess">
  <div class="form-group">
    <label class="control-label col-sm-2">Product name:</label>
    <div class="col-sm-10 col-md-5">
      <input type="text" class="form-control" placeholder="Enter name" name="pName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Product cost:</label>
    <div class="col-sm-10 col-md-5"> 
      <input type="text" class="form-control" placeholder="Enter cost" name="pCost">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Product description:</label>
    <div class="col-sm-10 col-md-5"> 
      <input type="text" class="form-control" placeholder="Enter product description" name="pDescription">
    </div>
  </div>

<div class="form-group">
     <label class="control-label col-sm-2" for="sel1">Select Category (select one):</label>
     <div class="col-sm-10 col-md-5"> 
     	<select class="form-control" id="sel1" name="cname">
      	<c:forEach items="${products}" var="p">
        	<option>${p.cName}</option>
        </c:forEach>
        </select>
     </div>
</div>s
 


  <div class="form-group">
    <label class="control-label col-sm-2">Product image:</label>
    <div class="col-sm-10 col-md-5"> 
      <input type="file" name="name" class="form-control">
      
    </div>
  </div>
  
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">Submit</button>
      <a href="/Onlineshopping/home" class="btn btn-info" role="button">Home</a>
    </div>
  </div>
</form>
<h4>${message1}</h4>
<br>
<%@include file="footer.jsp" %>

</body>
</html>