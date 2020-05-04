package com.abhishek;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/verify")
public class verifyServlet extends HttpServlet {

    
@Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {
         String x = req.getParameter("email");
         String y = req.getParameter("pass");
         
         //System.out.println(x+" "+ y);
                
         try
         {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://b8iuxokal0s7u3nbqkf4-mysql.services.clever-cloud.com:3306/b8iuxokal0s7u3nbqkf4";
        String uname = "ugioz6ge5wkraaqr";
        String pass = "o0BdHZ4asR4jXq1Ky62P";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q1 = "select status from registration where email=?";
        PreparedStatement st = conn.prepareStatement(q1);
        st.setString(1, x);
        
        ResultSet rs = st.executeQuery();
        if(rs.next())
        {
            System.out.println("FIRST!!!");
            if(rs.getString(1).equals(""))
            {
                System.out.println("SECOND!!!");
                HttpSession ses = req.getSession();
                ses.setAttribute("temp_mail", x);
                
                System.out.println("status: "+rs.getString(1));
                res.sendRedirect("status_failed.jsp");
            }
            
            
            String q = "select email,password, name from registration where email=? and password=?";       
            st = conn.prepareStatement(q);
            st.setString(1, x);
            st.setString(2, y);

            rs = st.executeQuery();

            if(rs.next())
            {
                    System.out.println("Success!!!");

                    HttpSession session = req.getSession();
                    session.setAttribute("name", rs.getString(3));
                    session.setAttribute("email", rs.getString(1));
                    System.out.println("name is: "+rs.getString(3));

                    res.sendRedirect("after_login.jsp");

            }
            else
            {
                res.sendRedirect("login_fail.jsp");
                System.out.println("Failure!!!");
                res.sendRedirect("index.html");
            }
        }
        
            else
            {
                res.sendRedirect("login_fail.jsp");
                System.out.println("Failure!!!");
                res.sendRedirect("index.html");
            }
        
        
        st.close();
        conn.close();
         }
          
    catch(Exception e)
    {
        System.out.println(e);
    }
         
    }
}
