<%-- 
    Document   : buy_gold_online
    Created on : May 31, 2017, 2:21:19 PM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mua vàng online</title>
        <%@include file="link.jsp" %>
    </head>
    <body>
        <%@include file="script.jsp" %>
        <%
            if (session.getAttribute("check") == null)
                response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/BuyGoldOnlineServlet");

            session.removeAttribute("check");
        %>
        
        <div class="container">
            <%@include file="component/header.jsp" %>
            <div id="content">
                <%@include file="component/navbar.jsp" %>
                <div class="row">
                    <div class="col-md-9">
                        <%@include file="component/content_buy_gold_online.jsp" %>
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
