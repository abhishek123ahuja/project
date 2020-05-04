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
    <script src="login.js"></script>    

</head>

 <body onload="noBack();"onpageshow="if (event.persisted) noBack();" onunload="">
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>

 <div class="header">
  <input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
  <label for="openSidebarMenu" class="sidebarIconToggle">
    <div class="spinner diagonal part-1"></div>
    <div class="spinner horizontal"></div>
    <div class="spinner diagonal part-2"></div>
  </label>
  <div id="sidebarMenu">
    <ul class="sidebarMenuInner">
      <li><a href="https://vanila.io" target="_blank">Company</a></li>
      <li><a href="https://instagram.com/plavookac" target="_blank">Instagram</a></li>
      <li><a href="https://twitter.com/plavookac" target="_blank">Twitter</a></li>
      <li><a href="https://www.youtube.com/channel/UCDfZM0IK6RBgud8HYGFXAJg" target="_blank">YouTube</a></li>
    </ul>
  </div>
  <img src="skilllogo.jpg">
  <a class="active" href="#"><i class="fa fa-fw fa-home"></i> HOME</a>
  <a href="login.jsp"><i class="fa fa-fw fa-user"></i> LOGIN</a>
  <a href="contact.jsp"><i class="fa fa-fw fa-envelope"></i> CONTACT</a>
  <a href="about.jsp"><i class="fa fa-fw fa-search"></i> ABOUT US</a>
</div>

<!--**********************************************************************************************************-->
<div class="container" style="padding-top:15%;">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>You can reset your password here.</p>
                  <div class="panel-body">
                      
                      
    
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post" action="update_pass">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <input name="pass1" placeholder="Enter new password" class="form-control"  type="password"
                                 pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$" title="must conatain atleast a digit, a lowercase letter and min length must be 8" required="required">                            
                        </div><br>
						
						<div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <input name="pass2" placeholder="Confirm password" class="form-control"  type="password"
                                 pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$" title="must conatain atleast a digit, a lowercase letter and min length must be 8" required="required">                            
                        </div>
                      </div><br>
                      <div class="form-group">
                        <input name="email" class="btn btn-lg btn-primary btn-block" value="Update Password" type="submit">
                      </div>
                      
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                    </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
<!--***************************************************************************************************************-->
 
        <footer class="new_footer_area bg_color">
            <div class="new_footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget company_widget wow fadeInLeft" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
                                <h3 class="f-title f_600 t_color f_size_18">Get in Touch</h3>
                                <p>To access the content please get Register and practice!</p>
                                    <button class="btn btn_get btn_get_two" type="submit" onclick="location.href='login.jsp'">REGISTER </button>
                                    <p class="mchimp-errmessage" style="display: none;"></p>
                                    <p class="mchimp-sucmessage" style="display: none;"></p>
                                </form>
                            </div>
                        </div>
            
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget about-widget pl_70 wow fadeInLeft" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInLeft;">
                                <h3 class="f-title f_600 t_color f_size_18">CONTENT</h3>
                                <ul class="list-unstyled f_list">
                                    <li><a href="index.html">HOME</a></li>
                                    <li><a href="login.jsp">LOGIN</a></li>
                                    <li><a href="about.jsp">ABOUT US</a></li>
                                    <li><a href="contact.jsp">CONTACT US</a></li>
                                </ul>
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