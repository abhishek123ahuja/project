
package com.abhishek;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/c_quiz")
public class c_quiz extends HttpServlet {

@Override
protected void service(HttpServletRequest req, HttpServletResponse res) 
{
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        Statement st = conn.createStatement();
        String q = "select * from c_course";
        
        ResultSet rs = st.executeQuery(q);
        int cnt=1;
        while(rs.next())
        {
            //rs.next();
            System.out.println("Ques: "+cnt+" "+rs.getString(1)); 
            System.out.println("Options: \t");
            System.out.println(rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)+"\t"+rs.getString(5)+"\t"+rs.getString(6)); 

            cnt = cnt+1;
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
