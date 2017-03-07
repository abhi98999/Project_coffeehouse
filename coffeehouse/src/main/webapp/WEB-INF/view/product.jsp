<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<h1>Product</h1> 
<br><i><u> You must enter a description for the product.</i></u><br>


<fm:form action="addproduct">
<table> 
<tr><td>NAME</td><td>:</td><td><input type="text" name="productName" size="15"></td></tr>
<tr><td>QUANTITY</td><td>:</td><td><input type="text" name="productQty" size="15"></td></tr>
<tr><td>PRICE</td><td>:</td><td><input type="text" name="productPrice" size="15"></td></tr>
<!-- <tr><td>IMAGE</td><td>:</td><td><input type="file" name="image" size="15"></td></tr> -->

</table>
<br><button type="submit">ADD PRODUCT</button>
</fm:form>
</body>
</html>