<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Doctor Form Update</title>
<!-- ================= Favicon ================== -->
<!-- Standard -->
<link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
<!-- Retina iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="144x144"
	href="http://placehold.it/144.png/000/fff">
<!-- Retina iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="114x114"
	href="http://placehold.it/114.png/000/fff">
<!-- Standard iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="72x72"
	href="http://placehold.it/72.png/000/fff">
<!-- Standard iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="57x57"
	href="http://placehold.it/57.png/000/fff">
<!-- Styles -->
<link href="assets2/css/lib/select2/select2.min.css" rel="stylesheet">
<link href="assets2/css/lib/font-awesome.min.css" rel="stylesheet">
<link href="assets2/css/lib/themify-icons.css" rel="stylesheet">
<link href="assets2/css/lib/menubar/sidebar.css" rel="stylesheet">
<link href="assets2/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="assets2/css/lib/helper.css" rel="stylesheet">
<link href="assets2/css/style.css" rel="stylesheet">
<link rel="icon" href="images/logo1.jpg" type="image/icon type">

</head>

<body>
	<!-- #sidebar -->
	<div
		class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
		<div class="nano">
			<div class="nano-content">
				<ul>
					<div class="logo">
						<a href="/admin"> <img src="assets/images/logo.png" alt="" /><span>Admin</span></a>
					</div>
					<li class="label">Main</li>
					<li><a href="/admin"><i class="ti-home"></i> Dashboard </span></a></li>


					<li class="label">Tables</li>

					<li><a href="/user"><i class="ti-layout-grid4-alt"></i>User
							Table</a></li>
					<li><a href="/doctors"><i class="ti-layout-grid4-alt"></i>Therapist
							Table</a></li>
					<li><a href="/admin"><i class="ti-layout-grid4-alt"></i>Admin
							Table</a></li>
					 <li><a href="/appoinment_admin"><i class="ti-layout-grid4-alt"></i>Appointment Table</a></li>
					<!-- </ul>
                    </li> -->

					<li class="label">Form</li>
					<li><a href="/add-doctor"><i class="ti-view-list-alt"></i>
							Doctor Regitration Form </a></li>

				</ul>
			</div>
		</div>
	</div>
	<!-- /# sidebar -->

	<!-- navbar -->
	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="float-left">
						<div class="hamburger sidebar-toggle">
							<span class="line"></span> <span class="line"></span> <span
								class="line"></span>
						</div>
					</div>
					<div class="float-right">
						<div class="dropdown dib">
							<div class="header-icon" data-toggle="dropdown">
								<i class="ti-bell"></i>
								<div class="drop-down dropdown-menu dropdown-menu-right">
									<div class="dropdown-content-heading">
										<span class="text-left">No Recent Notifications</span>
									</div>

								</div>
							</div>
						</div>
						<div class="dropdown dib">
							<div class="header-icon" data-toggle="dropdown">
								<i class="ti-email"></i>
								<div class="drop-down dropdown-menu dropdown-menu-right">
									<div class="dropdown-content-heading">
										<span class="text-left">No Recent messages</span> <a
											href="email.html"> <i class="ti-pencil-alt pull-right"></i>
										</a>
									</div>

								</div>
							</div>
						</div>
						<div class="dropdown dib">
                            <div class="header-icon" >
                            <a href="/home">
                                <span class="user-avatar">Logout
                                    <i class="ti-power-off f-s-10"></i>
                                </span>
                                </a>
                                
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- #/navbar -->

	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">
							<div class="page-title">
								<h1>Doctor Registration Form</h1>
							</div>
						</div>
					</div>
					<!-- /# column -->
					<div class="col-lg-4 p-l-0 title-margin-left">
						<div class="page-header">
							<div class="page-title">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
									<li class="breadcrumb-item active">Doctor Registration
										Form</li>
								</ol>
							</div>
						</div>
					</div>
					<!-- /# column -->
				</div>
				<!-- /# row -->
				<section id="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<div class="form-validation">
										<form class="form-valide" action="/updatedoctor" method="post">
											<div class="form-group row">
												<label class="col-lg-4 col-form-label" for="name">Doctor
													Name<span class="text-danger">*</span>
												</label>
												<div class="col-lg-8">
													<input type="text" name="userName" id="user_name"
														value="${doc.userName}" class="form-control" required>
												</div>
											</div>


											<div class="form-group row">
												<label class="col-lg-4 col-form-label" for="address">Address<span
													class="text-danger">*</span></label>
												<div class="col-lg-8">
													<input type="text" id="user_city" name="userCity"
														value="${doc.userCity}" class="form-control" required="">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-4 col-form-label" for="address">Available
													mode<span class="text-danger">*</span>
												</label>
												<div class="col-lg-8">
													<select id="user_special" name="userSpecial"
														class="form-control" required>
														<option value="">Select..</option>
														<option value="Online">Online</option>
														<option value="Offline">Offline</option>
														<option value="Both">Both</option>


													</select>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-4 col-form-label" for="phone">Phone
													<span class="text-danger">*</span>
												</label>
												<div class="col-lg-6">
													<input type="tel" name="userMobile" id="user_mobile"
														value="${doc.userMobile}" class="form-control" required>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-4 col-form-label">Upload Image<span
													class="text-danger"> *</span></label>
												<div class="col-lg-6">
													<input type="file" class="form-control" id="user_file"
														name="userFile" required>

												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-4 col-form-label" for="fees">Fees<span
													class="text-danger">*</span></label>
												<div class="col-lg-6">
													<input type="text" name="userFee" id="user_fee"
														value="${doc.userFee}" class="form-control" required>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-4 col-form-label" for="userGender">Gender<span
													class="text-danger">*</span></label>
												<div class="col-lg-6">
													<input type="radio" name="userGender" class="user_gender"
														value="1" checked="true">&nbsp;&nbsp; Male
													&nbsp;&nbsp;<input type="radio" name="userGender"
														class="user_gender" value="2">&nbsp;&nbsp; Female
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-4 col-form-label" for="fees">Available
													Days<span class="text-danger">*</span>
												</label>
												<div class="col-lg-6">
													<input type="checkbox" name="userDay" value="Monday">&nbsp;&nbsp;
													Mon &nbsp;&nbsp; <input type="checkbox" name="userDay"
														value="Tuesday">&nbsp;&nbsp; Tue &nbsp;&nbsp;<input
														type="checkbox" name="userDay" value="Wednesday">&nbsp;&nbsp;
													Wed &nbsp;&nbsp; <input type="checkbox" name="userDay"
														value="Thursday">&nbsp;&nbsp; Thurse &nbsp;&nbsp;<input
														type="checkbox" name="userDay" value="Friday">&nbsp;&nbsp;
													Fri &nbsp;&nbsp; <input type="checkbox" name="userDay"
														value="Saturday">&nbsp;&nbsp; Sat &nbsp;&nbsp;<input
														type="checkbox" name="userDay" value="Sunday">&nbsp;&nbsp;
													Sun
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-4 col-form-label">Start time<span
													class="text-danger"> *</span></label>
												<div class="col-lg-6">
													<input type="Time" name="userTime1" id="user_time1"
														value="${doc.userTime1}" class="form-control timepicker"
														required>
												</div>
												<div id="errtime1"></div>
											</div>

											<div class="form-group row">
												<label class="col-lg-4 col-form-label">End Time<span
													class="text-danger"> *</span></label>
												<div class="col-lg-6">
													<input type="Time" name="userTime2" id="user_time2"
														value="${doc.userTime2}" class="form-control timepicker"
														required autocomplete="off">
												</div>
												<div id="errtime2"></div>
											</div>

											<div class="form-group row">
												<div class="col-lg-8 ml-auto">
													<button type="submit" class="btn btn-primary">Submit</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="footer"></div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>

	<!-- jquery vendor -->
	<script src="assets2/js/lib/jquery.min.js"></script>
	<script src="assets2/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="assets2/js/lib/menubar/sidebar.js"></script>
	<script src="assets2/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->

	<!-- bootstrap -->
	<!-- Select2 -->
	<script src="assets2/js/lib/select2/select2.full.min.js"></script>
	<script src="assets2/js/lib/form-validation/jquery.validate.min.js"></script>
	<script src="assets2/js/lib/form-validation/jquery.validate-init.js"></script>
	<script src="assets2/js/lib/bootstrap.min.js"></script>
	<script src="assets/js/scripts.js"></script>


	<!-- scripit init-->
</body>

</html>