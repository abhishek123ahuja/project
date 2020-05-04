<!DOCTYPE html>
<html>

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
    
    <style>
    .sub
        {
            width: 250px;
            float: left;
            padding-left: 20px;
        }
        
        .sub:hover
        {
            border: 1px solid black;
            background-color: chocolate;
        }
        
        #id1
        {
            margin-left: 100px;
        }
        
        #div1
        {
            margin: 00px;
        }
		
		.form-gap 
		{
		padding: 70px;
			
		}
		
		#ab
		{
		height : 200px;
		}
		
.panel {
  box-shadow: none;
}
.panel-heading {
  border-bottom: 0;
}
.panel-title {
  font-size: 17px;
}
.panel-title > small {
  font-size: .75em;
  color: #999999;
}
.panel-body *:first-child {
  margin-top: 0;
}
.panel-footer {
  border-top: 0;
}

.panel-default > .panel-heading {
    color: #333333;
    background-color: transparent;
    border-color: rgba(0, 0, 0, 0.07);
}

form label {
    color: #999999;
    font-weight: 400;
}

.form-horizontal .form-group {
  margin-left: -15px;
  margin-right: -15px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    text-align: right;
    margin-bottom: 0;
    padding-top: 7px;
  }
}

.profile__contact-info-icon {
    float: left;
    font-size: 18px;
    color: #999999;
}
.profile__contact-info-body {
    overflow: hidden;
    padding-left: 20px;
    color: #999999;
}
.profile-avatar {
  width: 200px;
  position: relative;
  margin: 0px auto;
  margin-top: 196px;
  border: 4px solid #f3f3f3;
}
    </style>
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
      <li><a target="_self" href="edit_profile.jsp" target="_blank">HISTORY</a></li>
      <li><a target="_self" href="dashboard.jsp" target="_blank">DASHBOARD</a></li>
      <li><a target="_self" href="logout.jsp" target="_blank">LOGOUT</a></li>
    </ul>
  </div>
  <a target="_self" class="active" href="after_login.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>
  <a target="_self" href="dashboard.jsp"><i class="fa fa-fw fa-tachometer"></i>DASHBOARD</a>
  <a target="_self" href="history.jsp"><i class="fa fa-fw fa-history"></i>HISTORY</a>
  <a target="_self" href="logout.jsp"><i class="fa fa-fw fa-user"></i>LOGOUT</a>
</div>

        
<!--********************************************************************************-->

<div class="container bootstrap snippets" id="id1" style="width:100%;padding-top: 15%;">
<div class="row">
  <div class="col-xs-12 col-sm-9">
      
      
      <form class="form-horizontal" action="edit_change">
        <div class="panel panel-default">
          <div class="panel-body text-center">
           <img src="https://bootdey.com/img/Content/avatar/avatar6.png" class="img-circle profile-avatar" alt="User avatar">
          </div>
        </div>     

      <div class="panel panel-default">
        <div class="panel-heading">
        <h4 class="panel-title">Contact info</h4>
        </div>
        <div class="panel-body">
            
            <%
                String name=session.getAttribute("name").toString(); 
                System.out.println("name edit profile: "+name);
                String fname = name.substring(0, name.indexOf(" "));
                String lname = name.substring(name.indexOf(" ")+1);
                System.out.println(fname+ ""+ lname);
            %>
          <div class="form-group">
            <label class="col-sm-2 control-label">Full Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" value=<%= fname+" "+lname %> disabled>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label">E-mail address</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" value=<%= session.getAttribute("email").toString() %> disabled>
            </div>
          </div>
          
        </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
        <h4 class="panel-title">Security</h4>
        </div>
        <div class="panel-body">
          <div class="form-group">
            <label class="col-sm-2 control-label">Current password</label>
            <div class="col-sm-10">
              <input type="password" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">New password</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" name="pass1"
                     pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$" 
                     title="must conatain atleast a digit, a lowercase letter and min length must be 8" required="required">
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label">Confirm password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="pass2"
                       pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$" 
                       title="must conatain atleast a digit, a lowercase letter and min length must be 8" required="required">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
              
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
              <button type="submit" class="btn btn-primary">Submit</button>
              <button type="reset" class="btn btn-default">Cancel</button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
</div>

<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--**************************************************************************************      -->
        
        <footer class="new_footer_area bg_color">
            <div class="new_footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget company_widget wow fadeInLeft" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
                                <h3 class="f-title f_600 t_color f_size_18">Get in Touch</h3>
                                <p>For logout or to get new registration!!!!</p>
                                    <button class="btn btn_get btn_get_two" type="submit" onclick="location.href='logout.jsp'">LOGOUT </button>
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