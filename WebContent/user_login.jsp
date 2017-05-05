<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Captcha</title>

<!-- SET: FAVICON -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
<!-- END: FAVICON -->

<!-- SET: STYLESHEET -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- END: STYLESHEET -->

<!-- SET: SCRIPTS -->
<script type="text/javascript"></script>
<script type="text/javascript" src="md5.js"></script>
<script type="text/javascript" src="jcap1.js"></script>
<!-- END: SCRIPTS -->

<meta name="description" content="Your description"/>
<meta name="keywords" content="keyword1 keyword2"/>

<!--[if lt IE 8]>
<style type="text/css">
	.header-container	{ padding-bottom:0;}
	.welcome	{ padding-top:12px;}
    .container	{ padding-bottom:0;}
    .footer-in	{ padding-bottom:0;}
</style>
<![endif]-->
<style>
    input{
        width: 200px;
        height: 20px;
    }
</style>
<script>
    function validation(){
        //var uname=document.ulogin.username.value;
        var pass=document.ulogin.password.value;
        
//        if(uname==0){
//            alert("Enter username");
//            document.ulogin.username.focus();
//            return false;
       // }
        if(pass==0){
            alert("Enter password");
            document.ulogin.password.focus();
            return false;
        }
    }
</script>
</head>

<body>
<%
if(request.getParameter("status")!=null){
    out.println("<script>alert('Error:Enter correct code as shown in image.')</script>");
}

%>
<!-- wrapper starts -->
<div class="wrapper"> 
  
  <!-- Header Starts -->
  <div class="header">
    <div class="header-container">
         <p style="font-size: 25px;color: #ffffff"> Captcha as Graphical Passwords-A New Security
Primitive Based on Hard AI Problems</p>
      <div class="logo"> <a href="#"></a> </div>
      <div class="toll-free">
        <p></p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Header ends --> 
  
  <!-- Nav start -->
  <div class="nav">
    <div class="nav-in">
        <ul>
          <li class="last"><a href="home.jsp">Home </a></li>
        <li><a href="register.jsp">Register Page</a></li>
        <li><a href="userid.jsp">User Login</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li><a href="#">Blog</a></li>
        <li class="no_bg ped"><a href="#">Contact us</a></li>
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Nav end --> 
  
  <!-- maincontent Starts -->
  <div class="container">
    <div class="container-in"> <img src="images/container-bg.jpg" width="940" height="327" alt="img" />
    
      
       
        </div>
    
     
      <div class="clear"></div>
      <div class="welcome">
          <center style="font-size: 15px;">
                  <fieldset>
                  <h2 class="title"style="color: coral">USER LOGIN </h2><br></br>
                        
                        <form action="user_login" name="ulogin" method="post" onsubmit="return jcap();return validation()"> 
<!--                  USERNAME:<br>-->

<!--<input type="text" name="username" placeholder="Enter username"><br></br>-->
<!--                  PASSWORD:<br>-->
<input type="password" name="password" placeholder="Enter password"><br></br>
  <%
HttpSession user=request.getSession();
String uname=user.getAttribute("uname").toString();
Connection con= Dbconnection.getConn();
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select * from user_reg where username='"+uname+"'"); 
          String an=null;
          if(rt.next()){
           an=rt.getString("anum");
      
%>
 <p>Enter the code as it is shown:</p> <br>
     <input type="hidden" name="an" id="an" value="<%=an%>"></input><br>

<script type="text/javascript"> sjcap1(); </script>

<%
          }
%>
<!--<noscript><p>[This resource requires a Javascript enabled browser.]</p></noscript>-->
<!--<p><input type="submit" id="submit" name="submit" value="Submit"></p>
    -->
    <br></br>
    <input type="submit" onclick=" return validation();"value="LOGIN"style="background-color: yellowgreen;width: 70px;">
                                  <input type="reset" value="RESET"style="background-color: tomato;width: 70px;"><br></br>
                                                   
                
            
		</form>
      </fieldset>
                    </center>
        <p><a href="#"></a></p>
      </div>
      <div class="bottom-cont1">
        <h6></h6>
        <p> </p>
      </div>
      <div class="bottom-cont1">
        <h6></h6>
        <ul>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"> </a></li>
          <li><a href="#"></a></li>
        </ul>
      </div>
      <div class="bottom-cont1 last">
        <h6></h6>
        <span></span>
        <p></p>
        <span></span>
        <p></p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- aincontent ends --> 
  
  <!-- footer starts -->
  <div class="footer">
    <div class="footer-in">
      <div class="social-icons">
        <ul>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li class="last"></a></li>
        </ul>
        <div class="clear"></div>
      </div>
      <div class="copy">
        <p> <a href="http://www.freecsstemplates.com" target="_blank" rel="nofollow"></a></p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- footer ends --> 
  
</div>
<!-- wrapper ends -->

</body>
</html>
