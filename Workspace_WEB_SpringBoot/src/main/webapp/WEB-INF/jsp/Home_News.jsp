<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <link href="../static/css/home.css" type="text/css" rel="stylesheet" media="screen"/>
</head>
<body>
<%@ include file="Header_Page.jsp" %>
<div class="row">
    <div class="container">
        <!--CONTENT_LEFT-->
        <div class="col-md-8 col-sm-8 col-xs-12 content_left">
            <div class="row">
                <div class="col-md-12 col-sm-12 tintuc from_tintuc_moi">
                    <div class="row">
                        <div class="tintuc_h2 col-md-12 col-xs-12 ">
                            <h2>TIN MỚI NHẤT</h2>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${New_news_obj}" var="new_news">
                            <div class="col-md-12 col-xs-12 tintuc_moi">
                                <img src="${new_news.hinhanh}" alt="..." style="width: 100%">
                                <h3>${new_news.tieude}</h3>
                                <p>${new_news.tomtat}</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>

            <div class="row TT_2">
                <c:forEach items="${Home_obj}" var="Home_obj">
                    <div class="col-md-4 col-xs-12 form_TT_2">
                        <div class="col-md-12 col-xs-7 form_TT_2-img">
                            <img src="${Home_obj.hinhanh}" alt="new4" style="width: 100%">
                        </div>
                        <spring:url value="/shows_news/${Home_obj.id}" var="get_news_URL"/>
                        <div class="col-md-12 col-xs-5 form_TT_2-a">
                            <a href="${get_news_URL}">${Home_obj.tieude}</a>
                        </div>
                    </div>
                </c:forEach>


            </div>
            <div class="row">
                <c:forEach items="${Home_obj}" var="Home_obj">
                    <div class="col-md-3 col-xs-6 from_TT_3">
                        <div class="col-md-12 col-xs-12 from_TT_3-img">
                            <img src="${Home_obj.hinhanh}" alt="new4" style="width: 100%">
                        </div>
                        <spring:url value="/shows_news/${Home_obj.id}" var="get_news_URL"/>
                        <div class="col-md-12 col-xs-12 from_TT_3-a">
                            <a href="${get_news_URL}">${Home_obj.tieude}</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!--CONTENT_LEFT_END-->
        <!--CONTENT_RIGHT-->
        <div class="col-md-4 col-sm-4 col-xs-12 content_right">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-xs-6 bnt_DN">
                        <button>Đọc nhiều</button>
                    </div>
                    <div class="col-md-6 col-xs-6 bnt_PHN">
                        <button>Phản hồi nhiều</button>
                    </div>
                </div>
                <div class="row from_TT_R">
                    <div class="col-md-12 col-xs-12 from_TT_R-p">
                        <p>Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</p>
                    </div>
                    <div class="col-md-12 col-xs-12 from_TT_R-p">
                        <p>Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</p>
                    </div>
                    <div class="col-md-12 col-xs-12 from_TT_R-p">
                        <p>Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</p>
                    </div>
                    <div class="col-md-12 col-xs-12 from_TT_R-p">
                        <p>Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</p>
                    </div>
                </div>
            </div>
        </div>
        <!--CONTENT_RIGHT_END-->
    </div>
</div>

<!--CONTENT_END-->
</body>
</html>

