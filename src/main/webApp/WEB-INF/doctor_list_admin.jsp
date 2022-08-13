<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Doctor Table</title>

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
<link href="assets2/css/lib/font-awesome.min.css" rel="stylesheet">
<link href="assets2/css/lib/themify-icons.css" rel="stylesheet">
<link href="assets2/css/lib/jsgrid/jsgrid-theme.min.css"
	rel="stylesheet" />
<link href="assets2/css/lib/jsgrid/jsgrid.min.css" type="text/css"
	rel="stylesheet" />
<link href="assets2/css/lib/menubar/sidebar.css" rel="stylesheet">
<link href="assets2/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="assets2/css/lib/helper.css" rel="stylesheet">
<link href="assets2/css/style.css" rel="stylesheet">
<link rel="icon" href="images/logo1.jpg" type="image/icon type">
</head>

<body>

<!-- #sidebar -->
    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <ul>
                    <div class="logo"><a href="/admin">
                            <img src="assets/images/logo.png" alt="" /><span>Admin</span></a></div>
                    <li class="label">Main</li>
                    <li><a href="/admin"><i class="ti-home"></i> Dashboard </span></a>
                    </li>

                    
                    <li class="label">Tables</li>
                    
                            <li><a href="/user"><i class="ti-layout-grid4-alt"></i>User Table</a></li>
                            <li><a href="/doctors"><i class="ti-layout-grid4-alt"></i>Therapist Table</a></li>
                            <li><a href="/admin"><i class="ti-layout-grid4-alt"></i>Admin Table</a></li>
                             <li><a href="/appoinment_admin"><i class="ti-layout-grid4-alt"></i>Appointment Table</a></li>
                        <!-- </ul>
                    </li> -->
                    
                    <li class="label">Form</li>
                    <li><a href="/add-doctor"><i class="ti-view-list-alt"></i> Doctor Regitration Form </a></li>
                    
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
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
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
                                        <span class="text-left">No Recent messages</span>
                                        <a href="email.html">
                                            <i class="ti-pencil-alt pull-right"></i>
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
								<h1>
									Hello, <span>Welcome</span>
								</h1>
							</div>
						</div>
					</div>
					<!-- /# column -->
					<div class="col-lg-4 p-l-0 title-margin-left">
						<div class="page-header">
							<div class="page-title">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
									<li class="breadcrumb-item active">Table-Jsgrid</li>
								</ol>
							</div>
						</div>
					</div>
					<!-- /# column -->
				</div>
				<!-- /# row -->
				<div id="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="jsgrid-table-panel">
									<!-- <div id="jsGrid"></div> -->
									<!-- #table -->
									<h3>All Therapist Informations</h3>
									<table class="table table-striped">
										<thead>
											<tr>
											<tr>
												<th>Serial number</th>
												<th>Name</th>
												<th>Gender</th>
												<th>Address</th>
												<th>Contact Number</th>
												<th>Availability Mode</th>
												<th>Available days</th>
												<th>Fees</th>
												<th>Start Time</th>
												<th>End Time</th>
												<!--<th>Profile View</th>  -->
												<th></th>

												<th>Add therapist &nbsp; <a href="/add-doctor"> <i
														class="fa fa-plus-circle" style="font-size: 25px;"></i></a></th>
											</tr>
										</thead>
										<tbody>
											<%!int i = 1;%>
											<c:forEach items="${docs}" var="doc">
												<tr>
													<td>${doc.id}</td>
													<td>${doc.userName}</td>
													<td>
													<c:if test="${doc.userGender==1}">
														Male
													</c:if>
													<c:if test="${doc.userGender==2}">
														Female
													</c:if>
													</td>
													<td>${doc.userCity}</td>
													<td>${doc.userMobile}</td>
													<td>${doc.userSpecial}</td>
													<td><c:forEach items="${doc.userDay}" var="day">
															${day}
														</c:forEach></td>
													<td>${doc.userFee}</td>
													<td>${doc.userTime1}</td>
													<td>${doc.userTime2}</td>
													<!-- <td><img alt="sample" src="/imagedata/${doc.userFile}"
														height=40px width=40px></td>  -->
														<td><a class="btn"
														href="/delete-doctor?id=${doc.id}"> <i
														class="fa fa-trash-o"> </i> 
													</a>
													</td>
													<td><a class="btn"
														href="/update-doctor?id=${doc.id}"> <i
															class="ti-pencil"> </i>
													</a></td>
												</tr>
											</c:forEach>


										</tbody>
									</table>
									<!-- #/table -->
								</div>
							</div>
						</div>
						<!-- /# card -->
					</div>
					<!-- /# column -->
				</div>
				<!-- /# row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="footer">
							<!-- <p>2018 © Admin Board. - <a href="#">example.com</a></p> -->
						</div>
					</div>
				</div>
			</div>
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



	<!-- JS Grid Scripts Start-->
	<script src="assets2/js/lib/jsgrid/db.js"></script>
	<script src="assets2/js/lib/jsgrid/jsgrid.core.js"></script>
	<script src="assets2/js/lib/jsgrid/jsgrid.load-indicator.js"></script>
	<script src="assets2/js/lib/jsgrid/jsgrid.load-strategies.js"></script>
	<script src="assets2/js/lib/jsgrid/jsgrid.sort-strategies.js"></script>
	<script src="assets2/js/lib/jsgrid/jsgrid.field.js"></script>
	<script src="assets2/js/lib/jsgrid/fields/jsgrid.field.text.js"></script>
	<script src="assets2/js/lib/jsgrid/fields/jsgrid.field.number.js"></script>
	<script src="assets2/js/lib/jsgrid/fields/jsgrid.field.select.js"></script>
	<script src="assets2/js/lib/jsgrid/fields/jsgrid.field.checkbox.js"></script>
	<script src="assets2/js/lib/jsgrid/fields/jsgrid.field.control.js"></script>
	<script src="assets2/js/lib/jsgrid/jsgrid-init.js"></script>
	<!-- JS Grid Scripts End-->

	<script src="assets2/js/lib/bootstrap.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<!-- scripit init-->

</body>

</html>