/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abhishek;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ABHISHEK
 */
@WebServlet("/update_pass")
public class update_pass extends HttpServlet {

   @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {   
        
        String st1, st2;
        st1 = req.getParameter("pass1");
        st2 = req.getParameter("pass2");
        HttpSession sess = req.getSession();
        String email = sess.getAttribute("email").toString();
        
        if(st1.equals(st2))
        {
         
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_system", "root", "");
            String q = "update registration set password = ? where email = ?";
            PreparedStatement st = conn.prepareStatement(q);
            st.setString(1, st1);
            st.setString(2, email);          

            int cnt = st.executeUpdate();
            System.out.println(cnt+" row/s affected");
            st.close();
            conn.close();
            }

            catch(Exception ex)
            {
                System.out.println(ex);
            }
        
        }
        res.sendRedirect("login.jsp");
        sess.invalidate();
    }
      
}
