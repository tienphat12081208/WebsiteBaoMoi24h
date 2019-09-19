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
    <title>Thêm bài viết</title>
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
    <script src="../static/ckeditor/ckeditor.js"></script>
    <style>
        .panel-body{
            width: 70%;
            margin-left: 15%;
            border: 1px solid #ccc;
            margin-bottom: 18px;
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
                <a  href="#"><i class="fa fa-dashboard"></i>Home</a>
            </li>
            <li>
                <spring:url value="/adminnhansu" var="Admin_Nhansu"/>
                <a  href="${Admin_Nhansu}"><i class="fa fa-desktop"></i>Quản lý Nhân Sự</a>
            </li>

            <li>
                <a class="active-menu" href="#"><i class="fa fa-sitemap"></i> Quản lý Bài Viết<span class="fa arrow"></span></a>
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
                            <div class="title">THÊM BÀI VIẾT</div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <spring:url value="/save_news" var="save_new_URL" />
                        <form:form modelAttribute="news_form" method="post" action="${save_new_URL }" class="form-horizontal" role="form" >
                        <form:hidden path="id"/>
                            <div class="form-group">
                                <label for="tieude" class="col-sm-3 control-label">Tiêu đề</label>
                                <div class="col-sm-9">
                                    <form:input path="tieude" id="tieude" name="tieude" placeholder="Tiêu đề"  class="form-control"/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="theloai" class="col-sm-3 control-label">Thể loại</label>
                                <div class="col-sm-3">
                                    <form:select path="idchuyenmuc" class="form-control" id="theloai">
                                        <c:forEach items="${chuyen_muc}" var="chuyenmuc">
                                            <form:option value="${chuyenmuc.idchuyenmuc}">${chuyenmuc.chuyenmuc}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                             </div>

                              <div class="form-group">
                                    <label for="nguoidang" class="col-sm-3 control-label">Người đăng</label>
                                    <div class="col-sm-4">
                                        <form:input path="tacgia" id="nguoidang" value="${Name}" class="form-control"/>
                                    </div>
                              </div>
                             <div class="form-group">
                                <label for="hinhanh" class="col-sm-3 control-label">Ảnh đại diện</label>
                                <div class="col-sm-9">
                                    <button>Chọn tệp hình</button>
                                    <span class="help-block">Không có tệp nào được chọn</span>
                                    <form:textarea path="hinhanh" id="hinhanh" cssStyle="width: 100%; height: auto;"  placeholder="URL"/>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tomtat" class="col-sm-3 control-label">Tóm tắt</label>
                                <div class="col-sm-9">
                                    <form:textarea path="tomtat" id="tomtat" class="form-control"/>
                                </div>
                             </div>

                            <div class="form-group">
                                <label for="noidung" class="col-sm-3 control-label">Nội dung</label>
                                <div class="col-sm-9">
                                    <form:textarea path="noidung" id="noidung1"/>
                                    <script type="text/javascript">
                                        config={};
                                        config.entities_latin=false;
                                        CKEDITOR.replace('noidung1',config);
                                    </script>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <form:input path="thoigian" id="thoigian" class="form-control" type="hidden"></form:input>
                                </div>
                            </div>
                            <button role="button" type="submit" class="btn-circle" style="float: right; background-color: #0C80F5">Lưu</button>
                        </form:form>
                    </div>
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
<script type="text/javascript" src="../assets/js/Chart.min.js"></script>
<script type="text/javascript" src="../assets/js/chartjs.js"></script>

</body>
</html>