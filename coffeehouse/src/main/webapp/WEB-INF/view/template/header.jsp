<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

   
    <script>function formSubmit()
 {
    document.getElementById("logout").submit();
    window.alert("LOGOUT SUCCESSFULL");

		 }
</script>
   
  <style>
  
  .active {
    background-color: #FFF;
    }

.navbar {
	  padding-top: 5px;
      padding-bottom: 5px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 14px !important;
      font-weight:bold;
      letter-spacing: 3px;
      z-index: 9999;
      line-height: 2 !important;
      font-family: Montserrat, sans-serif;   
  }
  .navbar-nav  li a:hover, .navbar-nav li.active a  {
      color: 	#8B4513 !important;
      background-color: #FFFAFA	 !important;
  }
  
  .navbar-inverse .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  
  
  </style>
</head>
<body>
<nav class="navbar navbar-inverse .navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home">COFFEE HOUSE</a>
    </div>
    <c:url value="/logout" var="logout" />
                <form action="${logout}" method="post" id="logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
     <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav ">
     <li class="active"><a href="${pageContext.request.contextPath}/index">HOME</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
        PRODUCTS
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="${pageContext.request.contextPath}/product/coffee beans">COFFEE BEANS</a></li>
          <li><a href="${pageContext.request.contextPath}/product/coffee powder">COFFEE POWDER</a></li>
          <li><a href="${pageContext.request.contextPath}/product/coffee mug">COFFEE MUG</a></li> 
          <li><a href="${pageContext.request.contextPath}/product/coffee machine">COFFEE MACHINE</a></li> 
          
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/aboutus">AboutUs</a></li>
     
     <ul class="nav navbar-nav navbar-right">
     
     <c:if test="${pageContext.request.userPrincipal.name != null}">
    				<security:authentication var="user" property="principal.authorities" />
					<security:authorize var="loggedIn" access="isAuthenticated()">
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li style="color:red">ADMIN</li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
					<li style="color:red">User</li>
					</security:authorize>
					</security:authorize>	 
					<li></li>
					<li></li>
					<li style="color:red"> Welcome  <i>${pageContext.request.userPrincipal.name}</i></li>
					<li> <a href="javascript:formSubmit()">Logout</a></li>
					</c:if>		
					
					
   <c:if  test="${pageContext.request.userPrincipal.name==null}">
   		
       <li><a href="${pageContext.request.contextPath}/login"><span
							class="glyphicon glyphicon-user"></span> Sign In</a></li>
       <li><a href="${pageContext.request.contextPath}/register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
   </c:if>
  </ul>
      </div>
  </div>
</nav>
</body></html>
