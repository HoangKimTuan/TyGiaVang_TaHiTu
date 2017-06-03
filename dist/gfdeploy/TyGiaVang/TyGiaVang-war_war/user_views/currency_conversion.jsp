<%-- 
    Document   : currency_conversion
    Created on : Apr 9, 2017, 9:49:31 PM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tỷ giá ngoại tệ</title>
        <%@include file="link.jsp" %>
    </head>
    <body>
        <%@include file="script.jsp" %>
        <script type="text/javascript" src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/js/exchange.js"></script>
        <%
            if (session.getAttribute("check") == null)
                response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/CurrencyServlet");

            session.removeAttribute("check");
        %>
        
        <div class="container" ng-app="app" ng-controller="exchange-controller">
            <%@include file="component/header.jsp" %>
            <div id="content">
                <%@include file="component/navbar.jsp" %>
                <div class="row">
                    <div class="col-md-9">
                        <%@include file="component/content_curency.jsp" %>
                    </div>
                    <div class="col-md-3">
                        <%@include file="component/sidebar_right.jsp" %>
                    </div>
                </div>
            </div>
            <%@include file="component/footer.jsp" %>
        </div>
    </body>
</html>
