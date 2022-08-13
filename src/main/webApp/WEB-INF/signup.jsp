<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="login-signup/fonts/material-icon/css/material-design-iconic-font.min.css">
	<link rel="icon" href="images/logo1.jpg" type="image/icon type">

<!-- Main css -->
<link rel="stylesheet" href="login-signup/css/style.css">
<link href="css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
<style type="text/css">
.images {
	margin: 0 auto;
	padding: 30px 10px 10px 10px;
	display: block;
	background-color: #ffffff;
	color: #010101;
	border
	=0;
	width
	=150;
}

body {
	background: #ADD8E6;
}

.main {
	background: #ADD8E6;
}
</style>
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="images">
					<a href="/home"><img src="images/logo.jpg" border="0"
						width="150" class="CToWUd"></a>
				</div>
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
						<c:if test="${message!=null}">
							<div class="alert alert-danger" role="alert">${message}</div>
						</c:if>
						<c:if test="${message1!=null}">
							<div class="alert alert-danger" role="alert">${message1}</div>
						</c:if>
						<form method="POST" action="signupsubmit" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>

							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label><i class="zmdi zmdi-pin"></i></label> 
								<select	id="email" name="gender" required>
									<option value="">Select..</option>
									<option value="Female">Female</option>
									<option value="Male">Male</option>
								</select>
							</div>
							<div class="form-group">
								<label for="phone"><i class="zmdi zmdi-local-phone"></i></label>
								<input type="tel" name="phone" id="email"
									placeholder="Your Phone" pattern="[6789][0-9]{9}" />
							</div>
							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-pin"></i></label> <input
									type="text" name="address" id="email"
									placeholder="eg. 123/21 ABC Road" />
							</div>
							<div class="form-group">
								<label for="city"><i class="zmdi zmdi-pin"></i></label> <input
									type="text" name="city" id="email" placeholder="Your City" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="pass"
									placeholder="Password" />

							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="confirmPassword" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="login-signup/images/Signup.jpg" alt="sing up image">
						</figure>
						<a href="/login" class="signup-image-link">I am already member</a>
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