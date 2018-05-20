<%-- 
    Document   : loginjsp
    Created on : 25 Feb, 2018, 4:03:15 AM
    Author     : brash
--%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <style>
        .l
        {
        background-color:tomato;
        color: white;
        padding:10px;
        }
    </style>
    </head>
    <body>
        <h1 class ="l"> LOGIN IN TO MOBILE CART </h1>
        <form action="ls" method="POST">
<center>
<h2 font color="blue"><i>><a href="homejsp.jsp">HOME</a></i></h2>
EMAIL ID:<br> 
    <input type="text" name="emailid"><br>
PASSWORD:<br>
<input type="password" name="password" /><br>
 <br><input type="submit" value="Submit"/>
</center>
        </form>
    </body>
</html>
