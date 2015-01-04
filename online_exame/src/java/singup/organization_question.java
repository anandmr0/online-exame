package singup;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class organization_question extends HttpServlet
{
    int registration_no,rows=0;
        String exam_name,question,a,b,c,d,correct_answer;
        
    public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
    {
        try {
            PrintWriter pw=res.getWriter();
            
            registration_no=Integer.parseInt(req.getParameter("rnumber"));
            exam_name=req.getParameter("examname");
            question =req.getParameter("question");
            a=req.getParameter("a");
            b=req.getParameter("b");
            c=req.getParameter("c");
            d=req.getParameter("d");
            correct_answer=req.getParameter("correctanswer");
          

            singup d1=new singup();
           rows=d1.organization_question(registration_no,exam_name,question,a,b,c,d,correct_answer);
           pw.println(rows);
           //pw.println(registration_no+""+exam_name+""+question+""+a+""+b+""+c+""+d+""+correct_answer);
            if(rows==1)
            {
            RequestDispatcher rd=req.getRequestDispatcher("questiondetail.jsp");
            rd.forward(req, res);
            }
            else
          pw.println(registration_no+""+exam_name+""+question+""+a+""+b+""+c+""+d+""+correct_answer);
        } catch (NamingException ex) {
            Logger.getLogger(organization_question.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(organization_question.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    

}