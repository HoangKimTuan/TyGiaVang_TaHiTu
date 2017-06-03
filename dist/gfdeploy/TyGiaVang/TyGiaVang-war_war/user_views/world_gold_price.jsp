<%-- 
    Document   : world_gold_price
    Created on : May 31, 2017, 11:22:28 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giá vàng thế giới</title>
        <%@include file="link.jsp" %>
    </head>
    <body>
        <%@include file="script.jsp" %>
        <%
            if (session.getAttribute("check") == null)
                response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/WorldGoldPriceServlet");

            session.removeAttribute("check");
        %>
        <div class="container" ng-app="goldRate" ng-controller="goldRateController">
            <%@include file="component/header.jsp" %>
            <div id="content">
                <%@include file="component/navbar.jsp" %>
                <div class="row">
                    <div class="col-md-9">
                        <%@include file="component/content_world_gold_price.jsp" %>
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