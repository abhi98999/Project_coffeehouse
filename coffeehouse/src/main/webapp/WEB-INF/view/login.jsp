<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>    
<jsp:include page="/WEB-INF/view/template/header.jsp" /> 

<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  <style>
body { 
	width: 100%;
	height:100%;
	font-family: 'Open Sans', sans-serif;
	background-image: url("bg3.jpg");
	background-size: 100%;
	background-repeat:no-repeat;
	
	
}
.login { 
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -150px;
	width:300px;
	height:300px;
}
.login h1 { color: brown; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

input { 
	width: 100%; 
	margin-bottom: 10px; 
	
	border: none;
	outline: none;
	padding: 10px;
	font-size: 14px;
	color: black;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }

    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
  <div class="login">
	<h1>Login</h1>
    <fm:form method="post" action="${pageContext.request.contextPath}/login" commandName="ulogin">
    	<fm:input type="text" path="userName" placeholder="Username" required="required" />
        <fm:input type="password" path="password" placeholder="Password" required="required" />
        <fm:button type="submit" class="btn btn-primary btn-block btn-large">LOGIN</fm:button>
        


   <p><a href="register">Register</a></p>
   <p><a href="#forgotpass">Forgot Password?</a></p>
		
		
    	
    </fm:form>
</div>



</body>


</html>


