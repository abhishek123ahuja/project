/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abhishek;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/confirmreg_otp")
public class confirmreg_otp extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {
        
        String otp = req.getParameter("otp");
        System.out.println("hello, "+otp);
        HttpSession sess  = req.getSession();
        if(otp.equals(sess.getAttribute("otp").toString() ) )
        {
            System.out.println("YES!!!");
            res.sendRedirect("change_status");
            
            
            
            //res.sendRedirect("login.jsp");
            
        }
        else
        {
            System.out.println("NO!!!");
            res.sendRedirect("status_failed.jsp");
        }
    }
    
}