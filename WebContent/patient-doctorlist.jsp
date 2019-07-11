<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.*,admin.dao.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>患者功能医生列表</title>
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
	<!-- morris charts -->
	<link rel="stylesheet" href="charts/css/morris.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="css/jquery-jvectormap.css">
	<link rel="stylesheet" href="datatable/dataTables.bootstrap4.min.css">

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
                        <h3 class="block-title">查询医生信息</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="PatientIndex.html">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">患者服务</li>
                            <li class="breadcrumb-item active">查询医生信息</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Page Title -->
            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">

                <div class="row">
                    <!-- Widget Item -->
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow">
                            <h3 class="widget-title">医生列表</h3>
                            <div class="table-responsive mb-3">
                            <%List<Doctor> doctorlist = DoctorDao.listDoc;%>
                                <form action="" method="post" name="">   
                                	<table id="tableId" class="table table-bordered table-striped">
                                    	<thead>
                                        	<tr>

                                            	<th>医生 ID</th>
                                            	<th>医生 姓名</th>
                                            	<th>科室</th>
                                            	<th>医生简介</th>
                                            	<th>坐诊时间</th>

                                        	</tr>
                                    	</thead>
                                    	<tbody>
                                    		
                                    		
                                    		<%for(Doctor doctor : doctorlist){ %>
                                        	<tr>
                                            	<td><%=doctor.getdoctor_id() %></td>
                                            	<td><%=doctor.getdoctor_name() %></td>
                                            	<td><%=doctor.getdoctor_major() %></td>
                                           	 	<td><%=doctor.getdoctor_intro() %></td>
                                           	 	<td><%=doctor.getdoctor_time() %></td>
											</tr>
                                        	<%} %>
	                                    </tbody>
	                                </table>
                              	</form>
                            </div>
                        </div>
                    </div>
                    <!-- /Widget Item -->
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
    
    <!-- Datatable  -->
	<script src="datatable/jquery.dataTables.min.js"></script>
	<script src="datatable/dataTables.bootstrap4.min.js"></script>
    
	<!-- Custom Script-->
	<script src="js/custom.js"></script>
	<script src="js/custom-datatables.js"></script>
</body>

</html>