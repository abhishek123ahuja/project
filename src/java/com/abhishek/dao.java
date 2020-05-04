package com.abhishek;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class dao {
    
    public void check() throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/b8iuxokal0s7u3nbqkf4";
        String uname = "ugioz6ge5wkraaqr";
        String pass = "o0BdHZ4asR4jXq1Ky62P";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        Statement st = conn.createStatement();
        String q = "select * from registration";
        
        ResultSet rs = st.executeQuery(q);
        
        while(rs.next())
        {
            //rs.next();
            System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));
        }
        
        st.close();
        conn.close();
    }
    
    public void insert(String a, String b, String c) throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://b8iuxokal0s7u3nbqkf4-mysql.services.clever-cloud.com:3306/b8iuxokal0s7u3nbqkf4", "ugioz6ge5wkraaqr", "o0BdHZ4asR4jXq1Ky62P");
        String q = "insert into registration(name, email, password) values (?, ?, ?)";
        PreparedStatement st = conn.prepareStatement(q);
        st.setString(1, a+"");
        st.setString(2, b+"");
        st.setString(3, c+"");
        
        int cnt = st.executeUpdate();
        System.out.println(cnt+" row/s affected");
        st.close();
        conn.close();
    }
    
    
    public boolean already_exist(String s) throws Exception
    {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_system", "root", "");
        String q = "select * from registration where email=?";
        PreparedStatement st = conn.prepareStatement(q);
        st.setString(1, s);
        ResultSet rs = st.executeQuery();
        
        if(rs.next())
        {     
            st.close();
            conn.close();
            return false;
        }
        
        else
        {
            st.close();
            conn.close();
            return true;        
        }       
    }
}
