<%@include file="/WEB-INF/views/template/header.jsp"%>

<style>
body {
	background-color: cyan;
}
</style>

<div class="container-wrapper">
	<div class="login-container">
		<div id="login-box">

			<h2>Login</h2>

			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>

			<form name="loginForm"
				action="<c:url value="/j_spring_security_check" />" method="post">
				<c:if test="${not empty error}">
					<div class="error" style="color: #ff0000;">${error}</div>
				</c:if>
				<div class="form-group">
					<label for="username"><span
						class="glyphicon glyphicon-user"></span> Username: </label> <input
						type="username" class="form-control" id="username" name="username" />
				</div>
				<div class="form-group">
					<label for="password"><span
						class="glyphicon glyphicon-lock"></span> Password: </label> <input
						type="password" class="form-control" id="password" name="password" />
				</div>

				<input type="submit" value="Submit" class="btn btn-default">

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>

		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
