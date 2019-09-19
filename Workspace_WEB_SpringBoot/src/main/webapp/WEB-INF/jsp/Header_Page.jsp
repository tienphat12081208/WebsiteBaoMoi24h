<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="../static/css/header.css" type="text/css" rel="stylesheet"  media="screen"/>
</head>
<body>
<!--HEADER-->
<div class="row">
    <div class="container-fluid header">
        <nav class="navbar navbar-default" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <a class="navbar-brand"   href="#"> <img src="../static/image/logo.png" id="logo" alt="logo"> </a> </div>
        </nav>
    </div>
</div>
<spring:url value="/" var="Home"/>
<spring:url value="/login" var="Login"/>
<spring:url value="/logout" var="Logout"/>
<spring:url value="/xahoi" var="Xahoi"/>
<spring:url value="/thethao" var="Thethao"/>
<spring:url value="/personnel" var="Nhansu"/>
<spring:url value="/news" var="Baiviet"/>
<spring:url value="/admin" var="Admin"/>
<div class="row">
    <div class="container menu">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <nav class="navbar navbar-inverse menu">
                <ul class="nav navbar-nav">
                    <li><a href="${Home}" class="active"><span class="glyphicon glyphicon-home"></span></a></li>
                    <li><a href="${Xahoi}" >Xã Hội</a></li>
                    <li><a href="${Thethao}">Thể Thao</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!--HEADER_END-->
<!--BANNER-->
<div class="row">
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active"> <img src="../static/image/1.jpg" alt="Banner1" style="width:100%;"> </div>
                <div class="item"> <img src="../static/image/2.jpg" alt="Banner2" style="width:100%;"> </div>
                <div class="item"> <img src="../static/image/3.jpg" alt="Banner3" style="width:100%;"> </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span> </a> </div>
    </div>
</div>
</body>
</html>