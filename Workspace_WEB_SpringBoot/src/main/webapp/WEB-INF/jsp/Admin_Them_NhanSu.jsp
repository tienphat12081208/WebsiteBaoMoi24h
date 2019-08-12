<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>ADMIN</title>
    <!-- Bootstrap Styles-->
    <link href="../static/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="../static/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="../static/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="../static/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="../static/assets/js/Lightweight-Chart/cssCharts.css">
    <style>
        .panel-body{
            width: 40%;
            margin-left: 30%;
            border: 1px solid #ccc;
            margin-bottom: 18px;

        }

        .form_tc h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        .form_tc_1 h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
       .form_tc p{
            float: left;
            margin-left: 3px;
            color: red;
        }
       .form_tc input{
            float: right;
            margin-top: 20px;
            margin-left:20px;
            height: 32px;
            width: 64%;
            padding: 8px;
            margin-right: 10px;

        }
        .form_tc textarea{
            float: right;
            margin-top: 20px;
            margin-left:20px;
            height: 75px;
            width: 64%;
            margin-right: 10px;

        }
        .form_tc select{
            float: left;
            margin-top: 20px;
            margin-left: 24%;
            text-align: center;
            font-size: 16px;
            width: 25%;
        }
        #radio4{
            float: left;
            margin-left: 23%;
            font-size: 16px;

        }
         #radio4 label{
             margin-top: 20px;
         }
        #radio5{
            margin-left: 8%;
            font-size: 16px;
        }
        #radio5 label{
            margin-top: 20px;

        }
        .btn-circle{
            float: right;
            background: #0C80F5;
            color: white;
            font-size: 16px;
            font-weight: bold;

        }

    </style>

</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            <a class="navbar-brand" href="#"><strong><i class="icon fa fa-plane"></i> BÁO MỚI 24H</strong></a>

            <div id="sideNav" href="">
                <i class="fa fa-bars icon"></i>
            </div>
        </div>
    </nav>
</div>
<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">

            <li>
                <a class="active-menu" href="#"><i class="fa fa-dashboard"></i>Home</a>
            </li>
            <li>
                <spring:url value="/adminnhansu" var="Admin_Nhansu"/>
                <a  href="${Admin_Nhansu}"><i class="fa fa-desktop"></i>Quản lý Nhân Sự</a>
            </li>

            <li>
                <a href="#"><i class="fa fa-sitemap" ></i> Quản lý Bài Viết<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <spring:url value="/adminnews" var="Admin_News"/>
                        <a href="${Admin_News}">Tất cả bài viết</a>
                    </li>
                    <li>
                        <a href="#">Bài viết đang ẩn</a>
                    </li>
                    <li>
                        <a href="#"class="active-menu">Duyệt bài viết</a>
                    </li>
                </ul>
            </li>


        </ul>

    </div>

</nav>
<!-- /. NAV SIDE  -->
 <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                Admin <small>Welcome John Doe</small>
            </h1>
            <ol class="breadcrumb">
                <spring:url value="/admin" var="Admin"/>
                <li><a href="${Admin}">Admin</a></li>
                <spring:url value="/adminnhansu" var="Admin_Nhansu"/>
                <li><a href="${Admin_Nhansu}">Quản lý nhân sự</a></li>
                <li class="active">Form nhan vien</li>
            </ol>

        </div>
        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="card-title">
                                <div class="title">FORM NHÂN VIÊN</div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <spring:url value="/save_Personnel" var="save_personnel" />
                            <form:form modelAttribute="Personnel_Form" method="post" action="${save_personnel }">
                             <form:hidden path="id"/>
                        <div class="row ">
                            <div class="form_tc" class="col-md-4">
                                <h2>Họ tên</h2>
                                <p>*</p>
                                <form:input path="name"/>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="form_tc" class="col-md-4">
                                <h2>Tên đăng nhập</h2>
                                <p>*</p>
                                <form:input path="user" />
                            </div>
                        </div>
                        <div class="row ">
                            <div class="form_tc" class="col-md-4">
                                <h2>Mật khẩu</h2>
                                <p>*</p>
                                <form:input path="pass"  type="password"/>
                            </div>
                        </div>
                         <div class="row ">
                             <div class="form_tc" class="col-md-4">
                                    <h2>CMND</h2>
                                    <p>*</p>
                                    <form:input path="cmnd" />
                              </div>

                         </div>
                        <div class="row ">
                            <div class="form_tc" class="col-md-4 ">
                                <h2>Nơi sinh</h2>
                                <form:input path="noisinh"  />
                            </div>

                        </div>

                        <div class="row ">
                            <div class="form_tc" class="col-md-4">
                                <h2>Ngày sinh</h2>
                                <form:input path="ngaysinh" />
                            </div>
                        </div>
                        <div class="row ">
                            <div class="form_tc_1" class="col-md-4">
                                <h2>Giới tính</h2>
                                <div id="radio4" >
                                <form:radiobutton path="gioitinh" value="Nam"/>
                                <label for="radio4">Nam</label>
                                </div>
                                <div id="radio5">
                                <form:radiobutton path="gioitinh" value="Nữ" id="radio5"/>
                                <label for="radio5">Nữ</label>
                                </div>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="form_tc" class="col-md-4 ">
                                <h2>Địa chỉ</h2>
                                <form:textarea path="diachi" />
                            </div>

                        </div>
                        <div class="row ">
                            <div class="form_tc" class="col-md-4">
                                <h2>Vai trò</h2>
                                <p>*</p>
                                <form:select path="idvaitro">
                                    <form:option value="1">Admin</form:option>
                                    <form:option value="2">Báo viên</form:option>
                                </form:select>
                            </div>

                        </div>
                        <button role="button" type="submit" class="btn-circle">Lưu</button>

                       </form:form>

                    </div>

                </div>
            </div>
        </div>

    </div>
 </div>


    <!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="../static/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../static/assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script src="../static/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="../static/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="../static/assets/js/morris/morris.js"></script>


<script src="../static/assets/js/easypiechart.js"></script>
<script src="../static/assets/js/easypiechart-data.js"></script>

<script src="../static/assets/js/Lightweight-Chart/jquery.chart.js"></script>

<!-- Custom Js -->
<script src="../static/assets/js/custom-scripts.js"></script>


<!-- Chart Js -->
<script type="text/javascript" src="../assets/js/Chart.min.js"></script>
<script type="text/javascript" src="../assets/js/chartjs.js"></script>

</body>
</html>