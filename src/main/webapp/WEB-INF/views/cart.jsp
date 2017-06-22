<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<style>
body {
	background-color: cyan;
}
</style>
<html>
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<section>
			<div class="container">
				<h1>Cart</h1>

				<br>

				<h6>
					<p>Shopping cart is to store a list of your selected items with
						the best price</p>
				</h6>
			</div>
		</div>

		<br> <br>

		</section>

		<section class="container" ng-app="cartApp">
		<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
			<div>
				<a class="btn btn-danger pull-left" ng-click="clearCart()"> <span
					class="glyphicon glyphicon-remove-sign"></span>Clear Cart
				</a> <a href="<spring:url value="/order/${cartId}"/>"></a> <a
					href="<spring:url value="/Check out" />"
					class="btn btn-success pull-right"> <span
					class="glyphicon-shopping-cart glyphicon"></span>>Check out
				</a>
			</div>

			<table class="table table-condensed">
				<tr>
					<th>Product</th>
					<th>Unit Price</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Action</th>
				</tr>

				<tr ng-repeat="item in cart.cartItems">
					<td>{{item.product.productName}}</td>
					<td>{{item.product.productPrice}}</td>
					<td>{{item.quantity}}</td>
					<td>{{item.totalPrice}}</td>
					<td><a href="#" class="label label-danger"
						ng-click="removeFromCart(item.product.productId)"> <span
							class="glyphicon glyphicon-remove"></span>remove
					</a></td>
				</tr>
				<tr>
					<th></th>
					<th></th>
					<th>Grand Total</th>
					<th>{{calGrandTotal()}}</th>
					<th></th>
				</tr>
			</table>

			<a href="<spring:url value="/" />" class="btn btn-default">Continue
				Shopping</a>
		</div>
		</section>

	</div>
	</div>

</body>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</html>