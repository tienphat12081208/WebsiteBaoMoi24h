<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <title>Login</title>
    <style>
        #main_login {
            padding: 0px;
            margin: 0px;
            width: 1000px;
            height: 695px;
            clear: left;
            background: #000;
            border-top: 4px solid #cccccc;

        }

        #main_login #left_login {
            width: 600px;
            margin-top: 10px;
            float: left;


        }

        #main_login #left_login img {
            width: 590px;
            height: 680px;
            margin-left: 10px;
            border-radius: 5px;
        }

        #main_login #right_login {
            background: #FFF;
            margin-top: 10px;
            height: 680px;
            width: 390px;
            float: left;
            border-left: 2px solid #000;

        }

        #main_login #right_login #form {

            box-sizing: border-box;
            width: 260px;
            margin: 175px auto 0;
            box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.2);
            padding-bottom: 40px;
            border-radius: 3px;

        }

        form h1 {
            box-sizing: border-box;
            padding: 20px;
            background: #9adce8;
            text-align: center;
        }

        #main_login #right_login #form input {
            margin: 40px 25px;
            width: 200px;
            display: block;
            border: none;
            padding: 10px 5px;
            border-bottom: solid 1px #9adce8;
            text-align: left;
            color: #117700;
            font-size: 18px;
        }


        #main_login #right_login #form button {
            border: none;
            background: #9adce8;
            cursor: pointer;
            border-radius: 3px;
            padding: 6px;
            width: 200px;
            color: #001d45;
            margin-left: 25px;
            box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.2);
            font-size: 16px;
        }

        #main_login #right_login #form button:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);
        }

        #main_login #right_login #form p {
            margin-top: -26px;
            margin-bottom: 1rem;
            margin-left: 22px;
            color: red;
            width: 200px;
        }


    </style>
</head>
<body>
<div>
    <%@ include file="Header.jsp" %>
</div>
<div id="content_main">
    <div id="main_login">
        <div id="left_login">
            <img src="../static/image/2019-07-18_162656.jpg">
        </div>
        <div id="right_login">
            <spring:url value="/errorlogin" var="saveURL"/>
            <form:form modelAttribute="login" method="post" action="${saveURL}" id="form">
                <h1>Đăng nhập</h1>
                <form:input path="user" placeholder="Tên đăng nhập" type="text" required=""/>
                <form:input path="pass" placeholder="Mật khẩu" type="password" required=""/>
                <c:if test="${not empty message}">
                    <p>Đăng nhập thất bại vui lòng kiểm tra tài khoản, mật khẩu!</p>
                </c:if>
                <button>Đăng Nhập</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>