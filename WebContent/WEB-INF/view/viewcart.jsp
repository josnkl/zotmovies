<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Cart</title>
</head>
<body>
	<table border ="1" cellpadding="10px" width="100%">
	<h3>Your Cart</h3>
		<c:forEach items='<%= session.getAttribute("cart") %>' var="c">
			<tr>
				<td><c:out value="${c.getMovieId()}"/></td>
				<td>${c.movieTitle}</td>
				<td>${c.quantity}</td>
				<td>Remove</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>