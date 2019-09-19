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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <link href="style.css" rel="stylesheet">
    <script src="../static/js/jquery.jold.paginator.min.js"></script>
    <style>
        @media screen and (max-width: 1200px){
            .tablenews{ overflow-x:auto}
        }
        .btn-circle
        {
            width: 40px;
            height: 40px;
            padding: 10px 0;
        }
        .pagination{
            float:right;
            margin: 7px 0;
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
                        <div class="card-title" style="margin-bottom: 20px">
                            <div class="title" style="float: left">DANH SÁCH BÀI VIẾT</div>
                            <span>
                                <spring:url value="/add_News" var="add_News_URL" />
                                <a href="${add_News_URL}" type="button"  class="btn btn-success btn-circle" style="float: right; margin-right: 1%"><i class="fa fa-plus"></i></a>
                            </span>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="tablenews col-xs-12">
                        <table class="table table-striped table-bordered table-hover ">
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
                            <tbody class="items-container">
                            <c:forEach items="${obj_new_list}" var="new_list">
                                <tr class="item item-visible">
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
                                        <a class="btn btn-primary" href="${update_News_URL }" role="button">Chỉnh sửa</a>

                                    </td>
                                    <td>
                                        <spring:url value="/delete_news/${new_list.id}" var="delete_News_URL" />
                                        <a class="btn btn-danger" href="${delete_News_URL}" role="button">Xóa</a>

                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                            <div  class="row">
                                <div class=" pagination pagination-indicator"></div>
                            </div>

                            <div class="row">
                                      <ul class="pagination pagination-container"></ul>
                            </div>

                            <script>
                                (function($){

                                    // Initiate the paginator on the .items-container element.
                                    var paginator = new $('.items-container').joldPaginator({
                                        'perPage': 4,
                                        'items': '.item',
                                        'paginator': '.pagination-container',
                                        'indicator': {
                                            'selector': '.pagination-indicator',
                                            'text': 'Showing item {start}-{end} of {total}',
                                        }
                                    });


                                    // Toggle items
                                    $('body').on('change', '.js-toggle-items', function(e) {

                                        e.preventDefault();

                                        var checked = this.checked;

                                        $('.items-container').find('.item')
                                            .removeClass('item-hidden')
                                            .addClass('item-visible');

                                        // Include historical reports (invalid)
                                        if ( checked == true ) {
                                            $('.items-container').find('.item-toggleable')
                                                .removeClass('item-hidden')
                                                .addClass('item-visible');
                                        }

                                        // Exclude historical reports (invalid)
                                        if ( checked == false ) {
                                            $('.items-container').find('.item-toggleable')
                                                .removeClass('item-visible')
                                                .addClass('item-hidden');
                                        }

                                        // Reset the paginator
                                        paginator.init();

                                    });

                                })(jQuery);
                            </script>
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
<script>
    function Ckick_Them(){
        localStorage.setItem("Themmoi","Them moi nha");
        alert("Thêm mới")
    }

    function Ckick_Chinhsua(){
        localStorage.setItem("Themmoi","");
        alert("Chỉnh sửa")
    }


    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();


</script>