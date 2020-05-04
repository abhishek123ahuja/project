<%-- 
    Document   : login
    Created on : Apr 25, 2020, 5:07:11 PM
    Author     : Ayush jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head><style>
        
             @import url('https://fonts.googleapis.com/css?family=Righteous');

#loader-4 #loader{
	position: relative;
	color:transparent;
	font-size: 4em;
	font-family: 'Righteous', cursive !important;
	text-decoration: none;
	float: left; 
	bottom: 40%;
	left: 40%;
   
    padding-top: 200px;
	z-index: 4;
    -webkit-animation: fade 4s linear infinite;
    -moz-animation: fade 4s linear infinite;
    -o-animation: fade 4s linear infinite;
    	animation: fade 4s linear infinite ;
    
}



#loader-4 > #loader:nth-of-type(1) {
	-webkit-animation-delay: 0.92s;
	-moz-animation-delay: 0.92s;
	-o-animation-delay: 0.92s;
		animation-delay: 0.92s;
}



/*keyframes for fade animation*/


@-webkit-keyframes fade{
	0%{
		text-shadow: rgb(255,255,255) 0 0 0;
	}

	90%,100%{
		text-shadow: rgb(0,0,0) 0 0 19px;
	}
}

@-moz-keyframes fade{
	0%{
		text-shadow: rgb(255,255,255) 0 0 0;
	}

	90%,100%{
		text-shadow: rgb(0,0,0) 0 0 19px;
	}
}

@-o-keyframes fade{
	0%{
		text-shadow: rgb(255,255,255) 0 0 0;
	}

	90%,100%{
		text-shadow: rgb(0,0,0) 0 0 19px;
	}
}

@keyframes fade{
	0%{
		text-shadow: rgb(255,255,255) 0 0 0;
	}

	90%,100%{
		text-shadow: rgb(0,0,0) 0 0 19px;
	}
}
    
    
    
    
    
    
    .animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
}
        </style>
  
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
    <link rel=stylesheet href="login.css">
    <script src="login.js"></script>
    
</head>
<body onload="noBack();"onpageshow="if (event.persisted) noBack();" onunload="">
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>


    <div class="loader-wrapper" id="loader-4">
        <div id="loader">LOADING...</div>      
    </div>
    
<script>
var myVar;
window.onload=myFunction;
function myFunction() {
  myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
  
}
</script>

      <div style="display:none;" id="myDiv" class="animate-bottom"> 
        

<div class="header">
    <div class="s"><form action="">
  <input type="search">
        <i class="fa fa-fw fa-search"></i>
</form>
        </div>
    <label style="text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;; float: left; font-size: 40px;font-family: 'Stylish';">SKILL ASSESS</label>
  <input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
  <label for="openSidebarMenu" class="sidebarIconToggle">
    <div class="spinner diagonal part-1"></div>
    <div class="spinner horizontal"></div>
    <div class="spinner diagonal part-2"></div>
  </label>
  <div id="sidebarMenu">
    <ul class="sidebarMenuInner">
      <li><a target="_self" href="about.jsp" target="_blank">ABOUT US</a></li>
      <li><a target="_self" href="contact.jsp" target="_blank">CONTACT</a></li>
      <li><a target="_self" href="login.jsp" target="_blank">SIGN IN</a></li>
    </ul>
  </div>
  <!--*********************************-->
  
  <a class="active" href="home.jsp" target="_self"><i class="fa fa-fw fa-home"></i> HOME</a>
  <a href="login.jsp" target="_self"><i class="fa fa-fw fa-user"></i> LOGIN</a>
  <a href="contact.jsp" target="_self"><i class="fa fa-fw fa-envelope"></i> CONTACT</a>
  <a href="about.jsp" target="_self"><i class="fa fa-fw fa-search"></i> ABOUT US</a>
</div>

<!--********************************************************************************    -->
   
<div class="form-modal" style="margin-top:15em;">
    
    <div class="form-toggle">
        <button id="login-toggle" onclick="toggleLogin()">log in</button>
        <button id="signup-toggle" onclick="toggleSignup()">sign up</button>
    </div>

    <div id="login-form">
        <form action="verify" method="post">
            <input type="text" name="email" placeholder="Enter email or username"/>
            <input type="password" name="pass" placeholder="Enter password"/>
            <input type="submit" class="btn login" value="Login">
            <p><a href="forget_pass.jsp">Forgotten account</a></p>
            <hr/>
        </form>
    </div>

    <div id="signup-form">
        <form action="insert" method="post">
            <input type="text" name="uname"placeholder="Choose username"/>
            <input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" placeholder="Enter your email" title="Please Enter Valid Email" required="Required"/>
            <input type="password" name="pass" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$" placeholder="Create password" title="Must conatain atleast a digit, a lowercase letter and min length must be 8" required="Required"/>
            <input type="password" name="confirm_pass" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$" placeholder="Confirm password" title="Must conatain atleast a digit, a lowercase letter and min length must be 8" required="Required"/>
            <button type="submit" class="btn signup">create account</button>
            <p>Clicking <strong>create account</strong> means that you are agree to our <a href="javascript:void(0)">terms of services</a>.</p>
            <hr/>
        </form>
    </div>

</div>
    
<!--*********************************************************************************   -->
<footer class="new_footer_area bg_color" style="margin-top:20em;">
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
                                    <li><a href="home.jsp">HOME</a></li>
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
</div>
    
</body>
</html>