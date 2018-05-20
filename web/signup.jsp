<%-- 
    Document   : signup
    Created on : 18 Feb, 2018, 5:51:51 AM
    Author     : brash
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOBILE CART</title>
         <style>
        .s
        {
        background-color:tomato;
        color: white;
        padding:10px;
        }
    </style>
</head>
<body>
    <h2 font color="blue"><i>><a href="homejsp.jsp">HOME</a></i></h2>
    <h1 class ="s"> SIGN UP IN TO MOBILE CART </h1>
<form action="ss" method="POST">
    <center>
EMAIL ID:<br> 
    <input type="text" name="emailid"><br>
NAME:<br> 
    <input type="text" name="name"><br>
PASSWORD:<br>
<input type="password" name="password" /><br>
CONFIRM PASSWORD:<br>
<input type="password" name="cpassword" /><br>
BIRTHDAY:<br>
<input type="date" name="bdaytime"/><br>
GENDER:<br>
  <input type="radio" name="gender" value="male" checked> MALE<br>
  <input type="radio" name="gender" value="female"> FEMALE<br>
  <input type="radio" name="gender" value="other"> OTHER<br>
PHONE NUMBER:<br>
<input type="text" name="phonenumber" /><br>
<br><input type="submit" value="Submit"/>
    </center>
</form>
</body>
</html>
