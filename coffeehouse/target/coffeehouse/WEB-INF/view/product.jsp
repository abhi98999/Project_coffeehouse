<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/template/header.jsp" /> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<h1>Product</h1> 
<br><i>You must enter a description for the product.</i><br>

<fm:form action="${pageContext.request.contextPath}/admin/adminP" method="post" enctype="multipart/form-data" commandName="product">  
<table >
	<c:if test="${! empty product.productName }">
	<tr><td>ID</td><td>:</td><td><fm:input type="text" path="productId" size="15" readonly="true" /></td></tr>
</c:if>

<tr><td>NAME</td><td>:</td><td><fm:input type="text" path="productName" size="15" /></td></tr>
<tr><td>CATEGORY</td><td>:</td>
			<td>
			<fm:select path="category">
				<fm:option value="" label="--- Select ---" />
				<fm:option value="coffee beans">COFFEE BEANS</fm:option>  
                <fm:option value="coffee powder">COFFEE POWDER</fm:option>  
                <fm:option value="coffee mug">COFFEE MUG</fm:option>  
                <fm:option value="coffee machine">COFFEE MACHINES</fm:option>  
                
            </fm:select>
		</td>
	</tr>
<tr><td>QUANTITY</td><td>:</td><td><fm:input type="text" path="productQty" size="15" /></td></tr>
<tr><td>PRICE</td><td>:</td><td><fm:input type="text" path="productPrice" size="15" /></td></tr>
<tr><td>IMAGE</td><td>:</td><td><fm:input type="file" path="image" /></td></tr> 
 <tr>
        <td colspan="2">
        	<c:if test="${!empty product.productName}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.productName}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
        	</c:if>
</td></tr></table>
</fm:form>
<br>
<c:if test="${!empty listProduct}">PRODUCT LIST
	<div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <thead>
    <tr>
    	<th>ID</th>
        <th>Name</th>
        <th>Category</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <c:forEach items="${listProduct}" var="pd">
        <tr>
            <td>${pd.productId}</td>
            <td>${pd.productName}</td>
            <td>${pd.category}</td>
            <td>${pd.productQty}</td>
            <td>${pd.productPrice}</td>
            <td><a href="<c:url value='/edit/${pd.productId}' />" >Edit</a></td>
            <td><a href="<c:url value='/delete/${pd.productId}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
    </table>
 </div></c:if>
</body>
</html>