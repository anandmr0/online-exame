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
import java.util.Random;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author anand
 */
public class singup 
{       Connection con;
        ResultSet rs;
        PreparedStatement ps;
        private String fullname;
        private String email;
        private String password;

        public singup() throws NamingException, SQLException
        {
            InitialContext ic=new InitialContext();
            DataSource ds=(DataSource)ic.lookup("jdbc/sample");
            con=ds.getConnection();
        }
        public int randomno() 
        { 
            
            int r=0;
        Random t = new Random();
        for (int c = 1; c <= 1; c++) 
            r= t.nextInt(99999999);
    return r;
        }
        public int insert(String fullname,String email,String password) throws SQLException
        {  
            ps=con.prepareStatement("insert into useraccount values(?,?,?)");
            ps.setString(1,fullname);
            ps.setString(2, email);
            ps.setString(3,password);
            int rows=ps.executeUpdate();
            con.close();
            return rows;
            
        }
        public int select(String email,String password) throws SQLException
        {   
            ps=con.prepareStatement("select * from useraccount where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            
            rs=ps.executeQuery();
            if(rs.next()==true)
            { 
                con.close();
            int c=1;
            return c;
            
            }
            else{
                con.close();
                int c=0;
                return c;
            }
        }
       public int student(String fullname,String email,String phone,String address,String city,int pincode,String state,String loginname,String password,int randomno) throws SQLException
       {
         ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
         ps.setString(1,fullname);
         ps.setString(2,email);
         
         ps.setString(3,address);
         ps.setString(4, city);
         ps.setInt(5,pincode);
         ps.setString(6,state);
         ps.setString(7,loginname);
         ps.setString(8,password);
         ps.setString(9, phone);
         ps.setInt(10, randomno);
         int rows=ps.executeUpdate();
         con.close();
         return rows;
       
       }
       public int institute(String institutename,String email,String loginname,String password,int randomno) throws SQLException
       {
            ps=con.prepareStatement("insert into institute values(?,?,?,?,?)");
            ps.setString(1,institutename);
            ps.setString(2, email);
            
            ps.setString(3,password);
            ps.setString(4,loginname);
            ps.setInt(5, randomno);
            int rows=ps.executeUpdate();
            con.close();
            return rows;
       
       }
        public int organization(String organizationname,String email,String loginname,String password,int randomno) throws SQLException
       {
            ps=con.prepareStatement("insert into organization values(?,?,?,?,?)");
            ps.setString(1,organizationname);
            ps.setString(2, email);
            ps.setString(3,loginname);
            ps.setString(4,password);
            ps.setInt(5, randomno);
            int rows=ps.executeUpdate();
            con.close();
            return rows;
       
       }
         public int organizationselect(String organizationname,String loginname,String password,int registration_no) throws SQLException
        {   
            ps=con.prepareStatement("select * from organization where organizationname=? and loginname=? and password=? and registration_no=?");
            ps.setString(1, organizationname);
            ps.setString(2,loginname);
            ps.setString(3, password);
            ps.setInt(4, registration_no);
            
            rs=ps.executeQuery();
            if(rs.next()==true)
            { 
                con.close();
             int c=1;
            return c;
            
            }
            else{
                con.close();
                int c=0;
                return c;
            }
        }
          public int organizationpaperdetail(String organizationname,String loginname,String examname,int marksperquestion,int passingmarks,int totalmarks,int duration,int negative,int registration_no) throws SQLException
       {
            ps=con.prepareStatement("insert into organizationpaperdetail values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1,organizationname);
            ps.setString(2,loginname);
             ps.setString(3,examname);
             ps.setInt(4,marksperquestion);
             ps.setInt(5, passingmarks);
             ps.setInt(6,totalmarks);
             ps.setInt(7, negative);
             ps.setInt(8, duration);
            ps.setInt(9, registration_no);
            int rows=ps.executeUpdate();
            con.close();
            return rows;
       
       }
       public int organization_question(int registration_no,String exam_name,String question,String a,String b,String c,String d,String correct_answer) throws SQLException
       {
           ps=con.prepareStatement("insert into organizationquestion values(?,?,?,?,?,?,?,?)");
           ps.setInt(1,registration_no);
           ps.setString(2,exam_name);
           ps.setString(3,question);
           ps.setString(4,a);
           ps.setString(5,b);
           ps.setString(6,c);
           ps.setString(7,d);
           ps.setString(8,correct_answer);
           int rows=ps.executeUpdate();
           con.close();
           return rows;
       }
        public int instituteselect(String institutename,String loginname,String password,int registration_no) throws SQLException
        {   
            ps=con.prepareStatement("select * from institute where institutename=? and loginname=? and password=? and registration_no=?");
            ps.setString(1, institutename);
            ps.setString(2,loginname);
            ps.setString(3, password);
            ps.setInt(4, registration_no);
            rs=ps.executeQuery();
            if(rs.next()==true)
            {
            con.close();
            int c=1;
            return c;
            
            }
            else{
                con.close();
                int c=0;
                return c;
            }
        }
          public int institutepaperdetail(String institutename,String loginname,String examname,int marksperquestion,int passingmarks,int totalmarks,int duration,int negative,int registration_no) throws SQLException
       {
            ps=con.prepareStatement("insert into institutepaperdetail values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1,institutename);
            ps.setString(2,loginname);
             ps.setString(3,examname);
             ps.setInt(4,marksperquestion);
             ps.setInt(5, passingmarks);
             ps.setInt(6,totalmarks);
             ps.setInt(7, negative);
             ps.setInt(8, duration);
            ps.setInt(9,registration_no);
            int rows=ps.executeUpdate();
            con.close();
            return rows;
       
       }
     
         
       

    /**
     * @return the fullname
     */
    public String getFullname() {
        return fullname;
    }

    /**
     * @param fullname the fullname to set
     */
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
        
}
