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

<%--Jquery--%>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

<%--Data Table--%>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<script>
	$(document).ready(
			function() {

				$('.table').DataTable(
						{
							"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ],
									[ 1, 2, 3, 5, 10, "All" ] ]
						});
			});
</script>

<!-- <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="table-responsive">
		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<h1>Product Contalog</h1>

					<p class="lead">Here you can get the product list of
						information with the best prices !!!</p>
				</div>

				<table class="table table-striped table-hover">
					<thead>
						<tr class="success">
							<th>Photo Thumb</th>
							<th>Product Name</th>
							<th>Category</th>
							<th>Condition</th>
							<th>Price</th>
							<th>View/Delete/Edit</th>
						</tr>
					</thead>
					<tbody>
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
										class="glyphicon glyphicon-info-sign"></span></a> <a
									href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span
										class="glyphicon glyphicon-remove"></span></a> <a
									href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span
										class="glyphicon glyphicon-pencil"></span></a></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>

				<a href="<spring:url value="/admin/product/addProduct" />"
					class="btn btn-primary">Add Product</a>

			</div>
		</div>
	</div>

</body>
<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>