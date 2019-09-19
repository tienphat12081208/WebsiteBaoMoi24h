<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Header</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        body{
            font-family: Tahoma;
            font-size: 13px;
            padding: 0px;
            margin: 0px;
        }
        #content_main{
            font-family: Tahoma;
            font-size: 13px;
            width: 1000px;
            padding: 0px;
            margin: 0 auto;
        }
        #header{
            min-height: 100px;
            background-image: url(https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.15752-9/67288311_521633368377832_8391758504540504064_n.png?_nc_cat=107&_nc_oc=AQnRdipMzettnuCedmtSyxfe5-U--CC7wzWuwizthFfsjOuA6R_ZDbYaavElH3yQgzg&_nc_ht=scontent.fsgn2-1.fna&oh=6e63c1a3fe076cb916a5ccf6b3a31ed4&oe=5DED39D0);
            background-repeat: repeat-x;
            max-width: 1600px;
            margin: 0 auto;

        }
        .hienra{

            position: fixed; /*Cho menu cố định 1 vị trí với top và left*/
            top: 0px; /*Nằm trên cùng*/
            z-index: 1000; /*Hiển thị lớp trên cùng*/
            width: 100%;
        }
        #header #img img{
            height: 100px;
            margin-left: 323px;
            float: left;
        }
        #header #box1{
            position: relative;
            margin-left: 18%;
            margin-top: 36px;
            width: 361px;
            float: left;
        }
        #header #box1 input{
            width: 361px;
            height: 28px;
            float: left;
            padding-left: 8px;
        }
        #header #box1 input:focus{
            box-shadow: 3px 3px grey;
        }
        #header #box1 button{
            width: 28px;
            height: 28px;;
            background-image:url(https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/67746572_241182416765126_1936172459627642880_n.png?_nc_cat=110&_nc_oc=AQmudC0JDQdvLH45bmxbQCGT_xuSv8rfZs0hS6nBPFhtFZTARvIXg4NP2_8MILBge-M&_nc_ht=scontent.fsgn2-3.fna&oh=b2f70ed3e0431102ebde4ed50db79bb0&oe=5DA01EA3);
            background-size: cover;
            background-repeat: no-repeat;
            position: absolute;
            right: 0px;
            border: none;
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

        #menu_top ul #user{
            float: right;
            position: relative;

        }
        #menu_top ul #user a{
            border-right: none;
            border-left: 1px solid #ccc;
            min-width: 162px;
            text-align: center;

        }
        #menu_top ul #user .sub{
            display: none;
            position: absolute;
            top:40px;
        }
        #menu_top ul #user .sub li{
            clear: left;
        }
        #menu_top ul #user .sub li a{
            background: #141414;
            min-width: 162px;
            line-height: 40px;
            color: #FFF;
            padding: 0px 10px 0px 10px;
            text-align: left;


        }
        #menu_top ul #user .sub li a:hover{
            background: #1949b5;

        }
        #menu_top ul #user:hover .sub{
            display: block;
            border-top: 7px solid #00ff00;


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
<spring:url value="/admin" var="Admin"/>
<spring:url value="/updateopersonnel/${ID_User}"  var="ChinhsuaTTCN"/>
<div id="header">
    <div id="img">
        <img src="../static/image/bao.png">
    </div>
    <div id="box1">
        <input placeholder="Tìm kiếm"/>
        <button></button>
    </div>
</div>
<div id= "content_main">
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

        <li id="user">
            <c:if test="${not empty User_Session}">
                <a id="user">Xin chào <c:out value="${User_Session}"></c:out></a>
                <ul class="sub">
                    <li><a href="${ChinhsuaTTCN}" title="Chỉnh sửa trang cá nhân">Chỉnh sửa trang cá nhân</a></li>
                    <li><a href="${Admin}" title="Trang Admin">Trang Admin</a></li>
                    <li><a href="#" title="Đổi mật khẩu">Đổi mật khẩu</a></li>
                    <li> <a  href="${Logout}" title="Thoát">Thoát</a></li>
                </ul>
            </c:if>
            <c:if test="${empty User_Session}">
                <a  href="${Login}">Đăng nhập</a>
            </c:if>

        </li>
    </ul>
    </div>
</div>


    </ul>
</nav>
</body>
</html>
<script>
    $(document).ready(function() {
        $(window).scroll(function(event) {
            var pos_body = $('html,body').scrollTop();

            if(pos_body>90){
                $('#header').addClass('hienra');

            }
            else {
                $('#header').removeClass('hienra');

            }

        });

    });
</script>