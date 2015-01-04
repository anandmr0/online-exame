/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package singup;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author anand
 */
public class userdata 
{
     Connection con;
        ResultSet rs;
        PreparedStatement ps;
        private String fullname;
        private String email;
        private String password;

        public userdata() throws NamingException, SQLException
        {
            InitialContext ic=new InitialContext();
            DataSource ds=(DataSource)ic.lookup("jdbc/sample");
            con=ds.getConnection();
        }
        public int insert(String fullname,String email,String password) throws SQLException
        {  
            ps=con.prepareStatement("insert into useraccount values(?,?,?)");
            ps.setString(1,fullname);
            ps.setString(2, email);
            ps.setString(3,password);
            int rows=ps.executeUpdate();
            return rows;
            
        }
}
