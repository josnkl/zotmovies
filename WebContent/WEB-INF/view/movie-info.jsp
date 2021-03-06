<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="header.jsp"%>
<body>
	<!-- Page Content -->
	<div class="container">

		<!-- Page Header -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Movies
					<!-- <small>Secondary Text</small> -->
				</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Projects Row -->
		<div class="row">
			<div class="col-md-5" style="text-align: center">
				<a href="#">
					<center>
						<img class="img-responsive" src="${movie.banner_url}" alt="">
					</center>
				</a>
				<button class="btn btn-success btn-lg add-to-cart"  data="${movie.title}" movieid="${movie.id}" style="margin: 10px">
					Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
				</button>
				<div id="successMsg" style="font-weight: bold"></div>
			</div>
			<div class="col-md-7">
				<h3>${movie.title}</h3>
				<h4>Year: ${movie.year}</h4>
				<ul class="movie-info">
					<li>ID: ${movie.id}</li>
					<li>Price: $3.0</li>
					<li>Director:${movie.director}</li>
					<li>Stars: <c:forEach var="star" items="${listStars}">
							<a
								href="./getStarInfo?id=${star.id}&fn=${star.first_name}
									&ln=${star.last_name}&dob=${star.dob}&photo_url=${star.photo_url}">
								${star.first_name} ${star.last_name}</a>
						</c:forEach>
					</li>
					<li>Genres:<c:forEach var="genre" items="${listGenres}">
							<a href="./browseGenre?genre=${genre.name}"> ${genre.name} </a>
						</c:forEach>
					</li>

				</ul>

				<a class="btn btn-primary" href="${movie.trailer_url}">Watch
					Trailer <span class="glyphicon glyphicon-chevron-right"></span>
				</a>
				<hr>
				<div id="successAdd"></div>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Footer -->
		<%@ include file="footer.jsp"%>

	</div>
	<!-- /.container -->

</body>

</html>

