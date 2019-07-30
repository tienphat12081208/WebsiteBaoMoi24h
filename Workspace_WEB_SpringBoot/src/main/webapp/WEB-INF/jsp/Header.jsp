<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        body {
            font-family: Tahoma;
            font-size: 13px;
            width: 1000px;
            margin: 0px auto;
        }
        #menu_top {
            background: #141414;
            height: 40px;
        }
        #menu_top ul{
            margin: 0px;
            padding: 0px;

        }
        #menu_top ul li{
            list-style: none;
            float: left;
        }
        #menu_top ul li a{
            text-decoration: none;
            display: block;
            height: 40px;
            line-height: 40px;
            color: #FFF;
            padding: 0px 20px 0px 20px;
            border-right: 1px solid #ccc;
        }
        #menu_top ul li a:hover{
            background: #1949b5;
        }
        #user{
            margin-left: 10px;
        }

    </style>


</head>
<body>
<spring:url value="/" var="Home"/>
<spring:url value="/login" var="Login"/>
<spring:url value="/logout" var="Logout"/>
<spring:url value="/xahoi" var="Xahoi"/>
<spring:url value="/thethao" var="Thethao"/>
<spring:url value="/personnel" var="Nhansu"/>
<spring:url value="/news" var="Baiviet"/>

<div id= "menu_top">
    <ul>
        <li><a href="${Home}" class="active"> Trang chủ</a></li>
        <li><a href="${Xahoi}"> Xã hội</a></li>
        <li><a href="${Thethao}">Thể Thao</a></li>
        <c:if test="${not empty User_Session}">
             <c:if test="${IDvaitro=='1'}">
              <li> <a href="${Nhansu}">Nhân sự</a></li>
             </c:if>
             <li> <a  href="${Baiviet}">Bài viết</a></li>
        </c:if>
        <li>
            <c:if test="${not empty User_Session}">
                <a  href="${Logout}">Thoát</a>
            </c:if>
            <c:if test="${empty User_Session}">
                <a  href="${Login}">Đăng nhập</a>
            </c:if>
        </li>
        <li>
            <c:if test="${not empty User_Session}">
                <a id="user">Xin chào <c:out value="${User_Session}"></c:out></a>
            </c:if>
        </li>
    </ul>
</div>
<!--
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="">Báo Mới 24H</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="">Xã Hội</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="">Thể Thao</a>
        </li>
        <c:if test="${not empty User_Session}">
        <li class="nav-item">
             <a class="nav-link" href="${Nhansu}">Nhân sự</a>
        </li>
         <li class="nav-item">
              <a class="nav-link" href="${Baiviet}">Bài viết</a>
         </li>
        </c:if>
        <li id="nav-login">

            <c:if test="${not empty User_Session}">
                <a class="nav-link" href="${Logout}">Thoát</a>
            </c:if>
            <c:if test="${empty User_Session}">
                <a class="nav-link" href="${Login}">Đăng nhập</a>
            </c:if>
        </li>
        <li class="nav-item">
            <c:if test="${not empty User_Session}">
                <a  class="nav-link">Xin chào <c:out value="${User_Session}"></c:out></a>
            </c:if>
        </li
-->


    </ul>
</nav>
</body>
</html>