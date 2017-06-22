<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				<h1>Register Customer</h1>

			</div>

			<form:form action="${pageContext.request.contextPath}/register"
				method="post" commandName="customer">

				<h3>Basic Info</h3>

				<br>

				<div class="form-group">
					<label for="name"><span class="glyphicon glyphicon-user"></span>
						Name </label>
					<form:errors path="customerName" cssStyle="color: #ff0000" />
					<input type="customerName" class="form-control" id="name" />
				</div>

				<div class="form-group">
					<label for="email"><span
						class="glyphicon glyphicon-envelope"></span> Email </label> <span
						style="color: #ff0000">${emailMsg}</span>
					<form:errors path="customerEmail" cssStyle="color: #ff0000" />
					<input type="customerEmail" class="form-control" id="email" />
				</div>

				<div class="form-group">
					<label for="phone"><span class="glyphicon glyphicon-phone"></span>
						Phone </label> <input type="customerPhone" class="form-control" id="phone" />
				</div>

				<div class="form-group">
					<label for="username"><span
						class="glyphicon glyphicon-user"></span> Username </label><span
						style="color: #ff0000">${usernameMsg}</span>
					<form:errors path="username" cssStyle="color: #ff0000" />
					<input type="Username" class="form-control" id="username" />
				</div>

				<div class="form-group">
					<label for="password"><span
						class="glyphicon glyphicon-lock"></span> Password </label>
					<form:errors path="password" cssStyle="color: #ff0000" />
					<input type="Password" class="form-control" id="password" />
				</div>


				<h3>Billing Address</h3>

				<br>

				<div class="form-group">
					<label for="billingStreet">Street Name</label> <input
						type="billingAddress.streetName" class="form-control"
						id="billingStreet" />

				</div>

				<div class="form-group">
					<label for="billingApartmentNumber">Apartment Number</label> <input
						type="billingAddress.ApartmentNumber" class="form-control"
						id="billingApartmentNumber" />
				</div>

				<div class="form-group">
					<label for="billingCity">City</label> <input
						type="billingAddress.city" class="form-control" id="billingCity" />
				</div>

				<div class="form-group">
					<label for="billingState">State</label> <input
						type="billingAddress.state" class="form-control" id="billingState" />
				</div>

				<div class="form-group">
					<label for="billingCountry">Country</label> <input
						type="billingAddress.country" class="form-control"
						id="billingCountry" />
				</div>

				<div class="form-group">
					<label for="billingZip">Zipcode</label> <input
						type="billingAddress.zipCode" class="form-control" id="billingZip" />
				</div>


				<h3>Shipping Address</h3>

				<br>

				<div class="form-group">
					<label for="shippingStreet">Street Name</label> <input
						type="shippingAddress.streetName" class="form-control"
						id="shippingStreet" />
				</div>

				<div class="form-group">
					<label for="shippingApartmentNumber">Apartment Number</label> <input
						type="shippingAddress.apartmentNumber" class="form-control"
						id="shippingApartmentNumber" />
				</div>

				<div class="form-group">
					<label for="shippingCity">City</label> <input
						type="shippingAddress.city" class="form-control" id="shippingCity" />
				</div>

				<div class="form-group">
					<label for="shippingState">State</label> <input
						type="shippingAddress.state" class="form-control"
						id="shippingState" />
				</div>

				<div class="form-group">
					<label for="shippingCountry">Country</label> <input
						type="shippingAddress.country" class="form-control"
						id="shippingCountry" />
				</div>

				<div class="form-group">
					<label for="shippingZip">Zipcode</label> <input
						type="shippingAddress.zipCode" class="form-control"
						id="shippingZip" />
				</div>

				<br>
				<br>
				<input type="submit" value="submit" class="btn btn-default">
				<a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
			</form:form>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>