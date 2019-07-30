<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    </style>


</head>
<body>
<ul>
    <c:forEach items="${Number_views_obj}" var="number_views_obj">
        <li>

            <img src="${number_views_obj.hinhanh}">
            <h2>${number_views_obj.tieude }</h2>


            <!--  <div>
                        <spring:url value="/shows_news/${Home_obj.id}" var="get_news_URL" />
                        <a class="btn btn-primary" href="${get_news_URL }" role="button" >Xem bài viết</a>
                        </div>-->
        </li>
    </c:forEach>
</ul>

</nav>
</body>
</html>