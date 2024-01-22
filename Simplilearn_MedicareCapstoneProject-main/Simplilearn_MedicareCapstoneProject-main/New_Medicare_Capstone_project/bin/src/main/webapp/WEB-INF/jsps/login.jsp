<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="background-color:wheat;">
    <!-- <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZIZFxkGZnebbtjiriseUyhqTG6ZdKSNt4ng&usqp=CAU" alt=""> -->
    <div class="row" style="margin-left: 38%; margin-top: 7%;"> 
        <div class="col-12" style="font-weight: bolder; color: brown;">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZIZFxkGZnebbtjiriseUyhqTG6ZdKSNt4ng&usqp=CAU" alt="">

    <form action="./login" method="post">
		Username:<br><input type="text" name="username"  ><br>
		Password:<br><input type="password" name="password"><br><br>
		<input type="submit" value="Submit">
	</form><br>
	${msg}
    </div>
  </div>>
</div>
</body>
</html>