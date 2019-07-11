<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>患者功能查看治疗方案</title>
	<!-- Fav  Icon Link -->
	<link rel="shortcut icon" type="image/png" href="images/fav.png">
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- themify icons CSS -->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Animations CSS -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Main CSS -->
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/green.css" id="style_theme">
	<link rel="stylesheet" href="css/responsive.css">

	<script src="js/modernizr.min.js"></script>
</head>

<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	
	<div class="wrapper">
		<!-- Page Content -->
        <div id="content">
            <!-- Top Navigation -->
            <div class="container top-brand">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <div class="sidebar-header">
                            <a href="index.html"><img src="images/logo-dark.png" class="logo" alt="logo"></a>
                        </div>
                    </div>
                    <ul class="nav justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link">
                                <span title="Fullscreen" class="ti-fullscreen fullscreen"></span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="modal" data-target=".lochana-modal-lg">
                                <span class="ti-search"></span>
                            </a>
                            <div class="modal fade lochana-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog modal-lorvens">
                                    <div class="modal-content lochana-box-shadow2">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Search Patient/医生:</h5>
                                            <span class="ti-close" data-dismiss="modal" aria-label="Close">
                                            </span>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="search-term" placeholder="Type text here">
                                                    <button type="button" class="btn btn-lorvens lochana-bg">
                                                        <span class="ti-location-arrow"></span> Search
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <span class="ti-announcement"></span>
                            </a>
                            <div class="dropdown-menu lochana-box-shadow2 notifications animated flipInY">
                                <h5>Notifications</h5>
                                <a class="dropdown-item" href="#">
                                    <span class="ti-wheelchair"></span> New Patient Added
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="ti-money"></span> Patient payment done
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="ti-time"></span>Patient Appointment booked
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="ti-wheelchair"></span> New Patient Added
                                </a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <span class="ti-user"></span>
                            </a>
                            <div class="dropdown-menu lochana-box-shadow2 profile animated flipInY">
                                <h5>John Willing</h5>
                                <a class="dropdown-item" href="#">
                                    <span class="ti-settings"></span> Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="ti-help-alt"></span> Help
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="ti-power-off"></span> Logout
                                </a>
                            </div>
                        </li>
                    </ul>

                </nav>
            </div>
            <!-- /Top Navigation -->
            <!-- Menu -->
            <div class="container menu-nav">
                <nav class="navbar navbar-expand-lg lochana-bg text-white">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="ti-menu text-white"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                                   aria-expanded="false"><span class="ti-home"></span>首页</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="patient-Index.jsp">患者主页</a>
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                                   aria-expanded="false"><span class="ti-wheelchair"></span>预约服务</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="patient-doctorlist.jsp">查询医生信息</a>
                                    <a class="dropdown-item" href="patient-appointment.jsp">预约门诊</a>

                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                                   aria-expanded="false"><span class="ti-home"></span>治疗方案</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="patient-viewTreatmentPlan.jsp">查看治疗方案</a>
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                                   aria-expanded="false"><span class="ti-home"></span>医患留言</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="patient-faq.jsp">留言板</a>
                                </div>
                            </li>


                        </ul>
                    </div>
                </nav>
            </div>
            <!-- /Menu -->
            <!-- Breadcrumb -->
            <!-- Page Title -->
            <div class="container mt-0">
                <div class="row breadcrumb-bar">
                    <div class="col-md-6">
                        <h3 class="block-title">查看治疗方案</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="PatientIndex.html">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">患者服务</li>
                            <li class="breadcrumb-item active">查看治疗方案</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow pb-3">

                            <!-- Invoice Content -->
                            <div class="row">
                                
                                <div class="col-sm-12 mb-2">
                                    <strong class="lochana-text-color">治疗方案及花费:</strong>
                                </div>
                                <div class="col-sm-12">
                                    <table class="table table-bordered table-striped table-invioce">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">项目/药物</th>
                                                <th scope="col">单价</th>
                                                <th scope="col">数量</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Chest X-ray</td>
                                                <td>$ 120</td>
                                                <td>10</td>

                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Injury Operation</td>
                                                <td>$ 1000</td>
                                                <td>20</td>

                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-sm-4 ml-auto">
                                    <table class="table table-bordered table-striped">
                                        <tbody>
                                                                                      
                                            <tr>
                                                <td>
                                                    <strong>总价</strong>
                                                </td>
                                                <td>
                                                    <strong>$ 1038</strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="col-sm-12">
                                    <div class="border p-4">
                                        <strong>医嘱:</strong>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur id illo incidunt, iste libero quisquam? A aut cumque
                                        fuga fugit iusto libero officia optio quasi, quisquam saepe voluptate voluptatibus voluptatum.
                                        <br>
                                        <br>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <nav aria-label="Page navigation example">

                                    </nav>
                                </div>
                            </div>

                            <!-- /Invoice Content -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Main Content -->
            <!--Copy Rights-->
            <div class="container">
                <div class="d-sm-flex justify-content-center">
                    <span class="text-muted text-center d-block d-sm-inline-block">Copyright © 2018 . All rights reserved.</span>
                </div>
            </div>
            <!-- /Copy Rights-->
        </div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
			<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<!-- Jquery Library-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<!-- Popper Library-->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap Library-->
	<script src="js/bootstrap.min.js"></script>
	<!-- Custom Script-->
	<script src="js/custom.js"></script>
</body>

</html>