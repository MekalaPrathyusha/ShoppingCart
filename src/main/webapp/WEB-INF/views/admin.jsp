<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				<center>
					<h1>Administrator page</h1>
				</center>
			</div>

			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<h2>
					Welcome: ${pageContext.request.userPrincipal.name} | <a
						href="<c:url
                value="/j_spring_security_logout" />">Logout</a>
				</h2>
			</c:if>

			<br> <br>

			<h3>
				<a href="<c:url value="/admin/productContalog" />">Product
					Contalog</a>
			</h3>

			<p>To view, check and update the list of items!!</p>

			<br> <br>

			<h3>
				<a href="<c:url value="/admin/customer" />">Customer Information</a>
			</h3>

			<p>Here you can get the entire customer details!</p>
</body>
<br>
<br>
<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>