<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Testing Cart Page</title>
</head>
<body>
	<form modelAttribute = "cart" action ="addcart" method="POST">
		ID: <input path="ID" name="movieId"/><br/>
		NAME: <input path="movieTitle" name="name"/><br/>
		QUANTITY: <input path="quantity" name="quantity"/><br/>
		
		<input type="submit" value="Add to Cart"/>
	</form>
</body>
</html>