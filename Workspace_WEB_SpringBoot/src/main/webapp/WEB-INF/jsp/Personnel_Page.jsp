<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Danh sách nhân viên</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

<div><%@ include file = "Header.jsp" %></div>



<div class="container">
    <br>
    <spring:url value="/personnel" var="FINDURL" />
    <spring:url value="/login/home" var="Home" />

    <div>

        <h1 align="center">DANH SÁCH NHÂN VIÊN</h1>
        <form:form modelAttribute="personnel_form" method="GET" action="${FINDURL }" cssClass="form" >
        <div class="form-group">
            <label style="">Search</label>
            <form:input path="name" cssClass="text-input" id="name"  placeholder="Tìm kiếm theo tên"/>
            <button type="submit" class="btn btn-primary">Tìm Kiếm </button>
            </form:form>
        </div>
    </div>
    <table class="table table-striped">
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
    <spring:url value="/add_Personnel" var="add_Personnel_URL" />
    <a class="btn btn-primary" href="${add_Personnel_URL }" role="button" >Thêm Nhân Viên</a>
</div>
</body>
</html>