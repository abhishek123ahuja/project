<%-- 
    Document   : after_submit
    Created on : Jan 25, 2020, 10:02:42 PM
    Author     : ABHISHEK
--%>

<%@page import="com.abhishek.dao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String arr[] = new String[31];
            int corr=0;
            for(int i=1; i<=10; i++)
            {
                 String pass ="opt"+i;
                 String st = request.getParameter(pass);
                 if(st == null)
                     arr[i] = "1";
                 else
                     arr[i] = st;
                 //System.out.println(st);
                 
         %>
                
                
        <%
        }
        
        session.setAttribute("array", arr);
        response.sendRedirect("evaluate");
        
        %>
        
          
    </body>
</html>
