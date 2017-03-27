<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page isELIgnored="false" %>
<jsp:include page="/WEB-INF/view/template/header.jsp" /> 
 <!DOCTYPE html>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>

<div ng-app="myApp" ng-controller="namesCtrl"  >

<p>Type a letter in the input field:</p>

<p><input type="search" ng-model="searchText" placeholder="search here" class="form-control"></p>


 <div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <caption>{{prod.category}}</caption>
    <thead style="color:#CD5C5C">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Category</th>
        <th>Price</th>
        <th>More</th>
    </tr>
    </thead>
    <tbody>
    
        <tr ng-repeat="p in prod|filter:searchText">
            <td>{{p.productId}} </td>
            <td>{{p.productName}}</td>
            <td>{{p.category}}</td>
            <td>{{p.productPrice|currency}}</td>        
         
       <td><form action="${pageContext.request.contextPath}/productdescription" method="post">
     <input type="hidden" name="pid" value={{p.productId}}>
       <input type="hidden" name="name" value={{p.productName}}>
        <input type="hidden" name="price" value={{p.productPrice}}>
            <input type="hidden" name="category" value={{p.category}}>
            <input type="hidden" name="image" value={{p.image}}>
     <input type="submit" value="click">
</form>
     </td>
    </tr>   
         
        </tbody>
    </table>
</div>
</div>

<script>
angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.prod = ${jsonproduct};
});
</script>
</body>
</html>

 