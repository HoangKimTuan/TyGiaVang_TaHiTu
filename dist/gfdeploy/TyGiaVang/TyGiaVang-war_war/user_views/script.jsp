<%-- 
    Document   : link
    Created on : Apr 9, 2017, 10:50:13 PM
    Author     : HoangKimTuan
--%>
<%request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/js/script.js"></script>
<script type="text/javascript" src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/lib/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/lib/angular/js/angular.min.js"></script>

<%if (session.getAttribute("user_client") == null) {%>
<br/>
<div class="row">
    <div class="col-xs-8"></div>
    <div class="col-xs-2"><span class="glyphicon glyphicon-user"></span><a href="login.jsp"> Đăng nhập</a></div>
    <div class="col-xs-2"><span class="glyphicon glyphicon-log-in"></span><a href="register.jsp"> Đăng ký</a></div>
</div>
<%} else {%>
<br/>
<div class="row">
    <div class="col-xs-8"></div>
    <div class="col-xs-2"><span class="glyphicon glyphicon-user"></span><a href="login.jsp"> ${user_client.firstName} ${user_client.lastName}</a></div>
    <div class="col-xs-2"><span class="glyphicon glyphicon-log-out"></span><a href="LogoutClientServlet"> Đăng xuất</a></div>
</div>
<%}%>