<%@include file="header.jsp" %>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/image3.jpg" style="width:100%;height:550px" />
    </div>

    <div class="item">
      <img src="images/img2.jpg" style="width:100%;height:550px" />
    </div>

    <div class="item">
      <img src="images/img3.jpg" style="width:100%;height:550px" />
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

  <br>
<h2 class="fontstyle">Categories:</h2>
<div class="container-fluid">
<div id="categorys" class="row">
<c:forEach items="${categorylist}" var="category"> 
  <div class="col-md-4 col-sm-6">
  <div class="card" style="width:400px;padding:10px">
    <img class="card-img-top" src="images/img5.jpg" alt="Card image" style="width:100%">
	    <div class="card-body">
    		<h4 class="card-title">${category.cName}</h4>
      		<p class="card-text">${category.cDescription}</p>
      		<div class="display: inline;">
      			<a href="<c:url value="/managecategorys/${category.cName}"/>" class="btn btn-primary">View All</a>
      			<sec:authorize access="hasRole('ROLE_ADMIN')">
      			<a href="<c:url value="/deletecategory/${category.cId}"/>" class="btn btn-primary">Delete Category</a>
      			</sec:authorize>
      		</div>
    	</div>
  </div>
</div>
</c:forEach>
</div>
</div>
<br>

<%@include file="footer.jsp" %>

</body>
</html>