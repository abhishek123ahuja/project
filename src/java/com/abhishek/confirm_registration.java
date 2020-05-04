/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abhishek;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
@WebServlet("/confirm_reg")
public class confirm_registration extends HttpServlet {
    
@Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
    {
        final String username = "onlinequizsystem66@gmail.com";
        final String password = "onlinequizsystem@166";
        String mail = " ";
        
        HttpSession sess = req.getSession();
         
        mail = sess.getAttribute("temp_mail").toString();
        
        
        System.out.println("MAIL: "+mail);
        
        Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
        
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
                    
            int otp1 = new Random().nextInt(900000) + 100000;
            
            sess.setAttribute("otp", otp1);   
            
            sess.setAttribute("email", mail); 

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("onlinequizsystem66@gmail.com"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(mail)
            );
            message.setSubject("Gmail");
            message.setText("Dear User,"
                    + "\n\nyour requested otp is: "+otp1);

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
        
        res.sendRedirect("confirm_registration_otp.jsp");
    }
 }

    

