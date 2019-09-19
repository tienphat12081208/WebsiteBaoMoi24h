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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        @media screen and (max-width: 1200px){
           .tablenhansu{ overflow-x:auto}
        }
        .click{
            z-index: 100;
            margin: 0 0 0 0;
            padding: 0;
            min-height: 1200px;
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

            <div id="sideNav" >
                <i class="fa fa-bars icon" id="click"></i>
            </div>

        </div>
    </nav>
</div>
    <nav class="navbar-default navbar-side" role="navigation" id="navigation_click">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a  href="#"><i class="fa fa-dashboard"></i>Home</a>
                </li>
                <li>
                    <spring:url value="/adminnhansu" var="Admin_Nhansu"/>
                    <a  href="${Admin_Nhansu}" class="active-menu"><i class="fa fa-desktop"></i>Quản lý Nhân Sự</a>
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
                <spring:url value="/adminnhansu" var="Admin_Nhansu"/>
                <li><a href="${Admin_Nhansu}" >Quản lý nhân sự</a></li>
                <li class="active">Data</li>
            </ol>

        </div>
        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-xs-12" >
                    <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="card-title">
                                    <div class="title">DANH SÁCH NHÂN VIÊN</div>
                                </div>
                            </div>
                        <div class="panel-body">
                    <form:form modelAttribute="personnel_form" method="GET" action="${FINDURL }" class="col-xs-12 ">
                        <div class="form-group">
                            <label style="">Search</label>
                            <form:input path="name" cssClass="text-input" id="name"  placeholder="Tìm kiếm theo tên"/>
                            <button type="submit" class="btn btn-primary">Tìm Kiếm </button>
                            </form:form>
                        </div>
                  <div class="row">
            <div class="tablenhansu col-xs-12">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <th scope="row">#ID</th>
                    <th scope="row">Ho va Ten</th>
                    <th scope="row">Username</th>
                    <th scope="row">Password</th>
                    <th scope="row">Ngày Sinh</th>
                    <th scope="row">Nơi Sinh</th>
                    <th scope="row">CMND</th>
                    <th scope="row">Giới Tính</th>
                    <th scope="row">Địa chỉ</th>
                    <th scope="row">Vai trò</th>
                    <th scope="row">Chỉnh sửa</th>
                    <th scope="row">Xóa</th>
                    </thead>
                    <tbody>
                    <c:forEach items="${obj_personnel_list}" var="personnel">

                        <tr>
                            <td>${personnel.id }</td>
                            <td>${personnel.name }</td>
                            <td>${personnel.user}</td>
                            <td>${personnel.pass}</td>
                            <td>${personnel.ngaysinh}</td>
                            <td>${personnel.noisinh}</td>
                            <td>${personnel.cmnd}</td>
                            <td>${personnel.gioitinh}</td>
                            <td>${personnel.diachi}</td>
                            <c:forEach items="${vaitro_OBJ}" var="vaitro">
                                <c:if test="${personnel.idvaitro == vaitro.idvaitro}">
                                    <td>${vaitro.vaitro}</td>
                                </c:if>
                            </c:forEach>
                            <td>
                                <spring:url value="updateopersonnel/${personnel.id}" var="update_Personnel_URL" />
                                <a class="btn btn-primary" href="${update_Personnel_URL }" role="button" >Chỉnh sửa</a>

                            </td>
                            <td>
                                <spring:url value="/delete_Personnel/${personnel.id }" var="delete_Personnel_URL" />
                                <a class="btn btn-danger" href="${delete_Personnel_URL }" role="button">Xóa</a>

                            </td>
                        </tr>

                    </c:forEach>
                    </tbody>
                </table>
                </div>
            </div>
                        <spring:url value="/add_Personnel" var="add_Personnel_URL" />
                <a class="btn btn-primary" href="${add_Personnel_URL }" role="button" >Thêm Nhân Viên</a>
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
