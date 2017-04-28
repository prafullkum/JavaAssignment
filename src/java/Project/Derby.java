/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author prafull
 */
public class Derby {
    String name;
    String pass;
    public String getName(){
        return name;
    }
    public void setNanme(String Name) {
        this.name = name;
    }
      public String getPass(){
        return pass;
    }
    public void setPass(String Pass) {
        this.pass = pass;
    }
    public int store() throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
         String url = "jdbc:derby://localhost:1527/sample;create = true; user=app;password=app";
         Connection con = DriverManager.getConnection(url);
         PreparedStatement ps;
        ps = con.prepareStatement("insert into volunteers(name,pass) values(?,?)");
            ps.setString(1, name);
            ps.setString(2, pass);
            int a = ps.executeUpdate();
            if(a==1){
                return a;
            }else{
                return a;
            }
         
    }
    
     
    
}
