
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><c:out value="${show_news_obj.tieude}"></c:out></title>

    <style>


        #banner {

            width: 1000px;


        }
        #banner .banner{
            width: 1000px;
            display:none;
            height: 350px;
        }
        #main_bv{
            width: 1000px;
            padding:0px;
            margin-top: 15px;
            clear: left;
        }
        #main_bv #left_bv{
            min-height: 400px;
            width: 650px;
            float: left;
            margin-right: 10px;
            border-right: 2px solid #ccc;



        }
        #main_bv #left_bv #tieude{
            margin-left: 10px;
            font-family: muli,sans-serif;
            color: #555;
            font-size: 30px;
            width: 620px;


        }
        #main_bv #left_bv #tomtat{
            font-size: 18px;
            margin-bottom: 13px;
            color: #555;
            margin-left: 10px;
            font-family: muli,sans-serif;
            width: 620px;
        }
        #main_bv #left_bv #chuyenmuc{

            font-size: 20px;
            margin-left: 3px;
            display: inline-block;
            border-left: solid 6px #ed1b24;
            font-family: roboto condensed,sans-serif;
            font-size: 20px;
            text-transform: uppercase;
            font-weight: 700;
            padding-left: 10px;
            margin-bottom: 16px;
            margin-top: 10px;
            color: #c00;

        }
        #main_bv #left_bv #khungcongtac{
            clear: left;
            margin-bottom: 15px;
        }
        #main_bv #left_bv #nguoidang{
            color: #222;
            font-size: 13.6px;
            font-weight: bold;
            float: left;

        }
        #main_bv #left_bv #time{
            color: #888;
            font-size: 13.6px;
            margin-left: 75px;


        }
        #main_bv #left_bv img{
            width: 620px;
            margin-left: 10px;
            margin-bottom: 13px;

        }
        #main_bv #left_bv #noidung{
            width: 620px;
            margin-left: 10px;
            margin-bottom: 15px;
        }
        #main_bv #right_bv{
            min-height: 400px;
            margin-left: 10px;
            width: 325px;
            float: left;
            margin-top:0px;
        }
        #main_bv #right_bv #right_h2{
            background: green;
            height: 40px;
            margin-top:0px;
            border-radius: 5px;


        }
        #main_bv #right_bv #right_h2 h2{
            margin-left: 100px;
            height: 40px;
            line-height: 40px;
            color: #999;
            font-size: 20px;
        }
        #main_bv #right_bv ul{
            margin: 0px;
            padding: 0px;

        }
        #main_bv #right_bv ul li{
            list-style: none;
            margin-top:5px;
            clear: left;
            border-bottom: 2px solid #ccc;
        }
        #main_bv #right_bv ul li img{
            margin-bottom: 4px;
            margin-top: 6px;
            width: 60px;
            height: 60px;
            border-radius: 5px;
            float: left;
        }
        #main_bv #right_bv ul li h2{
            width: 240px;
            float: left;
            font-size: 15px;
            margin-left: 8px;
            margin-top: 10px;
            margin-bottom: 30px;
            color: #333;;
            font-family: baomoi,"San Francisco","Helvetica Neue",Helvetica,Arial,sans-serif;


        }
        #main_bv #right_bv ul li a{
            margin-left: 191px;
            float: left;
        }
        #main_bv #right_bv ul li h2:hover{
            color:  #1949b5;
        }

        a.cd-top {
            display: inline-block;
            height: 40px;
            width: 40px;
            position: fixed;
            bottom: 10px;
            right: 541px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
            overflow: hidden;
            text-indent: 100%;
            white-space: nowrap;
            background: #3097D1 url("https://thinhweb.com/wp-content/themes/thinhweb/images/cd-top-arrow.svg") no-repeat center 50%;
            visibility: hidden;
            opacity: 0;
            -webkit-transition: opacity .3s 0s, visibility 0s .3s;
            -moz-transition: opacity .3s 0s, visibility 0s .3s;
            transition: opacity .3s 0s, visibility 0s .3s;
        }
        a.cd-top.cd-is-visible,a.cd-top.cd-fade-out, .no-touch a.cd-top:hover {
            -webkit-transition: opacity .3s 0s, visibility 0s 0s;
            -moz-transition: opacity .3s 0s, visibility 0s 0s;
            transition: opacity .3s 0s, visibility 0s 0s;
        }
        a.cd-top, a.cd-top:visited, a.cd-top:hover {
            color: #CCCCCC;
            text-decoration: none;
        }
        a.cd-top.cd-is-visible {
            /* the button becomes visible */
            visibility: visible;
            opacity: 1;
        }
        a.cd-top.cd-fade-out {
            /* if the user keeps scrolling down, the button is out of focus and becomes less visible */
            opacity: 1;
        }
    </style>



</head>
<body>
<div><%@ include file = "Header.jsp" %></div>
<div id= "content_main">
<div id="banner">
    <img class="banner" src="https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.15752-9/67062598_2437866696469201_988575452903768064_n.jpg?_nc_cat=107&_nc_oc=AQkUX5wKX-n_fUpcf1YQCndcaaXmjWD-SNP8cKmPIvPxanVxgSycUMbSHXxfoZ-ylsY&_nc_ht=scontent.fsgn2-1.fna&oh=8b8ef5aa6687bf49e8de3f46f40485b6&oe=5DC2EC51">
    <img class="banner" src="https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.15752-9/66691134_2320097474974709_7299615150858829824_n.jpg?_nc_cat=102&_nc_oc=AQnSOA9xxZimk5bM_Cg_7zM1Usipix6a4IXeOvcZVQOhyXgCxSnPBHP3C-7j1Aa21fE&_nc_ht=scontent.fsgn2-2.fna&oh=eb3a017b47d4d58cb3ed7525e669a99c&oe=5DA94BBC">
    <img class="banner" src="https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/66705152_2264726280301259_3050957686892920832_n.jpg?_nc_cat=106&_nc_oc=AQmiYHwvXx9YbcTRW8akeblEG9YP8td8RAEmKbN5ycckChoZVhTdOo0JR46rYN0F_3w&_nc_ht=scontent.fsgn2-3.fna&oh=c767e638741f94288f45673aa1ccff54&oe=5DAE22CC">
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


<div id="main_bv">
    <div id="left_bv">
        <c:forEach items="${chuyen_muc}" var="chuyenmuc">
            <c:if test="${show_news_obj.idchuyenmuc == chuyenmuc.idchuyenmuc}">
                <h1 id="chuyenmuc">${chuyenmuc.chuyenmuc}</h1>
            </c:if>
        </c:forEach>

        <div id="khungcongtac">
            <p id ="nguoidang">${show_news_obj.tacgia}</p><p id="time"> đăng lúc ${show_news_obj.thoigian}</p>
        </div>
        <h2 id="tieude">${show_news_obj.tieude}</h2>
        <p id="tomtat">${show_news_obj.tomtat}</p>
        <img src="${show_news_obj.hinhanh}">
        <div id="noidung">${show_news_obj.noidung}</div>
    </div>
    <div id="right_bv">
            <div id="right_h2">
                <h2>Tin liên quan</h2>
            </div>
            <ul>
             <c:forEach items="${Show_news_obj_lienquan}" var="show_news_OBJ_LIEN_QUAN">
             <c:if test="${show_news_OBJ_LIEN_QUAN.id != show_news_obj.id}">
                <li>
                    <img src="${show_news_OBJ_LIEN_QUAN.hinhanh}">
                    <h2>${show_news_OBJ_LIEN_QUAN.tieude}</h2>
                    <spring:url value="/shows_news/${show_news_OBJ_LIEN_QUAN.id}" var="get_news_URL" />
                     <a  href="${get_news_URL }">Xem bài viết</a>
                </li>
                </c:if>
             </c:forEach>
            </ul>

    </div>
</div>
<a href="#" class="cd-top">Back To Top</a>
<script>
    jQuery(document).ready(function($){
        var offset = 300,
            offset_opacity = 1200,
            scroll_top_duration = 700,
            $back_to_top = $('.cd-top');
        $(window).scroll(function(){
            ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
            if( $(this).scrollTop() > offset_opacity ) {
                $back_to_top.addClass('cd-fade-out');
            }
        });

        $back_to_top.on('click', function(event){
            event.preventDefault();
            $('body,html').animate({
                    scrollTop: 0 ,
                }, scroll_top_duration
            );
        });
    });
</script>
</div>
</body>
</html>