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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Customer registered successfully!</h1>
				</div>
			</div>
			</section>

			<section class="container">
			<p>
				<a href="<spring:url value="/" />" class="btn btn-default">Products</a>
			</p>
			</section>

		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</html>