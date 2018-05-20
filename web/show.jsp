<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String connectionUrl = "jdbc:derby://localhost:1527";
String userId = "ashwin";
String password = "ashwin";
String dbName = "ASHWIN";
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="6" cellspacing="6" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>mobile</b></td>
<td><b>mobile id</b></td>
<td><b>model</b></td>
<td><b>brand</b></td>
<td><b>price</b></td>
<td><b>stock</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM MOBILETABLE";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getBytes("IMAGE")%></td>
<td><%=resultSet.getInt("ID")%></td>
<td><%=resultSet.getString("MODEL")%></td>
<td><%=resultSet.getString("BRAND")%></td>
<td><%=resultSet.getString("PRICE")%></td>
<td><%=resultSet.getInt("STOCK")%></td>
</tr>
<% 
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
</table>
