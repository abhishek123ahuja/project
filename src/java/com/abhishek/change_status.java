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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class change_status extends HttpServlet {

@Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {           
        
        HttpSession ses = req.getSession();
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_system", "root", "");
        String q = "update registration set status = ? where email = ?";
        PreparedStatement st = conn.prepareStatement(q);
        
        
        st.setString(1, "confirm");
        st.setString(2, ses.getAttribute("temp_mail").toString());          

        int cnt = st.executeUpdate();
        System.out.println(cnt+" row/s affected");
        st.close();
        conn.close();
        }

        catch(Exception ex)
        {
            System.out.println(ex);
        }
        
        ses.invalidate();
        res.sendRedirect("login.jsp");
        //sess.invalidate();
    }

}
