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
	$(document).ready(
			function() {
				var searchCondition = '${searchCondition}';

				$('.table').DataTable(
						{
							"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ],
									[ 1, 2, 3, 5, 10, "All" ] ],
							"oSearch" : {
								"sSearch" : searchCondition
							}
						});
			});
</script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

</head>
<body>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>All Products</h1>

				<p class="lead">Checkout all the awesome products available now!</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Photo Thumb</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th></th>
					</tr>
				</thead>
				<c:forEach items="${products}" var="product">
					<tr>
						<td><img
							src="<c:url value="/resources/images/${product.productId}.png" /> "
							alt="image" style="width: 100%" /></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productCondition}</td>
						<td>${product.productPrice}USD</td>
						<td><a
							href="<spring:url value="/product/viewProduct/${product.productId}" />"><span
								class="glyphicon glyphicon-info-sign"></span></a></td>
					</tr>
				</c:forEach>
			</table>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</html>