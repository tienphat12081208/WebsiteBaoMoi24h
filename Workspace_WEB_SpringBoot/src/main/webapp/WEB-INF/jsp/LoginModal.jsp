<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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