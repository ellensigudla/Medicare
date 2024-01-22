<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  
    
</head>
<body>
<div class="container" >
        <div class="row" style="color: red;border-style: outset; background-color:white">
            <div class="col-6" >
                <h1>Medicare&copy; </h1> <p>customer page</p>
            </div>
            <div  class="col-6" >
                <p style="margin-left: 70%;"><a href="https://www.medicare.gov/about-us"><button style="color: brown;">About</button></a> &nbsp&nbsp&nbsp <a href="https://www.medicare.gov/talk-to-someone/other-resources"><button style="color: brown;">Resources</button></a></p>
        
                <label for="search" style="font-weight: bold;">Search:</label>
                <input type="search" id="search" name="search">
            </div>
        </div>
        
        <p>Welcome ${sessionScope.user.username} to your online Store</p>
        <div>
		<c:forEach var="product" items="${products}">
			<div class="row" >
				<div class="col-12"  >
					<img alt="${product.productName}" src="${product.imageUrl}" width="200px" height="160" >
					
				</div>	
			
				<div>
					 <b>${product.productName}</b> &nbsp&nbsp&nbsp &#x2764; <br>
                    
					Amount:<b>${product.price}</b>  &nbsp <a href="./pay">Order</a>
				</div>
			</div>
			<!--<a href="./delete/${product.pid}">Delete</a>-->
		</c:forEach>

  </div>
	
</body>
</html>