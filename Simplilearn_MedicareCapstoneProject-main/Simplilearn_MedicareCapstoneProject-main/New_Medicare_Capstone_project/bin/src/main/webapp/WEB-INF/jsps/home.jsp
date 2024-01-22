<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                <h1>Medicare&copy; </h1> <p>home page</p>
            </div>
            <div  class="col-6" >
                <p style="margin-left: 70%;"><a href="./showRegister">Register</a> <a href="./showLogin">Login</a></p>
                <p style="font-style: initial;">${msg}</p>
            </div>
        </div>

        <div class="row">
        <img src="https://c4.wallpaperflare.com/wallpaper/368/462/529/pills-medicine-capsules-wallpaper-preview.jpg" alt=""  style="width: 1800px;height: 250px;">
        </div>

        <div class="row">

           <div class="col-12" style="">
            <p style="margin-left: 44%;color: black; font-weight: bolder;">  Welcome to your own, </p>
                <h1 style="margin-left: 15.5%; font-weight: bolder; font-style: italic; "><---------------------Medicare---------></h1> 
                <p style="margin-left: 44%;color: black;"> We care your health !! </p>
           </div> 

          <div class="col-md-6" style="background-color:aqua; border-style:dashed;" >
            <br>
            <ul>
                click link below:>
	          <li style="font-style: oblique;font-weight: bolder;"> <a href="./showRegister">Register</a> </li>
    	      <li style="font-style: oblique;font-weight: bolder;">  <a href="./showLogin">Login</a>  </li><br>
            </ul>

             

          </div>
        <div class="col-md-6">
            <img src="https://e1.pxfuel.com/desktop-wallpaper/578/295/desktop-wallpaper-plastic-medicine-drugs-flask-drugs.jpg" alt="" style="width: 640px;height: 250px;">

        </div>
    </div>
        <br><br><br><br>
        <footer style="border-style:groove">
            Copyright &copy; www.myOnlineMedicare.com. All rights reserved!
       </footer>
       </div>
</body>
</html>