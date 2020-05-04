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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ABHISHEK
 */
public class check_existence extends HttpServlet {

 @Override
protected void service(HttpServletRequest req, HttpServletResponse res) 
{
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        String mail = req.getParameter("email");
        HttpSession sess = req.getSession();       
        sess.setAttribute("email", mail); 
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        
        String q = "select * from registration where email = ?";
        PreparedStatement st = conn.prepareStatement(q);
        st.setString(1, mail);
        
        ResultSet rs = st.executeQuery();
        
        if(rs.next())
        {
            System.out.println("SENT!!!");
            res.sendRedirect("otp");
        }
        else
        {
            System.out.println("NOT SENT!!!");
            res.sendRedirect("user_doesnot_exist.jsp");
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
