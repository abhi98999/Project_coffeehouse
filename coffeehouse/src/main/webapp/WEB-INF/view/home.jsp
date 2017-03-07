	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="/WEB-INF/view/template/header.jsp" %>

<html lang="en">
<head>
  <title>COFFEE HOUSE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/logincheck.js"></script>
  
  <style>
    .jumbotron {
	 background-image:url("resources/images/coffee_head.png");
	 background-position:right top;
	 background-size: 1000px 245px;
	 background-repeat: no-repeat;	
      margin-bottom: 10px;
    
   
   

  </style>
</head>
<body background="resources/images/bg3.jpg">

<div class="jumbotron" >
  <div class="container text-center">
    <h1 style="color:brown">COFFEE HOUSE</h1>      
    <p style="color:"black"	">A LOT CAN HAPPEN OVER A CUP OF COFFEE</p>
  </div>
</div>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">COFFEE MUGS </div>
        <div class="panel-body"><img src="resources/images/mug.jpg" class="img-responsive" style="width:200px" alt="Image"></div>
        <div class="panel-footer">BUY 1 Get 1 Free!!</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">COFFEE SEEDS</div>
        <div class="panel-body"><img src="resources/images/seeds.jpg" class="img-responsive" style="width:400px " alt="Image"></div>
        <div class="panel-footer">50% off on COFFEE SEEDS</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">COFFEE POWDER</div>
        <div class="panel-body"><img src="C:\Users\abhishek jain\PROJECT_WORKSPACE\coffeehouse\src\main\webapp\WEB-INF\resources\images\powder.jpg" class="img-responsive" style="width:180px" alt="Image"></div>
        <div class="panel-footer">25% off on Best Quality Coffee Powder</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">COFFEE MAKER</div>
        <div class="panel-body"><img src="resources/images/machine.jpg" class="img-responsive" style="width:200px" alt="Image"></div>
        <div class="panel-footer">Let The Machine Make Your Day</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">COMBO DEALS</div>
        <div class="panel-body"><img src="resources/images/combo.png" class="img-responsive" style="width:169px" alt="Image"></div>
        <div class="panel-footer">Buy A Complete set and avail 20%</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">SPECIAL OFFERS</div>
        <div class="panel-body"><img src="resources/images/deals.jpg" class="img-responsive" style="width:166px" alt="Image"></div>
        <div class="panel-footer">Check For the Special Offers for You</div>
      </div>
    </div>
  </div>
</div><br><br>



</body>
<%@ include file="/WEB-INF/view/template/footer.jsp" %>

</html>
