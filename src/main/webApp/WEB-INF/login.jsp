<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign In</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login-signup/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="icon" href="images/logo1.jpg" type="image/icon type">
    <link rel="stylesheet" href="login-signup/css/style.css">
    <link href="css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
    <style type="text/css">
    	
    .images{
    margin:0 auto;
    padding: 30px 10px 10px 10px;
    display:block;
    background-color:#ffffff;
    color:#010101;
     border=0;
      width=150;
       
    }
    body{
background:#ADD8E6;
}
.main{
background:#ADD8E6;
}
    </style>
</head>
<body>

    <div class="main">


        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
            <div class="images"> <a href = "/home"><img src="images/logo.jpg"  border="0" width="150" class="CToWUd"></a>
					</div>
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="login-signup/images/login.jpg" alt="sing in image"></figure>
                        <a href="/signup" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <c:if test="${message!=null}">
                        	<div class="alert alert-danger" role="alert">${message}</div>
                        </c:if>
                        <form method="POST" action="loginsubmit" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="email" id="your_name" placeholder="Your Email Address"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="your_pass" placeholder="Password"/>
                            </div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="login-signup/vendor/jquery/jquery.min.js"></script>
    <script src="login-signup/js/main.js"></script>
</body>
</html>