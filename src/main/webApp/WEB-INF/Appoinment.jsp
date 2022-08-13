<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appoinment Booking</title>
<!-- Font Icon -->
<link rel="stylesheet"
	href="login-signup/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Main css -->
<link rel="stylesheet" href="login-signup/css/style.css">
<link href="css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
<style type="text/css">
body{
background:#ADD8E6;
}
.main{
background:#ADD8E6;
}
.id{
display:none;
}
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
</style>
<link rel="icon" href="images/logo1.jpg" type="image/icon type">
</head>
<body >
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
						<h4 class="form-title">Get an Appoinment</h4>
						<form method="POST" action="/appoinmentsubmit"
							class="register-form" id="register-form" onsubmit="return submitForm(this);">
							<div class="id">
								<input name="id" id="id" value=" ${doc.id}" />
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name"
									value="Doctor Name: ${doc.userName}" readonly />
							</div>
							<div class="form-group">
								<label for="fees"><i class="fa fa-inr"></i></label> <input
									type="text" name="fees" id="pass" value="Fees: ${doc.userFee}"
									readonly />
							</div>
							<div class="form-group">
								<label for="time"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="time" id="re_pass"
									value="${doc.userTime1}" readonly />
							</div>
							<div class="form-group">
								<label for="day"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="date" name="day" id="re_pass" required />
							</div>

							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Book Now" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="login-signup/images/appoinment.jpg" alt="sing up image">
						</figure>
						
					</div>
				</div>
			</div>
		</section>



	</div>

	<!-- JS -->
	<script src="login-signup/vendor/jquery/jquery.min.js"></script>
	<script src="login-signup/js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
		function submitForm(form){
		
			swal({
				  title: "Are you sure?",
				  text: "This appointment will be booked",
				  icon: "info",
				  buttons: true,
				  dangerMode: false,
				})
				.then((isOkay) => {
				  if (isOkay) {
				    form.submit();
				  } else {
					  swal("Poof! Your appointment is not booked", {
					      icon: "warning",
					    });
					  return false;
				  }
				});
			return false;
		}
	</script>
</body>
</html>