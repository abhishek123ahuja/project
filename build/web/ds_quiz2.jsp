
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
              crossorigin="anonymous">
        <link rel="stylesheet" href="option.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            textarea
            {
                background-color: #97e6dc;
                border-radius: 25px;
                height : auto;
                width: 100%;
                resize : none;
                
                text-align: left;
                position: relative;
                right: 2%;
                padding: 50px;
                margin: 50px;
                border: 2px solid greenyellow;
                font-weight: bold;
                
            }
            
            .disable-text{ 
                -webkit-user-select:none; 
                -webkit-touch-callout:none; 
                     -moz-user-select:none; 
                     -ms-user-select:none; 
                     user-select:none;
                   
            }
  
            
            .id1
            {
                border: 2px solid #047a91;
                background-color: #4abd96;
                border-radius: 25px;
                margin-top: 50px;
                margin-bottom: 30px;
                padding: 40px;
                font-size: 200%;
                color: #91042c;
            }
            
             body{
                background-image: url("bg6.jpg");
                background-size: 100% 100%;;
                background-repeat: no-repeat;

            }
            
  
        </style>
        
        <script type="text/javascript">
            
     if(sessionStorage.getItem("total_seconds")){
    var total_seconds = sessionStorage.getItem("total_seconds");
} else {
    var total_seconds = 600;
}
            
            var minutes = parseInt(total_seconds/60);
            var seconds = parseInt(total_seconds%60);
            function countDownTimer(){
                if(seconds < 10){
                    seconds= "0"+ seconds ;
                }if(minutes < 10){
                    minutes= "0"+ minutes ;
                }

                document.getElementById("quiz-time-left").innerHTML = "Time Left : "+minutes+"minutes "+seconds+"seconds";
                if(total_seconds <= 1){
                    sessionStorage.removeItem('total_seconds');
                    document.forms["xyz"].submit();
                } else {
                    total_seconds = total_seconds -1 ;
                    minutes = parseInt(total_seconds/60);
                    seconds = parseInt(total_seconds%60);
                    sessionStorage.setItem("total_seconds",total_seconds)
                    setTimeout("countDownTimer()",1000);

                }
            }
            setTimeout("countDownTimer()",1000);
            
        </script>
        
        <script>
            function formSubmit()
            {  
                sessionStorage.clear();
                clearTimeout(total_seconds);
                document.forms["xyz"].submit();
            }
        </script>
        
        
        <SCRIPT type="text/javascript">
            window.history.forward();
            function noBack() { window.history.forward(); }
         </SCRIPT>

            </head>
            <BODY onLoad="noBack();"
            onpageshow="if (event.persisted) noBack();" onUnload="">   
        
        
        
        <form action="after_submit.jsp" method="post()" id="xyz" class="container" >
            
        <div class="id1" id="quiz-time-left" > </div>
        
        <%
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        Statement st = conn.createStatement();
        String q = "select * from ds limit 10 offset 10";
        
        session.setAttribute("course", "ds");
        session.setAttribute("start", 10);
        
        ResultSet rs = st.executeQuery(q);
        int cnt=0;
        while(rs.next())
        {
            
            //System.out.println("'ques:' "+cnt+" "+rs.getString(1)+"\t options \n"+rs.getString(2)+"\t"+rs.getString(3)+rs.getString(4)+"\t"+rs.getString(5)+"\t"+rs.getString(6));
            cnt++;
            String str = rs.getString(7);
            String large = "l";
            String med = "m";
            
            %>
            
            
            <%
            if(str.equals(large))
            {
            %>
            
<div class="disable-text" oncopy="return false" onpaste="return false"> 
    <textarea rows="15" disabled class="ques">
             <%=  "\nQues: "+cnt+"  \n\n"+rs.getString(1) +"\n"%> </textarea>
             
            <div class="opt">
                 <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
                 <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="2"/>
             <%=  rs.getString(2) %>
  </label>
  <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
      <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="3" />
          <%=  rs.getString(3) %>
  </label>
  <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
      <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="4" />
          <%=  rs.getString(4) %>
  </label>
  <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
      <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="5" />
          <%=  rs.getString(5) %>
  </label>
</div>
</div>
         
         <%
            }
            
            else 
            {
                %>
                    
                <div class="disable-text"> 
                    <textarea rows="5"  oncopy="return false" onpaste="return false" disabled class="ques">
                <%=  "\nQues: "+cnt+"  \n\n"+rs.getString(1) +"\n"%> </textarea><br>
                <div class="opt">
     <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
         <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="2"/>
             <%=  rs.getString(2) %>
  </label>
  <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
      <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="3" />
          <%=  rs.getString(3) %>
  </label>
  <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
      <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="4" />
          <%=  rs.getString(4) %>
  </label>
  <label style="font-size:20px;font-family: 'Bree Serif';color: white;">
      <input type="radio" class="option-input radio" name="opt<%=cnt %>" value="5" />
          <%=  rs.getString(5) %>
  </label>
</div>
                </div>
                
                <%
            }
        }
       
        st.close();
        conn.close();
         %>
         
         <br><br>
         
         <button   onclick="formSubmit()" class="btn btn-primary btn-lg btn-block">Submit Quiz</button><br><br>
               
         </form>
         
    </body>
</html>
