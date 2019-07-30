
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
    <title>Tạo bài viết</title>
    <script src="../static/ckeditor/ckeditor.js"></script>
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
            margin-top: 5px;
            background-color:#A9E2F3;
            padding: 0px 0px 25px 0px;

        }
        #main #form{
            border: 1px solid #ccc;
            width: 800px;
            margin-left: 100px;
            background: #ccc;

        }
        #main #form #button_save{
            background-color:#0C80F5;
            font-family: Tahoma;
            font-size: 14px;
            margin-left: 22px;
            width: 70px;
        }
        #main #form #thembaiviet{
            background: #000;
            padding: 0px  0px 0px 25px;
            height: 40px;
            margin-top: 0px;
            font-size: 16px;
            color: white;
            line-height: 40px;

        }
        #main #form #tieude{
            background:#A4A4A4;
            margin-left: 20px;
            margin-right: 20px;
            height: 40px;
            clear: left;
            border-radius: 5px;


        }
        #main #form #tieude h3{
            float: left;
            margin-top: 2px;
            margin-left: 10px;
            width:10px ;
            font-size: 14px;

        }
        #main #form #tieude input{
            float: left;
            margin-left: 28px;
            margin-top: 7px;
            width: 500px;
            border-radius: 5px;
            height: 18px;

        }
        #main #form #theloai{
            background:#A4A4A4;
            margin-top: 8px;
            margin-left: 20px;
            margin-right: 20px;
            height: 40px;
            clear: left;
            border-radius: 5px;

        }
        #main #form #theloai h3{
            float: left;
            margin-top: 2px;
            margin-left: 10px;
            width:10px ;
            font-size: 14px;
        }
        #main #form #theloai input{
            float: left;
            margin-left: 28px;
            margin-top: 7px;
            width: 120px;
            border-radius: 5px;
            height: 18px;

        }
        #main #form #tacgia{
            background:#A4A4A4;
            margin-top: 8px;
            margin-left: 20px;
            margin-right: 20px;
            height: 40px;
            clear: left;
            border-radius: 5px;

        }
        #main #form #tacgia h3{
            float: left;
            margin-top: 2px;
            margin-left: 10px;
            width:10px ;
            font-size: 14px;
        }
        #main #form #tacgia input{
            float: left;
            margin-left: 28px;
            margin-top: 7px;
            width: 120px;
            border-radius: 5px;
            height: 18px;

        }
        #main #form #thoigian{
            background:#A4A4A4;
            margin-top: 8px;
            margin-left: 20px;
            margin-right: 20px;
            height: 40px;
            clear: left;
            border-radius: 5px;

        }
        #main #form #thoigian h3{
            float: left;
            margin-top: 2px;
            margin-left: 10px;
            width:10px ;
            font-size: 14px;
        }
        #main #form #thoigian input{
            float: left;
            margin-left: 28px;
            margin-top: 7px;
            width: 220px;
            border-radius: 5px;
            height: 18px;

        }
        #main #form #anhdaidien{
            background:#A4A4A4;
            margin-left: 20px;
            margin-right: 20px;
            height: 70px;
            clear: left;
            border-radius: 5px;
            margin-top: 8px;
        }
        #main #form #anhdaidien h3{
            float: left;
            margin-top: 12px;
            margin-left: 10px;
            width:10px ;
            font-size: 14px;
        }
        #main #form #anhdaidien button{
            float: left;
            margin-left: 28px;
            margin-top: 25px;
            border: 1px solid #6E6E6E;
            border-radius: 3px;
        }
        #main #form #anhdaidien p{
            float: left;
            margin-left: 10px;
            margin-top: 25px;
            color: #D8D8D8;
        }

        #main #form #anhdaidien #anhdaidien_p{
            float: left;
            margin-left: 4px;
            margin-right: 4px;
            margin-top: 22px;
            color: red;
            font-size: 16px;
        }
        #main #form #anhdaidien #hinhanh{
            margin-left: 10px;
            margin-top: 20px;
            height: 25px;
            width: 350px;
            border-radius: 5px;

        }
        #main #form #tomtat{
            background:#A4A4A4;
            margin-left: 20px;
            margin-right: 20px;
            height: 90px;
            clear: left;
            border-radius: 5px;
            text-align: start;
            margin-top: 8px;
        }
        #main #form #tomtat h3{
            float: left;
            margin-top: 12px;
            margin-left: 10px;
            width:10px ;
            font-size: 14px;
        }
        #main #form #tomtat #input{
            float: left;
            margin-left: 28px;
            margin-top: 7px;
            width: 670px;
            border-radius: 5px;
            height: 70px;

        }
        #main #form #noidung{
            background:#A4A4A4;
            margin-top: 5px;
            margin-left: 20px;
            margin-right: 20px;
            height: auto;
            clear: left;
            border-radius: 5px;
            text-align: start;
        }
        #main #form #noidung h3{
            float: left;
            margin-top: 12px;
            margin-left: 10px;
            width:10px ;
            font-size: 14px;
        }
        #main #form #noidung input{
            float: left;
            margin-left: 28px;
            margin-top: 7px;
            width: 670px;
            border-radius: 5px;
            height: 130px;

        }
        div.cke_inner.cke_reset{
            margin-left: 50px;
            margin-top: 5px;
            width: 675px;
            margin-bottom: 10px;
            border-radius: 5px;
        }

    </style>


</head>
<body>
<div><%@ include file = "Header.jsp" %></div>
<div id="banner">
    <img class="banner" src="../static/image/banner.jpg">
    <img class="banner" src="../static/image/banner2.jpg">
    <img class="banner" src="../static/image/banner3.jpg">
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
<div id= "main" >
    <spring:url value="/save_news" var="save_new_URL" />
    <form:form modelAttribute="news_form" method="post" action="${save_new_URL }" id="form" >
       <form:hidden path="id"/>
        <h3 id = "thembaiviet">Thêm mới bài viết</h3>
        <div id="tieude">
            <h3>Tiêu đề</h3>
            <form:input path="tieude" id="input"/>
        </div>
        <div id="theloai">
            <h3>Thể loại</h3>
            <form:input path="chuyenmuc" id="input" />
        </div>
        <div id="tacgia">
            <h3>Người đăng</h3>
            <form:input path="tacgia" id="input" value="${Name}"/>
        </div>

        <div id="thoigian">
            <h3>Thời gian</h3>
            <form:input path="thoigian" id="input"/>
        </div>
        <script>
            Haha();
            function Haha() {
                var KT= localStorage.getItem("Themmoi");
                if(KT=="Them moi nha")
                {
                    var x =document.getElementById("thoigian");
                    x.style.display = "none";
                }
                localStorage.setItem("Themmoi","");
            }

        </script>
        <div id="anhdaidien">
            <h3>Ảnh đại diện</h3>
            <button>Chọn tệp hình</button>
            <p>Không có tệp nào được chọn</p>
            <p id="anhdaidien_p">hoặc URL</p>
            <form:textarea path="hinhanh" id="hinhanh"/>
        </div>
        <div id="tomtat">
            <h3>Tóm tắt</h3>
            <form:textarea path="tomtat" id="input"/>
        </div>
        <div id="noidung">
            <h3>Nội dung</h3>
            <div>
                <form:textarea id="noidung1" path="noidung"></form:textarea>
                <script type="text/javascript">
                    config={};
                    config.entities_latin=false;
                    CKEDITOR.replace('noidung1',config);
                </script>
            </div>
        </div>
        <button role="button" type="submit" id="button_save">Lưu</button>
    </form:form>


    </form>

</div>

</body>
</html>
