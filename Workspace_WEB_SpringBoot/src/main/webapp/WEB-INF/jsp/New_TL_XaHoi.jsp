
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
    <script src="jquery.js"></script>
    <link rel="stylesheet" media="screen" href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <title><c:out value="${Tieude}"></c:out></title>
    <style>
        #banner {

            width: 1000px;


        }
        #banner .banner{
            width: 1000px;
            display:none;
            height: 350px;
        }
        #main{
            width: 1000px;
            margin-top: 5px;
            clear: left;


        }
        #main #left{
            width: 660px;
            float: left;
            min-height: 400px;



        }
        #main #left ul{
            padding: 0px;
            margin: 0px;
        }
        #main #left li{
            list-style: none;
            float: left;
            margin-right: 15px;
            margin-bottom: 15px;
        }
        #main #left li img{
            width: 200px;
            height: 130px;
            border-radius: 5px;
        }
        #main #left li h2{
            width: 200px;
            font-style: normal;
            font-family: inherit;
            font-size: 15px;
            color: #333;

        }
        #main #left li h2:hover{
            color:  #1949b5;

        }
        #main #right{
            width: 340px;
            float: left;
            padding: 0px;

        }
        #main #right #right_h2{
            background: green;
            height: 40px;
            border-radius: 5px;
            padding:0px;
        }
        #main #right #right_h2 h2{
            margin-top:3px;
            margin-left: 45px;
            height: 40px;
            line-height: 40px;
            color: #999;
            font-size: 20px;

        }

        #main #right ul{
            padding: 0px;
            margin: 0px;
            border-left: 2px solid #999999;
            border-right: 2px solid #999999;



        }
        #main #right ul li{

            list-style: none;
            clear: left;
            border-bottom:  1px solid #ccc;
            margin-bottom: 5px;




        }
        #main #right ul li img{
            margin-top: 5px;
            width: 60px;
            height: 60px;
            margin-bottom:  8px;
            float: left;
            border-radius: 8px;
            margin-left: 10px;

        }
        #main #right ul li h2{
            float: left;
            width: 250px;
            font-size: 15px;
            margin-left: 5px;
            height: 60px;
            margin-top: 4px;
            color: #333;;
            font-family: baomoi,"San Francisco","Helvetica Neue",Helvetica,Arial,sans-serif;

        }
        #main #right ul li h2:hover{
            color:  #1949b5;
        }
        #main #right ul li a{
            margin-left: 150px;
        }
        #main #left #div_chuyenmuc{
            border-bottom: 2px solid red;
            width: 640px;
            width: 631px;
            margin-bottom: 10px;
        }
        #main #left #div_chuyenmuc #chuyenmuc{

            font-size: 20px;
            margin-left: 3px;
            display: inline-block;
            border-left: solid 6px #ed1b24;
            font-family: roboto condensed,sans-serif;
            font-size: 20px;
            text-transform: uppercase;
            font-weight: 700;
            padding-left: 10px;
            margin-bottom: 5px;
            margin-top: 10px;
            color: #c00;

        }
    </style>
</head>
<body>
<div><%@ include file = "Header.jsp" %></div>
<div id="banner">
    <img class="banner" src="static/image/banner.jpg">
    <img class="banner" src="static/image/banner2.jpg">
    <img class="banner" src="static/image/banner3.jpg">

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


<div id="main">
    <div id="left">
        <div id="div_chuyenmuc">
        <h1 id="chuyenmuc">${Tieude}</h1>
        </div>
        <ul>
        <c:forEach items="${Xa_Hoi_obj}" var="xahoi">
            <li>
                <img src="${xahoi.hinhanh}">
                <h2>${xahoi.tieude }</h2>
                <spring:url value="/shows_news/${xahoi.id}" var="get_news_URL" />
                <a  href="${get_news_URL }">Xem bài viết</a>
            </li>
        </c:forEach>

        </ul>
    </div>
    <div id="right">
        <div id="right_h2">
            <h2>Bài viết xem nhiều nhất</h2>
        </div>
        <ul>
            <c:forEach items="${Number_views_obj}" var="number_views_obj">
                <li>
                    <img src="${number_views_obj.hinhanh}">
                    <h2>${number_views_obj.tieude }</h2>
                    <spring:url value="/shows_news/${number_views_obj.id}" var="get_news_URL" />
                    <a  href="${get_news_URL }">Xem bài viết</a>
                </li>
            </c:forEach>

        </ul>
    </div>

</div>
</body>
</html>