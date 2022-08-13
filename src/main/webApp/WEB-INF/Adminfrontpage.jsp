<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Admin Dashboard</title>
    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">
    <!-- Styles -->
    <link href="assets2/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="assets2/css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="assets2/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="assets2/css/lib/themify-icons.css" rel="stylesheet">
    <link href="assets2/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="assets2/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="assets2/css/lib/weather-icons.css" rel="stylesheet" />
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
                                <h1>Hello, <span>Welcome Here</span></h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Home</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><i class="ti-server color-success border-success"></i>
                                    </div>
                                    <div class="stat-content dib">
                                        <div class="stat-text">Total Entries</div>
                                        <div class="stat-digit">${totalCount}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><i class="ti-user color-primary border-primary"></i>
                                    </div>
                                    <div class="stat-content dib">
                                        <div class="stat-text">New Customer</div>
                                        <div class="stat-digit">${userCount}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><i class="ti-support color-pink border-pink"></i>
                                    </div>
                                    <div class="stat-content dib">
                                        <div class="stat-text">Active Doctors</div>
                                        <div class="stat-digit">${doctorCount}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><i class="ti-link color-danger border-danger"></i></div>
                                    <div class="stat-content dib">
                                        <div class="stat-text">Appointments</div>
                                        <div class="stat-digit">${appoCount}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    </div>


                    <div class="row">
                        <div class="col-lg-12">
                            <div class="footer">
                                <!-- <p>2018 © Admin Board. - <a href="#">example.com</a></p> -->
                            </div>
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

    <script src="assets2/js/lib/bootstrap.min.js"></script>
    <script src="assets2/js/scripts.js"></script>
    <!-- bootstrap -->

    <script src="assets2/js/lib/calendar-2/moment.latest.min.js"></script>
    <script src="assets2/js/lib/calendar-2/pignose.calendar.min.js"></script>
    <script src="assets2/js/lib/calendar-2/pignose.init.js"></script>


    <script src="assets2/js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="assets2/js/lib/weather/weather-init.js"></script>
    <script src="assets2/js/lib/circle-progress/circle-progress.min.js"></script>
    <script src="assets2/js/lib/circle-progress/circle-progress-init.js"></script>
    <script src="assets2/js/lib/chartist/chartist.min.js"></script>
    <script src="assets2/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
    <script src="assets2/js/lib/sparklinechart/sparkline.init.js"></script>
    <script src="assets2/js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="assets2/js/lib/owl-carousel/owl.carousel-init.js"></script>
    <!-- scripit init-->
    <script src="assets2/js/dashboard2.js"></script>
</body>

</html>