<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Thêm Tài Khoản</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="path/to/my.css">
</head>
<style>
    body
    {
        background: white;
    }


</style>
<body>
<div><%@ include file = "Header.jsp" %></div>
<div class="container"   style="background: dimgray">
    <h2 align="center">THÊM NHÂN VIÊN</h2>
    <spring:url value="/saveaccount" var="saveaccount" />
    <form:form modelAttribute="AddAccountForm" method="post" action="${saveaccount }" cssClass="form" >
        <form:hidden path="id"/>
        <div class="form-group">
            <label>Name</label>
            <form:input path="name" cssClass="form-control" id="name"  placeholder="Name"/>
        </div>
        <div class="form-group">
            <label>UserName</label>
            <form:input path="user" cssClass="form-control" id="user"   placeholder="Username" />
        </div>
        <div class="form-group">
            <label>Password</label>
            <form:input path="pass" cssClass="form-control" id="pass"  placeholder="Password"/>
        </div>
        <div class="form-group">
            <label>Ngay Sinh</label>
            <form:input path="ngaysinh" cssClass="form-control" id="ngaysinh" placeholder="dd/mm/yyyy/"/>
        </div>

        <div class="form-group">
            <label>Noi Sinh</label>
            <form:input path="noisinh" cssClass="form-control" id="noisinh"  placeholder="Noi Sinh"/>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
        <button type="reset" class="btn btn-danger">Reset</button>
    </form:form>
    <br>
</div>
</body>
</html>