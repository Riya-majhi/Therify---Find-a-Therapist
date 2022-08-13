<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin LogIn</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login-signup/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login-signup/css/style.css">
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
    </style>
    <link rel="icon" href="images/logo1.jpg" type="image/icon type">
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
                        <figure><img src="login-signup/images/signin-image.jpg" alt="sing in image"></figure>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Admin LogIn</h2>
                        <form method="POST" action="/admin-loggedin" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="email" id="your_name" placeholder="Your Email Address"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="your_pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
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