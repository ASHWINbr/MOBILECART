/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package signup;

/**
 *
 * @author brash
 */
public class jsignup {

        private String name;
        private String password;
        private String cpassword;
        private String phonenumber;
        private String emailid;

        
        
    /**
     * Get the value of string
     *
     * @return the value of string
     */
    public String getemailid()
    {
        return emailid;
    }
    public void setemailid(String emailid) {
        this.emailid = emailid;
    }
    public String getname() {
        return name;
    }

    /**
     * Set the value of string
     *
     * @param name
     */
    public void setname(String name) {
        this.name = name;
    }

    public String getpassword() {
        return password;
    }
    public void setpassword(String password) {
        this.password = password;
    }
     public String getcpassword() {
        return cpassword;
    }
    public void setcpassword(String cpassword) {
        this.cpassword = cpassword;
    }
    public String getphonenumber() {
        return phonenumber;
    }
    public void setphonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }
}
