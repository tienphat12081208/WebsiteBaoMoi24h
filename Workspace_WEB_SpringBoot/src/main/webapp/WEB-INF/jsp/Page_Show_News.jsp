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
    <link href="../static/css/baiviet.css" type="text/css" rel="stylesheet" media="screen"/>
    <style>

    </style>
</head>
<body>
<%@ include file="Header_Page.jsp" %>
<!--CONTENT-->
<div class="row">
    <div class="container">
        <!--CONTENT_LEFT-->
        <div class="col-md-8 col-sm-8 col-xs-12 content_left">
            <div class="row chuyenmuc">
                <div class="col-md-12 col-xs-12 chuyenmuc-h2">
                    <c:forEach items="${chuyen_muc}" var="chuyenmuc">
                        <c:if test="${show_news_obj.idchuyenmuc == chuyenmuc.idchuyenmuc}">
                            <h2 id="chuyenmuc">${chuyenmuc.chuyenmuc}</h2>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-xs-12 congtacvien">
                    <p>${show_news_obj.tacgia}<span> đăng lúc ${show_news_obj.thoigian}</span></p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-xs-12 tieude">
                    <h2>${show_news_obj.tieude}</h2>
                    <p>${show_news_obj.tomtat}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-xs-12 noidung">
                    <div>${show_news_obj.noidung}</div>
                </div>
            </div>
            <!-- FORM_CONMENT-->
            <div class="row">
                <div class="col-md-12 col-xs-12 comment">
                    <form>
                        <div class="col-md-12 col-xs-12 comment-textarea">
                            <textarea placeholder="Ý kiến của bạn"></textarea>
                        </div>
                        <div class="col-md-9 col-xs-9 comment-p">
                            <spring:url value="/login" var="bntlogin"/>
                            <p>Hãy <a href="#" data-toggle="modal" data-target="#myModal">Đăng nhập</a> hoặc <a href="#">Tạo tài khoản</a> để gửi bình luận</p>
                        </div>
                        <div class="col-md-3 col-xs-3 comment-button">
                            <button type="submit">Gửi</button>
                        </div>
                    </form>
                </div>

            </div>
            <!--MODAL_LOGIN-->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title login-h4">Đăng nhập để tham gia bình luận</h4>
                        </div>
                        <spring:url value="/errorlogin" var="Login" />
                        <form:form modelAttribute="login" method="post" action="${Login}">
                            <div class="modal-body">
                                <div class="row">

                                    <div class="col-md-12 col xs-12 username">
                                        <form:input path="user" placeholder="Username"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-xs-12 password">
                                        <form:input path="pass" placeholder="Password" type="password"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-xs-12">
                                        <div class="col-md-6 col-xs-6 bntLogin">
                                            <button>Đăng nhập</button>
                                        </div>
                                        <div class="col-md-6 col-xs-6 bntregister">
                                            <button type="button">Tạo tài khoản</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
            <!--MODAL_LOGIN_END-->
            <!--COMMENT_NEWWS-->
            <div class="row">
                <div class="row">
                    <div class="col-md-12 col-xs-12 form-comment-h2">
                        <h2>Ý kiến bạn đọc</h2>
                    </div>
                </div>
            <c:forEach items="${comment_obj}" var="comment">
                <div class="row comment_box">
                    <div class="col-md-12 col-xs-12 form-comment-reply">
                        <p>${comment.noidungbinhluan}</p>
                    </div>
                    <div class="col-md-6 col-xs-6 form-comment-person">
                        <h4>${comment.id_user}- <span>${comment.thoigian}</span></h4>
                    </div>
                    <div class="col-md-6 col-xs-6">
                        <div class="col-md-6 col-xs-6 form-comment-a-like">
                            <a href="javascript:;">Thích</a>
                        </div>
                        <div class="col-md-6 col-xs-6 form-comment-a-reply">
                            <a href="#${comment.id}" data-toggle="collapse" aria-expanded="false" aria-controls="${comment.id}">Trả lời</a>
                        </div>
                    </div>
                </div>
                <div class="row comment_row collapse" id="${comment.id}">
                    <div class="col-md-12 col-xs-12 div-comment" >
                        <form>
                            <div class="col-md-12 col-xs-12 div-comment-textarea">
                                <div class="row">
                                    <button type="button" class="close" data-dismiss="comment_row">&times;</button>
                                </div>
                                <div class="row">
                                    <textarea placeholder="Ý kiến của bạn"></textarea>
                                </div>

                            </div>
                            <div class="col-md-9 col-xs-9 div-comment-p">
                                <p>Hãy <a href="#">Đăng nhập</a> hoặc <a href="#">Tạo tài khoản</a> để gửi bình luận</p>
                            </div>
                            <div class="col-md-3 col-xs-3 div-comment-button">
                                <button type="submit">Gửi</button>
                            </div>
                        </form>
                    </div>

                </div>
            </c:forEach>

            </div>
            <!--COMMENT_NEWWS_END-->

            <!-- FORM_COMMENT_END-->
            <!-- FORM_NEWS_CATEGORIES-->
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 form_news_categories">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12 form_news_categories-h2">
                            <h2>TIN CÙNG CHUYÊN MỤC</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-4 col-xs-6 form_news_categories-img-a"><img
                                src="../static/image/news3.jpg" alt="Tin cùng chuyên mục">
                            <a href="#">Công bố 74 công trình tiêu biểu trong "Sách vàng Sáng tạo Việt Nam" năm 2019</a>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6 form_news_categories-img-a"><img
                                src="../static/image/news3.jpg" alt="Tin cùng chuyên mục">
                            <a href="#">Công bố 74 công trình tiêu biểu trong "Sách vàng Sáng tạo Việt Nam" năm 2019</a>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6 form_news_categories-img-a"><img
                                src="../static/image/news3.jpg" alt="Tin cùng chuyên mục">
                            <a href="#">Công bố 74 công trình tiêu biểu trong "Sách vàng Sáng tạo Việt Nam" năm 2019</a>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6 form_news_categories-img-a"><img
                                src="../static/image/news3.jpg" alt="Tin cùng chuyên mục">
                            <a href="#">Công bố 74 công trình tiêu biểu trong "Sách vàng Sáng tạo Việt Nam" năm 2019</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- FORM_NEWS_CATEGORIES_END-->

        </div>
        <!--CONTENT_LEFT_END-->
        <!--CONTENT_RIGHT-->
        <div class="col-md-4 col-sm-4 col-xs-12 content_right">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-5 col-xs-6 bnt_DN">
                        <button>Đọc nhiều</button>
                    </div>
                    <div class="col-md-6 col-sm-7 col-xs-6 bnt_PHN">
                        <button>Phản hồi nhiều</button>
                    </div>
                </div>
                <div class="row from_TT_R">
                    <div class="col-md-12 col-xs-12 from_TT_R-a">
                        <a href="#">Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</a>
                    </div>
                    <div class="col-md-12 col-xs-12 from_TT_R-a">
                        <a href="#">Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</a>
                    </div>
                    <div class="col-md-12 col-xs-12 from_TT_R-a">
                        <a href="#">Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</a>
                    </div>
                    <div class="col-md-12 col-xs-12 from_TT_R-a">
                        <a href="#">Gây tai nạn, tài xế taxi Mai Linh bất ngờ chở bé gái 11 tuổi xuống biển vắng</a>
                    </div>
                </div>
            </div>
            <!--CONTENT_RIGHT_CHUYEN_MUC-->
            <div class="container-fulid content_right_chuyenmuc">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 content_right_chuyemmuc-p">
                        <p>Xã hội</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-4 content_right_tintuc-img">
                        <img src="../static/image/news3.jpg" alt="anh"></div>
                    <div class="col-md-7 col-sm-7 col-xs-8 content_right_tintuc-a">
                        <a href="#">Nguyễn Hữu Linh bị tuyên án 1 năm 6 tháng tù</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 content_right_tintuc-ul-li-a">
                        <ul>
                            <li><a href="#">Salah:'Bóng đá không có VAR thú vị hơn'</a></li>
                            <li><a href="#">Salah:'Bóng đá không có VAR thú vị hơn'</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="container-fulid content_right_chuyenmuc">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 content_right_chuyemmuc-p">
                        <p>Thể Thao</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-4 content_right_tintuc-img">
                        <img src="../static/image/news3.jpg" alt="anh"></div>
                    <div class="col-md-7 col-sm-7 col-xs-8 content_right_tintuc-a">
                        <a href="#">Nguyễn Hữu Linh bị tuyên án 1 năm 6 tháng tù</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 content_right_tintuc-ul-li-a">
                        <ul>
                            <li><a href="#">Salah:'Bóng đá không có VAR thú vị hơn'</a></li>
                            <li><a href="#">Salah:'Bóng đá không có VAR thú vị hơn'</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--CONTENT_RIGHT_CHUYEN_MUC_end-->
        </div>
        <!--CONTENT_RIGHT_END-->
    </div>
</div>
<!--CONTENT_END-->


</body>
</html>
