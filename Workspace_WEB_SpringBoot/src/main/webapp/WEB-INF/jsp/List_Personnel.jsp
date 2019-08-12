<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Thêm nhân viên</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="path/to/my.css">
    <style>

        #main{

            height: 720px;
            background: #FFFFE0;
            padding-top: 5px;
            margin-top:10px;
            border-radius: 10px;


        }
        #main #div_form{
            width: 630px;
            height: 683px;
            margin: 15px auto;
            background:#EEEEEE;
            border-radius: 10px;


        }
        #main #div_form #tieude{

            height: 40px;

        }
        #main #div_form #tieude h2{
            text-transform: uppercase;
            margin-left: 97px;
            line-height: 40px;
            font-size: 25px;
            color: red;


        }
        #main #div_form #form #hoten{

            clear: left;
        }
        #main #div_form #form #hoten h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #hoten p{
            float: left;
            margin-top:22px;
            margin-left: 3px;
            color: red;
        }
        #main #div_form #form #hoten input{
            clear: left;
            margin-top: 12px;
            margin-left: 110px;
            width: 307px;
            height: 30px;
        }
        #main #div_form #form #tendangnhap{

            clear: left;
        }
        #main #div_form #form #tendangnhap h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #tendangnhap p{
            float: left;
            margin-top:22px;
            margin-left: 3px;
            color: red;
        }
        #main #div_form #form #tendangnhap input{
            clear: left;
            margin-top: 12px;
            margin-left: 54px;
            width: 307px;
            height: 30px;

        }

        #main #div_form #form #matkhau{

            clear: left;
        }
        #main #div_form #form #matkhau h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #matkhau p{
            float: left;
            margin-top:22px;
            margin-left: 3px;
            color: red;
        }
        #main #div_form #form #matkhau input{
            clear: left;
            margin-top: 12px;
            margin-left: 93px;
            width: 307px;
            height: 30px;
        }
        #main #div_form #form #nhaplaimatkhau{

            clear: left;
        }
        #main #div_form #form #nhaplaimatkhau h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #nhaplaimatkhau p{
            float: left;
            margin-top:22px;
            margin-left: 3px;
            color: red;
        }
        #main #div_form #form #nhaplaimatkhau input{
            clear: left;
            margin-top: 12px;
            margin-left: 32px;
            width: 307px;

            height: 30px;
        }

        #main #div_form #form #cmnd{

            clear: left;
        }
        #main #div_form #form #cmnd h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #cmnd p{
            float: left;
            margin-top:22px;
            margin-left: 3px;
            color: red;
        }
        #main #div_form #form #cmnd input{
            clear: left;
            margin-top: 12px;
            margin-left: 114px;
            width: 307px;
            height: 30px;
        }
        #main #div_form #form #noisinh{

            clear: left;
        }
        #main #div_form #form #noisinh h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }

        #main #div_form #form #noisinh input{
            clear: left;
            margin-top: 12px;
            margin-left: 112px;
            width: 307px;
            height: 30px;
        }

        #main #div_form #form #gioitinh{

            clear: left;
        }
        #main #div_form #form #gioitinh h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #gioitinh #gioitinh_radio{
            float: left;
            margin-top: 18px;
            margin-left: 113px;
            font-size: 15px;

        }
        #main #div_form #form #ngaysinh{

            clear: left;
        }
        #main #div_form #form #ngaysinh h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #ngaysinh input{
            clear: left;
            margin-top: 12px;
            margin-left: 100px;
            width: 307px;
            height: 30px;
        }
        #main #div_form #form #diachi{

            clear: left;
        }
        #main #div_form #form #diachi h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;

        }
        #main #div_form #form #diachi textarea{
            clear: left;
            margin-top: 20px;
            margin-left: 120px;
            min-height: 80px;
            width: 400px;
        }

        #main #div_form #form #vaitro{

            clear: left;
        }
        #main #div_form #form #vaitro h2{

            float: left;
            margin-top:22px;
            font-size: 15px;
            margin-left: 10px;


        }
        #main #div_form #form #vaitro select{
            clear: left;
            margin-top: 20px;
            margin-left: 112px;
            width: 106px;
            height: 30px;

        }
        #main #div_form #form #vaitro p{
            float: left;
            margin-top:22px;
            margin-left: 3px;
            color: red;
        }
        .button_luu {
            -moz-box-shadow:inset 0px 1px 0px 0px #cae3fc;
            -webkit-box-shadow:inset 0px 1px 0px 0px #cae3fc;
            box-shadow:inset 0px 1px 0px 0px #cae3fc;
            background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #4197ee) );
            background:-moz-linear-gradient( center top, #79bbff 5%, #4197ee 100% );
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#4197ee');
            background-color:#79bbff;

            text-indent:0px;
            border:1px solid #469df5;
            display:inline-block;
            color:#ffffff;
            font-family:Times New Roman;
            font-size:20px;
            font-weight:bold;
            font-style:normal;
            height:35px;
            line-height:35px;
            width:99px;
            text-decoration:none;
            text-align:center;
            text-shadow:1px 1px 0px #287ace;
            margin-left: 422px;
            margin-top: 10px;
        }

        .button_luu:active {
             position:relative;
             top:1px;
         }


    </style>
</head>


<body>
<div><%@ include file = "Header.jsp" %></div>
<div id="main">
    <div id="div_form">
        <spring:url value="/save_Personnel" var="save_personnel" />
        <form:form modelAttribute="Personnel_Form" method="post" action="${save_personnel }" id="form" >
            <form:hidden path="id"/>
            <div id="tieude" >
                <h2>Đăng ký hoặc chỉnh sửa thành viên</h2>
            </div>
            <div id="hoten">
                <h2>Họ tên</h2>
                <p>*</p>
                <form:input path="name"/>
            </div>
            <div id="tendangnhap">
                <h2>Tên đăng nhập</h2>
                <p>*</p>
                <form:input path="user"/>
            </div>
            <div id="matkhau">
                <h2>Mật khẩu</h2>
                <p>*</p>
                <form:input type="password" path="pass"/>
            </div>
            <div id="nhaplaimatkhau">
                <h2>Nhập lại mật khẩu</h2>
                <p>*</p>
                <input type="password">
            </div>
            <div id="cmnd">
                <h2>CMND</h2>
                <p>*</p>
                <form:input path="cmnd"/>
            </div>
            <div id="noisinh">
                <h2>Nơi sinh</h2>
                <form:input path="noisinh"/>
            </div>
            <div id="ngaysinh">
                <h2>Ngày sinh</h2>
                <form:input path="ngaysinh"/>
            </div>
            <div id="gioitinh">
            <h2>Giới tính</h2>
            <div id="gioitinh_radio">
                <form:radiobutton path="gioitinh" value="Nam"/>Nam
                <form:radiobutton path="gioitinh" value="Nữ"/>Nữ
            </div>

        </div>
            <div id="diachi">
                <h2>Địa chỉ</h2>
                <form:textarea path="diachi"/>
            </div >
            <div id="vaitro">
                <h2>Vai trò</h2>
                <p>*</p>
                <form:select path="idvaitro">
                    <form:option value="1">Admin</form:option>
                    <form:option value="2">Báo viên</form:option>
                </form:select>
            </div>
            <button role="button" type="submit" class="button_luu">Lưu</button>
        </form:form>
    </div>
</div>
</div>
</body>
</html>