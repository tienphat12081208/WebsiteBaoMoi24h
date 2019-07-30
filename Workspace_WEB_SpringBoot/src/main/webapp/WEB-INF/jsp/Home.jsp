
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <script src="jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" media="screen" href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <title>Home</title>

<style>
    body {
        font-family: Tahoma;
        font-size: 13px;
        width: 1000px;
        margin: 0px auto;
    }

    #banner {

        width: 1000px;


    }
    #banner .banner{
        width: 1000px;
        display:none;
        height: 350px;
    }
    #main{
        margin-top:10px;
        width: 1000px;
    }
    #main #left {
        width: 700px;
        float: left;



    }
    #main #left ul{

        padding: 0px;
        margin: 0px;
        float: left;

    }
    #main #left ul li{
        list-style: none;
        clear: left;
        border-bottom: 2px solid #ccc;
        float: left;
        margin-bottom: 20px;

    }
    #main #left ul li img{
        float: left;
        margin-right: 10px;
        margin-bottom: 20px;
        width: 200px;
        height: 133px;
    }
    #main #left ul li h2{
        margin-top:0px;
        font-size: 16px;
        font-weight:bold ;

    }
    #main #left ul li a{
        text-align: right;
    }

    #main #right {
        width: 300px;
        height: auto;
        float: left;
        background: aliceblue;

    }
    #main #right #right_h2{
        background: green;
        font-size: 18px;
        font-family: Tahoma;
        height: 35px;
        line-height: 35px;
        border-radius: 5px;

    }
    #main #right #right_h2 h2{
        margin-left: 42px;
        color: aliceblue;
        padding: 5px;
    }
    #main #right ul{
        margin: 0px;
        padding: 0px;
    }
    #main #right ul li{
        list-style: none;
        clear: left;
        border-bottom: 2px solid #ccc;
        float: left;
        margin-bottom: 15px;
        margin-top: 4px;
    }
    #main #right ul li img{
        width: 100px;
        height: 60px;
        float: left;
        margin-right: 10px;
        margin-bottom: 10px;
    }
    #main #right ul li h2{
        margin-top:0px;
        font-size: 12px;
        font-weight:bold ;
    }
    #main #right ul li a{
        text-align: right;
    }


</style>
</head>
<body>
<div><%@ include file = "Header.jsp" %></div>
<div id="banner">
    <img class="banner" src="static/image/banner.jpg">
    <img class="banner" src="static/image/banner2.jpg">
    <img class="banner" src="static/image/banner3.jpg">
</div>
<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("banner");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel, 3000); // Change image every 3 seconds
    }
</script>

<div id= "main">

            <div id="left">
                <ul>
                    <c:forEach items="${Home_obj}" var="Home_obj">
                    <li>
                        <img src="${Home_obj.hinhanh}">
                        <h2>${Home_obj.tieude }</h2>
                        ${Home_obj.tomtat}
                        <spring:url value="/shows_news/${Home_obj.id}" var="get_news_URL" />
                        <a  href="${get_news_URL }">Xem bài viết</a>

                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="right">
                <div id="right_h2">
                   <h2 >Bài viết xem nhiều nhất</h2>
                </div>

                <ul>
                    <c:forEach items="${Number_views_obj}" var="number_views">
                        <li>

                            <img src="${number_views.hinhanh}">
                            <h2>${number_views.tieude }</h2>
                            <spring:url value="/shows_news/${number_views.id}" var="get_news_URL" />
                           <a  href="${get_news_URL }">Xem bài viết</a>

                    </c:forEach>
                </ul>
            </div>

</div>

</body>
</html>