<%-- 
    Document   : news
    Created on : May 19, 2017, 3:34:16 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tin tức</title>
        <%@include file="link.jsp" %>
    </head>
    <body>
        <%@include file="script.jsp" %>
        <%
            if (session.getAttribute("check") == null)
                response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/NewsServlet");

            session.removeAttribute("check");
        %>
        
        <div class="container">
            <%@include file="component/header.jsp" %>
            <div id="content">
                <%@include file="component/navbar.jsp" %>
                <div class="row">
                    <div class="col-md-9">
                        <%@include file="component/content_news.jsp" %>
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

