package com.abhishek;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/insert")
public class insertServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {
         String x = req.getParameter("uname");
         String y = req.getParameter("email");
         String z = req.getParameter("pass");
         String z1 = req.getParameter("confirm_pass");
         
         System.out.println(x+" "+ y+" "+ z);
         
         dao d1 = new dao();
         
         try{
         if(d1.already_exist(y) && z.equals(z1))
                 {
                     
                 try{
                 d1.insert(x, y, z);
                 }
                 catch(Exception e)
                 {
                     System.out.println(e);
                 }
                 
                 HttpSession ses = req.getSession();
                 ses.setAttribute("temp_mail", y);
                 
                 res.sendRedirect("confirm_reg");
                 }
                 
         else
             res.sendRedirect("reg_fail.jsp");
         }
         
         catch(Exception ex)
         {
             System.out.println(ex);
         }
         
    }

}
