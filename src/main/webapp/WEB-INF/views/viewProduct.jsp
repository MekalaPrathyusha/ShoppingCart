<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<style>
body {
	background-color: cyan;
}
</style>

<html>
<head>

<script>
	$('#zoom').elevateZoom({
		zoomType : "inner",
		cursor : "crosshair",
		zoomWindowFadeIn : 500,
		zoomWindowFadeOut : 750
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Product Detail</h1>

				<p class="lead">Here is the detail information of the product!</p>
			</div>

			<div class="container" ng-app="cartApp">
				<div class="row">
					<div class="col-md-5" id="zoom">
						<img
							src="<c:url value="/resources/images/${product.productId}.png" /> "
							, data-zoom-image=" <c:url value="/resources/images/${product.productId}.png" />"
							alt="image" style="width: 100%" />
					</div>


					<div class="col-md-5">
						<h3>${product.productName}</h3>
						<p>${product.productDescription}</p>
						<p>
							<strong>Manufacturer</strong> : ${product.productManufacturer}
						</p>
						<p>
							<strong>Category</strong> : ${product.productCategory}
						</p>
						<p>
							<strong>Condition</strong> : ${product.productCondition}
						</p>
						<h4>${product.productPrice}</h4>

						<br>


						<c:set var="role" scope="page" value="${param.role}" />
						<c:set var="url" scope="page" value="/product/productList" />
						<c:if test="${role='admin'}">
							<c:set var="url" scope="page" value="/admin/productContalog" />
						</c:if>

						<p ng-controller="cartCtrl">
							<a href="<c:url value="${url}" />" class="btn btn-default">Back</a>
							<a href="#" class="btn btn-warning btn-large"
								ng-click="addToCart('${product.productId}')"><span
								class="glyphicon glyphicon-shopping-cart"></span>Order Now</a> <a
								href="<spring:url value="/customer/cart" />"
								class="btn btn-default"><span
								class="glyphicon glyphicon-hand-right"></span>View Cart</a>
						</p>
					</div>
				</div>
			</div>
			<br> <br>
		</div>
	</div>

	<br>
	<br>


	<script src="https://code.jquery.com/jquery-2.1.3.js"
		integrity="sha256-goy7ystDD5xbXSf+kwL4eV6zOPJCEBD1FBiCElIm+U8="
		crossorigin="anonymous"></script>
	<script src='jquery.elevateZoom-2.1.0.min.js'></script>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>

</body>
<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>


