/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abhishek;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/record_score")
public class record_score extends HttpServlet {

    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {
        
        HttpSession session = req.getSession();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        
         System.out.println(session.getAttribute("name").toString());
         System.out.println(session.getAttribute("email").toString());
         System.out.println(session.getAttribute("course").toString());
         System.out.println(session.getAttribute("score").toString());
         System.out.println(formatter.format(date));
              
         try
         {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_system", "root", "");
        String q = "insert into history values (?, ?, ?, ?, ?)";
        PreparedStatement st = conn.prepareStatement(q);
        st.setString(1, session.getAttribute("name").toString());
        st.setString(2, session.getAttribute("email").toString());
        st.setString(3, session.getAttribute("course").toString());
        
        st.setString(4, formatter.format(date));
        st.setString(5, session.getAttribute("score").toString());
        
        int cnt = st.executeUpdate();
        System.out.println(cnt+" row/s affected");
        st.close();
        conn.close();
        }
         
         catch(Exception e)
         {
             System.out.println(e);
         }
         
         /*PrintWriter out  = res.getWriter();
         out.print("<h1>score: "+session.getAttribute("score").toString()+"</h1>");*/
         
         res.sendRedirect("congrats_popup.jsp");
                
}
   
}



