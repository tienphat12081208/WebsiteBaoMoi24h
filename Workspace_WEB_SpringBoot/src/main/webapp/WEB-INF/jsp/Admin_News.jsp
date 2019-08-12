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
                <a  href="#"><i class="fa fa-dashboard"></i>Home</a>
            </li>
            <li>
                <spring:url value="/adminnhansu" var="Admin_Nhansu"/>
                <a  href="${Admin_Nhansu}"><i class="fa fa-desktop"></i>Quản lý Nhân Sự</a>
            </li>

            <li>
                <a href="#" class="active-menu" ><i class="fa fa-sitemap"></i> Quản lý Bài Viết<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <spring:url value="/adminnews" var="Admin_News"/>
                        <a href="${Admin_News}" class="active-menu">Tất cả bài viết</a>
                    </li>
                    <li>
                        <a href="#">Bài viết đang ẩn</a>
                    </li>
                    <li>
                        <a href="#">Duyệt bài viết</a>
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
            <spring:url value="#" var=""/>
            <li><a href="" >Quản lý bài viết</a></li>
            <li class="active">Tất cả bài viết</li>
        </ol>

    </div>
    <div id="page-inner">

        <!-- /. ROW  -->

        <div class="row">
            <div class="col-xs-12" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="card-title">
                            <div class="title">DANH SÁCH BÀI VIẾT</div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <th scope="row">#ID</th>
                            <th scope="row">Tiêu đề</th>
                            <th scope="row">Chuyên mục</th>
                            <th scope="row">Tóm tắt</th>
                            <th scope="row">Người đăng</th>
                            <th scope="row">Thời gian</th>
                            <th scope="row">Trạng thái</th>
                            <th scope="row">Chỉnh sửa</th>
                            <th scope="row">Xóa</th>
                            </thead>
                            <tbody>
                            <c:forEach items="${obj_new_list}" var="new_list">
                                <tr>
                                    <td>${new_list.id }</td>
                                    <td>${new_list.tieude }</td>
                                    <c:forEach items="${chuyen_muc}" var="chuyenmuc">
                                        <c:if test="${new_list.idchuyenmuc == chuyenmuc.idchuyenmuc}">
                                            <td>${chuyenmuc.chuyenmuc}</td>
                                        </c:if>
                                    </c:forEach>
                                    <td>${new_list.tomtat}</td>
                                    <td>${new_list.tacgia}</td>
                                    <td>${new_list.thoigian}</td>
                                    <c:forEach items="${trangthai_list}" var="trangthai">
                                        <c:if test="${new_list.id == trangthai.idnews}">
                                            <c:if test="${trangthai.trangthai!=0}">
                                                <td><a  class="btn btn-primary" role="button">Đã duyệt</a></td>
                                            </c:if>
                                            <c:if test="${trangthai.trangthai==0}">
                                                <spring:url value="duyetnews/${new_list.id}" var="Duyet_News"/>
                                                <td><a href="${Duyet_News}" class="btn btn-danger"  role="button">Chưa duyệt</a></td>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>

                                    <td>
                                        <spring:url value="update_news/${new_list.id}" var="update_News_URL" />
                                        <a class="btn btn-primary" href="${update_News_URL }" role="button" onclick="Ckick_Chinhsua()">Chỉnh sửa</a>

                                    </td>
                                    <td>
                                        <spring:url value="/delete_news/${new_list.id}" var="delete_News_URL" />
                                        <a class="btn btn-danger" href="${delete_News_URL}" role="button">Xóa</a>

                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

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