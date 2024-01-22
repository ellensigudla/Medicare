<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Hi ${sessionScope.user.username} welcome to Admin Dashboard</h1>
	<a href="./showProduct">AddProduct</a>
	<a href="./products">Get Products</a>
	
	<div>
		<c:forEach var="product" items="${products}">
			<div>
				<div>
					<img alt="${product.productName}" src="${product.imageUrl}" width="300px" height="300px">
				</div>
				<div>
					${product.productName}
					Price:${product.price}
				</div>
			</div>
			<a href="./delete/${product.pid}">Delete</a>
		</c:forEach>
	</div>
	<a href="./submit"><button>Submit</button></a>
</body>
</html>