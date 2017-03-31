<jsp:include page="/WEB-INF/view/template/header.jsp"></jsp:include>
<%@page isELIgnored="false" %>



  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Product Detail</title>
  
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  </head>
 
  <body>
   <div class="container" id="product-section">

  <div class="row">
   <div class="col-md-5">
    <img src="resources/images/${productId}.jpg" class="image-responsive" height="300" width="300" border="1"/>
   </div>

   <div class="col-md-7">
   <div class="row">
   <div class="col-md-12">
   <h1>${productName}</h1>
   </div>
   </div>
   
   
  <div class="row">
 <div class="col-md-12">
  <span class="label label-primary">Category</span>
  <span class="monospaced">${product.category}</span>
 </div>
</div>






<div class="row">
 <div class="col-md-3">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">55</span>
 </div>
 <div class="col-md-3">
  <span class="monospaced">Write a Review</span>
 </div>
</div>
   
<div class="row">
 <div class="col-md-12 bottom-rule">
  <h2 class="product-price">${product.productPrice}</h2>
 </div>
</div>

<div class="row add-to-cart">
 <div class="col-md-3 product-qty">
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  </span>
 
 </div>

 <div class="col-md-9">
  <!-- <button class="btn btn-lg btn-brand btn-full-width">
   Add to Cart
  </button>
  -->   <a href="" 
  class="btn btn-lg btn-primary btn-full-width">add to cart
   <span class="glyphicon glyphicon-cart-in"></span>
  </a>
  
  </div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-4 text-center">
  <span class="monospaced">In Stock</span>
 </div>
 <div class="col-md-4 col-md-offset-1 text-center">
  <a class="monospaced" href="#">Add to Shopping List</a>
 </div>
 
</div><!-- end row -->
<div class="row">
 <div class="col-md-12 bottom-rule top-10"></div>
</div><!-- end row -->
</div>
</div>
</div>
<%-- <img src="resources/images/${p.id}.jpg" height="150" width="150"/>

${p.id}--%>

</body>
</html>
