
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link rel="stylesheet" media="screen" href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <title>Quản lý bài viết</title>

</head>
<body>
<div><%@ include file = "Header.jsp" %></div>
<div>  <h1 align="center">QUẢN LÝ DANH SÁCH BÀI VIẾT</h1></div>
<div class="container">

    <table class="table table-striped">
        <thead>
        <th scope="row">#ID</th>
        <th scope="row">Tiêu đề</th>
        <th scope="row">Chuyên mục</th>
        <th scope="row">Tóm tắt</th>
        <th scope="row">Người đăng</th>
        <th scope="row">Thời gian</th>
        <th scope="row">Chỉnh sửa</th>
        <th scope="row">Xóa</th>
        </thead>
        <tbody>
        <c:forEach items="${obj_new_list}" var="new_list">
            <tr>
                <td>${new_list.id }</td>
                <td>${new_list.tieude }</td>
                <td>${new_list.chuyenmuc}</td>
                <td>${new_list.tomtat}</td>
                <td>${new_list.tacgia}</td>
                <td>${new_list.thoigian}</td>

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
    <spring:url value="/add_News" var="add_News_URL" />
    <a class="btn btn-primary" href="${add_News_URL }" role="button" onclick="Ckick_Them()" >Tạo bài viết</a>
</div>
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
</script>