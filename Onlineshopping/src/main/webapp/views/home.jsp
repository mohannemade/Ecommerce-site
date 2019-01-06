

<%@include file="header.jsp" %>

<%-- <jsp:include page="header.jsp" /> --%>

<div id="myCarousel" class="carousel slide" data-ride="carousel" style="padding:0px">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/img1.jpg" style="width:100%;height:550px" />
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
      		<p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
      		<div class="display: inline;">
      			<a href="<c:url value="/managecategorys/${category.cName}"/>" class="btn btn-primary">View All</a>
      			<a href="<c:url value="/deletecategory/${category.cId}"/>" class="btn btn-primary">Delete Category</a>
      			<a id="delete"  class="btn btn-primary">Delete1</a>
      		</div>
    	</div>
  </div>
</div>
</c:forEach>
</div>
</div>
<!-- footer -->
<br>
<footer class="page-footer" style="background-color:#212121">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h3  style="color:#FFFFFF">Footer Content</h3>
          <p style="color:#FFFFFF">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat</p>
        </div>
        <div class="col-md-3">
          <h3 style="color:#FFFFFF">Links</h3>
          <ul>
            <li><a href="#!" style="color:#4169E1"><i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i></a></li>
            <li><a href="#!" style="color:#4169E1"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a></li>
            <li><a href="#!" style="color:#4169E1"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
            <li><a href="#!" style="color:#4169E1"><i class="fa fa-behance-square fa-2x" aria-hidden="true"></i></a></li>
            <li><a href="#!" style="color:#4169E1"><i class="fa fa-dribbble fa-2x" aria-hidden="true"></i></a></li>
          </ul>
        </div>
        
        <div class="col-md-3">
        	<h3 style="color:#FFFFFF">Let us help you</h3>
        	<ul>
        	<li><p style="color:#FFFFFF">Lorem ipsum dolor sit amet</p></li>
        	<li><p style="color:#FFFFFF">ipsum dolort</p></li>
        	<li><p style="color:#FFFFFF">Lorem dolor sit amet</p></li>
        	<li><p style="color:#FFFFFF">dolor sit amet</p></li>
        	</ul>
        </div>
      </div>
    </div>
    <div style="color:#FFFFFF">
      <div class="container">
          <p class="text-center">© 2014 Copyright Text</p>
      </div>
    </div>
  </footer>
<!-- footer ends -->
<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>

</body>
</html>