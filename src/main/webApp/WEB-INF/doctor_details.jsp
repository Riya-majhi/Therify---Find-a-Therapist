<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Doctor Details</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets1/img/favicon.png" rel="icon">
<link href="assets1/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!-- Font Awesome link -->
<link href="assets1/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- for bootstrap online -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Vendor CSS Files -->
<link href="assets1/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link href="assets1/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets1/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets1/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets1/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets1/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets1/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets1/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
	<link rel="icon" href="images/logo1.jpg" type="image/icon type">

<!-- Template Main CSS File -->
<link href="assets1/css/style.css" rel="stylesheet">
<style type="text/css">
.links {
	display: flex;
}
.link
.pic {
	height: 150px;
	width: 10px;
}

.btn {
	width: 50%;
	padding: 10px;
	margin-left: 20rem;
}
</style>
</head>
<body>

	<!-- ======= Doctors Section ======= -->
	<!-- ======= Doctors Section ======= -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light ">
			<div class="container-fluid ">
				<a class="navbar-brand " href="/home"><img
					src="images/logo.jpg"
					style="margin: 0 auto; padding: 0 10px 10px 10px; display: block; background-color: #ffffff; color: #010101"
					border="0" width="150" class="CToWUd"></a>
			</div>
		</nav>
	</header>
	<section id="doctors" class="doctors">
		<div class="container">

			<div class="section-title">
				<h2>Doctors List</h2>
				<p>The best years of your life are the ones in which you decide
					your problems are your own. You do not blame them on your mother,
					the ecology, or the president. You realize that you control your
					own destiny.</p>
			</div>
			
			<c:forEach items="${docs}" var="doc">
				<div class="row">

					<div class="col-lg-10">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="/imagedata/${doc.userFile}" class="img-fluid" alt=""
									height=150 width=180>
							</div>
							<div class="member-info">


								<h4>${doc.userName}</h4>
								<span>Counselling Psychologist</span>
								<p>${doc.userExperience}years experience overall</p>
								<p>
									<b><i class="fa-solid fa-location-dot"></i>&nbsp;${doc.userCity}</b>
								</p>
								<p>
									<i class="fa fa-inr"></i>&nbsp; ${doc.userFee} consulting fee at
									Clinic
								</p>
								<p>
									<i class="fa-solid fa-clock"></i>&nbsp;Visiting time-
									${doc.userTime1}-${doc.userTime2}
								</p>
								<p>
									<i class="fa-solid fa-calendar-days"></i></i> &nbsp;
									<c:forEach items="${doc.userDay}" var="day">
                						${day},&nbsp;
                
               						</c:forEach>
								</p>
								<div class="links">
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href="">
											   <i class="ri-facebook-fill"></i></a> <a href="">
												<i class="ri-instagram-fill"></i></a> <a href=""> 
												<i class="ri-linkedin-box-fill"></i>
									</a> 
									
								</div>
										<a class="btn btn-primary" href="/appoinment?id=${doc.id}">Book Appoinment</a>
								</div>

								

							</div>
						</div>
					</div>
					<hr />
				</div>
			</c:forEach>


		</div>
	</section>
	<!-- End Doctors Section -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
	<script src="assets1/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Analytics -->

</body>
</html>