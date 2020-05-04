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
public class evaluate extends HttpServlet {

     @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {
         int correct = 0, i=1 ,start;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/quiz_system";
            String uname = "root";
            String pass = "";
            
            HttpSession ses = req.getSession();
            
            String course = ses.getAttribute("course").toString();
            String arr[] = (String[])ses.getValue("array");
            
            start = Integer.parseInt(ses.getAttribute("start").toString());
            System.out.println("start:"+start);
            
            System.out.println("course: "+course);
            
            Connection conn = DriverManager.getConnection(url, uname, pass);
            
            System.out.println("submission GOT: ");
            for(int k=1; k<10; k++)
            {
                System.out.println(k + " " + arr[k]);
            }
            
            String q = "select * from "+course+ " limit 10 offset "+start;
            Statement st = conn.createStatement();
            //st.setString(1, course);

            ResultSet rs = st.executeQuery(q);
             
            System.out.println("evaluate...");
            while(rs.next())
            {
                //System.out.println("compare: "+i+" "+rs.getString(6)+"\n"+rs.getString(Integer.parseInt(arr[i])));
                
                if(!arr[i].equals("NULL"))
                {
                 if(rs.getString(6).equals(rs.getString(Integer.parseInt(arr[i]))))
                 {
                     System.out.println("compare: "+i+" "+rs.getString(6)+"\n"+rs.getString(Integer.parseInt(arr[i])));
                     correct++;
                 }
                }
                     
                 i++;               
            }
            
            st.close();
            conn.close();
            ses.setAttribute("score", correct);
            
            System.out.println("score: "+ correct);
        }
        
        catch(Exception ex)
        {
            System.out.println(ex);        
        }
        
        res.sendRedirect("record_score");
   }
         
}


