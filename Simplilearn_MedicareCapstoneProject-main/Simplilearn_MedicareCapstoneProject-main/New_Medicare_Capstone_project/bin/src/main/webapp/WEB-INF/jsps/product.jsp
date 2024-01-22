<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="./addProduct" method="post">
		ProductName:<input type="text" name="pname"><br>
		Price:<input type="text" name="price"><br>
		ImageUrl:<input type="text" name="imageUrl"><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>