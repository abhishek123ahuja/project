 <html>
      <head>
         <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
    </SCRIPT>
  
    </head>
    
    <BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
          <%
             System.out.println(session.getAttribute("name").toString());
            System.out.println(session.getAttribute("email").toString());
            session.invalidate();
            //System.out.println(session.getAttribute("name").toString());
            //System.out.println(session.getAttribute("email").toString());
            response.sendRedirect("index.html");

            %>
          
      </body>
      
  </html>
