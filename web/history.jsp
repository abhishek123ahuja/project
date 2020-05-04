<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.1.0/react.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.1.0/react-dom.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="footer, address, phone, icons" />    
    
    <link rel=stylesheet href="home.css">
    <script src="home.js"></script>
    <script src="login.js"></script>
    
    
<style type="text/css">

    body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-login {
		color: #636363;
		width: 350px;
	}
	.modal-login .modal-content {
		padding: 20px;
		border-radius: 5px;
		border: none;
	}
	.modal-login .modal-header {
		border-bottom: none;
		position: relative;
		justify-content: center;
	}
	.modal-login h4 {
		text-align: center;
		font-size: 26px;
	}
	.modal-login  .form-group {
		position: relative;
	}
	.modal-login i {
		position: absolute;
		left: 13px;
		top: 11px;
		font-size: 18px;
	}
	.modal-login .form-control {
		padding-left: 40px;
	}
	.modal-login .form-control:focus {
		border-color: #00ce81;
	}
	.modal-login .form-control, .modal-login .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-login .hint-text {
		text-align: center;
		padding-top: 10px;
	}
	.modal-login .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}
	.modal-login .btn {
		background: #00ce81;
		border: none;
		line-height: normal;
	}
	.modal-login .btn:hover, .modal-login .btn:focus {
		background: #00bf78;
	}
	.modal-login .modal-footer {
		background: #ecf0f1;
		border-color: #dee4e7;
		text-align: center;
		margin: 0 -20px -20px;
		border-radius: 5px;
		font-size: 13px;
		justify-content: center;
	}
	.modal-login .modal-footer a {
		color: #999;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
    
    .blank{
   width:100%;
            height: 300px;;
        
        }
</style>

   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript">$(document).ready(function(){
    var newWidget="<div class='widget-wrapper'> <ul class='tab-wrapper'></ul> <div class='new-widget'></div></div>";
    $(".widget").hide();
    $(".widget:first").before(newWidget);
    $(".widget > div").each(function(){
        $(".tab-wrapper").append("<li class='tab'>"+this.id+"</li>");
        $(this).appendTo(".new-widget");
    });
    $(".tab").click(function(){
        $(".new-widget > div").hide();
        $('#'+$(this).text()).show();
        $(".tab").removeClass("active-tab");
        $(this).addClass("active-tab");
    });
    $(".tab:first").click();

  
  
  
});</script>
	<style type="text/css">* {
  box-sizing: border-box;
}

body{
    background-color: #fff;
    text-align: center;
  font-family: 'Source Sans Pro', Helvetica;
}

#container{
    margin: 100px auto;
    width: 90%;
    text-align: left;
  position: relative;
}

.widget{


    background-color: #fff;
    font: 11pt Georgia,Times,serif;
    color: #333;
    padding: 7px;
    /*margin: 20px;*/
    width: 100%;
  
}

    .widget ul{
        list-style-position: inside;
    }

.widget h5{
    font-size: 14pt;
    margin: 5px;
}

.new-widget{
    margin: 0px;


    border: 1px solid #ddd;
  border-top: 0;
    background-color: #fff;
    /*padding: 7px;*/
    width: 100%;
    clear: both;
}
    .new-widget ul{
        display: none;
    }

.tab-wrapper{

 /*  margin-left: 1px; */
  
  width: 1000px;
  padding: 0;
 /*  height: 0px; */
  

 
 /*  background: #1abc9c;  */


}


.tab{
 /* width: 100px;*/
  padding: 8px 10px;
  margin-right: 5px;
  font-size: 0.9em;
/*   border: 1px solid red; */
    border-radius: 10px 10px 0 0;
  /* height: 33px; */
    float: left;
    background: #eee;
    text-transform: capitalize;
    color: #333;
    text-align: center;
    /* line-height: 2.0em; */
    cursor: pointer;
    list-style: none!important;
  transition: all 200ms;
/*   border-right: 0.125rem solid #16a085; */
    border-top: 1px solid #ddd;
    border-right: 1px solid #ddd;
    border-left: 1px solid #ddd;


}

.tab:hover {
  background: #d9ba4a;
  color: #fff;
}

.active-tab{
    background: #d9ba4a;
  color: #fff;
}

.active-tab:hover {


}

.tab-content {
  padding: 0 0;
}

/* TABLE STYLING */

.group-table caption {
    background:#4a9dd9;
  color: #fff;
  padding: 8px;
  font-size: 1.4em;
}

.group-table {
    border-top: 1px solid #ddd; 
  width:100%;
    /*  border:1px solid #ddd; */
/*    border-top: none;  */
    border-collapse:collapse;
        padding:5px;
    text-align: center;
    }
    .group-table th {
    /*  border:1px solid #ddd;
    border-top: none; */
        padding: 10px 5px;
    font-weight: normal;
        background:#d9ba4a;
    color: #fff;
    }
    .group-table td {
    /*  border:1px solid #ddd; */
        padding:10px 2px;
    }

td:nth-child(3) {
    /* min-width: 90px; */
}

.group-table th, .group-table td {
  border-right: 1px solid #ddd;
}

.group-table th:last-child, .group-table td:last-child {
  border-right: none;
}

.group-table tr:nth-child(odd) {
  background: #f0f0f0;
}

#morning .group-table td:nth-child(3) {
  background: #fff;
}

.group-table td.align-bottom {
  vertical-align: bottom;
  padding: 0;
}

.group-table td.align-top {
  vertical-align: top;
  padding: 0;  
}

#morning .group-table td:nth-child(3), #afternoon .group-table td:nth-child(3), #evening .group-table td:nth-child(3) {
  background: #fff;
} 

#weekend .group-table td:nth-child(2) {
  background: #fff;
}</style>

    
    </head>
<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">        
        <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
    </SCRIPT>
    
    
 <div class="header">
         <div class="s"><form action="">
  <input type="search">
        <i class="fa fa-fw fa-search"></i>
</form>
        </div>
    <label style="text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;; float: left; font-size: 40px;font-family: 'Georgia, serif';">SKILL ASSESS</label>
  <input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
  <label for="openSidebarMenu" class="sidebarIconToggle">
    <div class="spinner diagonal part-1"></div>
    <div class="spinner horizontal"></div>
    <div class="spinner diagonal part-2"></div>
  </label>
   <div id="sidebarMenu">
    <ul class="sidebarMenuInner">
      <li><a target="_self" href="edit_profile.jsp" target="_blank">EDIT USER</a></li>
      <li><a target="_self" href="dashboard.jsp" target="_blank">DASHBOARD</a></li>
      <li><a target="_self" href="logout.jsp" target="_blank">LOGOUT</a></li>
    </ul>
  </div>
  <a target="_self" class="active" href="after_login.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>
  <a target="_self" href="dashboard.jsp"><i class="fa fa-fw fa-tachometer"></i>DASHBOARD</a>
  <a target="_self" href="history.jsp"><i class="fa fa-fw fa-history"></i>HISTORY</a>
  <a target="_self" href="logout.jsp"><i class="fa fa-fw fa-user"></i>LOGOUT</a>
</div>    
    
<!--******************************************************************************    -->
<div id='container' style="padding-top:15%;">

  <div class='widget'>
    <div id='C' class="tab-content">
      <table class="group-table">
        <caption>C Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'c' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div>

<div class='widget'>
    <div id='CPP' class="tab-content">
      <table class="group-table">
        <caption>C++ Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'cpp' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div>
  
  <div class='widget'>
    <div id='JAVA' class="tab-content">
      <table class="group-table">
        <caption>Java Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'java' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div>
<div class='widget'>
    <div id='PYTHON' class="tab-content">
      <table class="group-table">
        <caption>Python Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'python' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div>

 <div class='widget'>
    <div id='ANDROID' class="tab-content">
      <table class="group-table">
        <caption>Android Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'android' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div>        
         
<div class='widget'>
    <div id='DS' class="tab-content">
      <table class="group-table">
        <caption>Data Structure Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'ds' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div>     
         
<div class='widget'>
    <div id='DBMS' class="tab-content">
      <table class="group-table">
        <caption>DBMS Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'dbms' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div> 
    
<div class='widget'>
    <div id='OS' class="tab-content">
      <table class="group-table">
        <caption>Operating System Test History</caption>
        
        <thead style="text-align:center;">
          <tr>
              <th><center>S No</center></th>
            <th><center>Date</center></th>
            <th><center>Time</center></th>			
            <th><center>Score</center></th>
          </tr>         
        </thead>
        
        <%
            try
            {
         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        String q = "select time, score from history where email = ? and course = 'os' ";
        PreparedStatement st = conn.prepareStatement(q); 
        st.setString(1, session.getAttribute("email").toString());
        
        ResultSet rs = st.executeQuery();
        int cnt = 1;
        
        while(rs.next())
        {
            
            String st1 = rs.getString(1);
            int pos = st1.indexOf(" ");
            String date = st1.substring(0, pos);
            String time = st1.substring(pos+1);
            
            //System.out.println(rs.getString(1)+"\t"+rs.getString(2));
            %>
            
            <tbody>
            <tr>    
            <td><%= cnt %></td>
            <td><%= date %></td>
            <td><%= time %></td>
            <td><%= rs.getString(2) %></td>
            </tr>
            </tbody>
            
            <%
            cnt++;
        }
        
        st.close();
        conn.close();   
            }
            
            catch(Exception ex)
            {
                System.out.println(ex);
            }
            
         %>
        
        
      </table>
    </div>
  </div>
         
         
</div>      
<!--*******************************************************************************************************************-->
<footer class="new_footer_area bg_color">
            <div class="new_footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget company_widget wow fadeInLeft" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
                                <h3 class="f-title f_600 t_color f_size_18">Get in Touch</h3>
                                <p>For logout or to get new registration!!!</p>
                                    <button class="btn btn_get btn_get_two" type="submit" onclick="location.href='logout.jsp'">LOGOUT</button>
                                    <p class="mchimp-errmessage" style="display: none;"></p>
                                    <p class="mchimp-sucmessage" style="display: none;"></p>
                                </form>
                            </div>
                        </div>
                    <div class="col-lg-3 col-md-6">
                            <div class="f_widget about-widget pl_70 wow fadeInLeft" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInLeft;">
                                <h3 class="f-title f_600 t_color f_size_18">CONNECT</h3>
                                <ul class="list-unstyled f_list" style="color:#6a7695;">
                                    <li><b>INDORE, MADHYA PRADESH</b></li>
                                    <li><b>CONTACT : 9479543431 , 9826315789</b></li>
                                    <li><b>9669261408</b></li>
                                    <li><b>Email : onlinequizsystem66@gmail.com</b></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget social-widget pl_70 wow fadeInLeft" data-wow-delay="0.8s" style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInLeft;">
                                <h3 class="f-title f_600 t_color f_size_18">See our Profiles</h3>
                                <div class="f_social_icon">
                                    <a href="#" class="fa fa-facebook"></a>
                                    <a href="#" class="fa fa-twitter"></a>
                                    <a href="#" class="fa fa-linkedin"></a>
                                    <a href="#" class="fa fa-pinterest"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer_bg">
                    <div class="footer_bg_one"></div>
                    <div class="footer_bg_two"></div>
                </div>
    </footer>
</body>
</html>
    
    
                           
