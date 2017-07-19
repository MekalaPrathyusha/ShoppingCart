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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Customer Information Page</h1>

				<p class="lead">Here we can view the customer details.</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Username</th>
						<th>Enabled</th>

					</tr>
				</thead>
				<c:forEach items="${customerList}" var="customer">
					<tr>
						<td>${customer.customerName}</td>
						<td>${customer.customerEmail}</td>
						<td>${customer.customerPhone}</td>
						<td>${customer.username}</td>
						<td>${customer.enabled}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</html>