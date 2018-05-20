/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package signup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.activation.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author brash
 */
public class UserDao {
    private DataSource datasrc;
    
    private void connect(){
        try{
        datasrc=getjsignupref();
        }
        catch(NamingException e){
            
        }
    }
    public boolean insertjsignup(jsignup user){
        String query="insert into MOBILECARTTABLE values(?,?,?,?,?)";
        connect();
        try{
        Connection conn; 
        conn= DriverManager.getConnection("jdbc:derby://localhost:1527/mobilecartdb","ashwin","ashwin");
       PreparedStatement stat= conn.prepareStatement(query);
       stat.setString(1, user.getname());
       stat.setString(2, user.getpassword());
       stat.setString(3, user.getcpassword());
       stat.setString(4, user.getphonenumber());
       stat.setString(5, user.getemailid());
       int i=stat.executeUpdate();
       //System.out.println(i+" row inserted...");
       return true;
        }
        catch(SQLException e)
        {//System.out.println(e+"error........//////");
            return false;
        }
    }
    
    
    public boolean validatejlogin(jsignup user) throws SQLException
{
    String query="select password from MOBILECARTTABLE where emailid=?";
 
 String emailid =user.getemailid();
 String password =user.getpassword();
 String emailidDB = " ";
 String passwordDB = " ";
  try{
        Connection conn; 
        conn= DriverManager.getConnection("jdbc:derby://localhost:1527/mobilecartdb","ashwin","ashwin");
    PreparedStatement stat = conn.prepareStatement(query);
    stat.setString(1,emailid);
  ResultSet rs= stat.executeQuery();
        while(rs.next())
    {
        passwordDB = rs.getString("password");
        System.out.println(passwordDB);
        if( password.equals(passwordDB))
            {
              return true;
            }
        
    }
        
  }
    catch(SQLException e)
        {
            System.out.println(e+"error........//////");
        }
      return false;
}
    
    
    private DataSource getjsignupref() throws NamingException 
    {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/userref");
    }
}
