<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page isELIgnored="false"%>
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
	<br>
	<br>
	<br>
	<br>
	<br>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">

			<div class="item active">
				<img src="<c:url value="/resources/images/img3.png" />"
					alt="First-slide">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="<c:url value="/resources/images/img13.jpg" />"
					alt="Second-slide">
				<div class="carousel-caption">
					<h3>Feel Unique</h3>
					<p>Shopping is always the Best Idea!!!</p>
				</div>
			</div>

			<div class="item">
				<img src="<c:url value="/resources/images/img14.jpg" />"
					alt="Third-slide">
				<div class="carousel-caption">
					<h3>The Glam Life</h3>
					<p>Beauty begins the moment you decide to be yourself!!!</p>
				</div>
			</div>

			<div class="item">
				<img src="<c:url value="/resources/images/img16.jpg" />"
					alt="Fourth-slide">
				<div class="carousel-caption">
					<h3>Makeup</h3>
					<p>A Smile is the best makeup any girl can wear!!</p>
				</div>
			</div>

			<div class="item">
				<img src="<c:url value="/resources/images/img4.jpg" />"
					alt="Fifth-slide">
				<div class="carousel-caption">
					<h3>Be Your Own Kind Of Beautiful</h3>
					<p>Your Ideas,your Creativity...you own it!!</p>
				</div>
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- Marketing messaging and featurettes
================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-md-4">
				<a class="btn btn-default"
					href="<c:url value="/product/productList?searchCondition=$" />"
					role="button"> <img class="img-circle"
					src="<c:url value="/resources/images/img12.png" />" alt=" "
					width="140" height="140"></a>


			</div>
			<!-- /.col-lg-4 -->



			<div class="row">
				<div class="col-md-4">
					<a class="btn btn-default"
						href="<c:url value="/product/productList?searchCondition=$" />"
						role="button"> <img class="img-circle"
						src="<c:url value="/resources/images/img8.png" />" alt=" "
						width="140" height="140"></a>


				</div>
				<!-- /.col-lg-4 -->


				<div class="row">
					<div class="col-md-4">
						<a class="btn btn-default"
							href="<c:url value="/product/productList?searchCondition=$" />"
							role="button"> <img class="img-circle"
							src="<c:url value="/resources/images/img18.png" />" alt=" "
							width="140" height="140"></a>


					</div>
					<!-- /.col-lg-4 -->


				</div>
				<!-- /.row -->
			</div>
		</div>
	</div>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</html>