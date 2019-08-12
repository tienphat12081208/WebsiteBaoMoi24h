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

</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">

            </button>
            <a class="navbar-brand" href="#"><strong><i class="icon fa fa-plane"></i> BÁO MỚI 24H</strong></a>

            <div id="sideNav" href="">
                <i class="fa fa-bars icon"></i>
            </div>
        </div>
    </nav>
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
                <a href="#"><i class="fa fa-sitemap"></i> Quản lý Bài Viết<span class="fa arrow"></span></a>
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
            <li class="active">Data</li>
        </ol>

    </div>
    <div id="page-inner">

        <!-- /. ROW  -->

        <div class="row">




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