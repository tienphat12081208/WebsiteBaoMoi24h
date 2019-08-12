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
        #tieude{
            margin-left: 10px;
            font-family: muli,sans-serif;
            color: #555;
            font-size: 30px;
            width: 620px;


        }
        #tomtat{
            font-size: 18px;
            margin-bottom: 13px;
            color: #555;
            margin-left: 10px;
            font-family: muli,sans-serif;
            width: 620px;
        }
        #chuyenmuc{

            font-size: 20px;
            margin-left: 3px;
            display: inline-block;
            border-left: solid 6px #ed1b24;
            font-family: roboto condensed,sans-serif;
            font-size: 20px;
            text-transform: uppercase;
            font-weight: 700;
            padding-left: 10px;
            margin-bottom: 16px;
            margin-top: 10px;
            color: #c00;

        }
        #khungcongtac{
            clear: left;
            margin-bottom: 15px;
        }
        #nguoidang{
            color: #222;
            font-size: 13.6px;
            font-weight: bold;
            float: left;

        }
         #time{
            color: #888;
            font-size: 13.6px;
            margin-left: 75px;


        }
       img{
            width: 620px;
            margin-left: 10px;
            margin-bottom: 13px;

        }
       #noidung{

            margin-left: 10px;
            margin-bottom: 15px;
        }
        a.btn.btn-primary{
            float: right;
        }


    </style>
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
</div>
<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">

            <li>
                <a  href="#"><i class="fa fa-dashboard"></i>Home</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-desktop" ></i>Quản lý Nhân Sự</a>
            </li>

            <li>
                <a href="#"><i class="fa fa-sitemap" class="active-menu"></i> Quản lý Bài Viết<span class="fa arrow"></span></a>
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
            <spring:url value="#" var="Admin_Nhansu"/>
            <li><a href="${Admin_Nhansu}" > Quản lý Bài Viết</a></li>
            <li class="active">Duyệt bài viết</li>
        </ol>

    </div>
    <div id="page-inner">

        <!-- /. ROW  -->

        <div class="row">
            <div class="col-xs-12" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="card-title">
                            <div class="title">DUYỆT BÀI VIẾT</div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <c:forEach items="${chuyen_muc}" var="chuyenmuc">
                            <c:if test="${show_news_obj.idchuyenmuc == chuyenmuc.idchuyenmuc}">
                                <h1 id="chuyenmuc">${chuyenmuc.chuyenmuc}</h1>
                            </c:if>
                        </c:forEach>

                        <div id="khungcongtac">
                            <p id ="nguoidang">${show_news_obj.tacgia}</p><p id="time"> đăng lúc ${show_news_obj.thoigian}</p>
                        </div>
                        <div id="form" class="col-md-6 col-md-offset-2 col-xs-4">
                        <h2 id="tieude">${show_news_obj.tieude}</h2>
                        <p id="tomtat">${show_news_obj.tomtat}</p>
                        <img src="${show_news_obj.hinhanh}">
                        <div id="noidung">${show_news_obj.noidung}</div>
                        <spring:url value="/updatetrangthai/${show_news_obj.id}" var="update_Trangthai"/>
                        <a href="${update_Trangthai}" class="btn btn-primary"  role="button">Duyệt bài viết</a>
                        </div>
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
<script type="text/javascript" src="../static/assets/js/Chart.min.js"></script>
<script type="text/javascript" src="../static/assets/js/chartjs.js"></script>

</body>
</html>