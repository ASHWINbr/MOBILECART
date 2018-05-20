<%-- 
    Document   : display
    Created on : 4 Mar, 2018, 8:46:50 AM
    Author     : brash
--%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HI USER</title>
         <style>
        .d
        {
        background-color:tomato;
        color: white;
        padding:10px;
        }
    </style>
    </head>
    <body>
        <form>
            <h2 font color="blue"><i>><a href="homejsp.jsp">HOME</a></i></h2>
        </form>
        <h1 class ="d"> MI MOBILES </h1>
        <% 
            //OutputStream img;
        try
        {
        String query="select * from MOBILETABLE";
        Connection conn; 
        conn= DriverManager.getConnection("jdbc:derby://localhost:1527","ashwin","ashwin");
        PreparedStatement stat = conn.prepareStatement(query);
        ResultSet rs= stat.executeQuery();
        while(rs.next())
        { %>
        <table>
            <tr>
                <td><%=rs.getBytes(1)%></td>
                <td><%=rs.getInt(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getInt(6)%></td>
            </tr>    
        <% }
        }catch(SQLException e)
         {
         System.out.println("error");
         }
        %>
        </table>
    </body>
</html>
