<%-- 
    Document   : news_admin
    Created on : May 22, 2017, 1:49:34 AM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin News</title>
        <%@include file="link.jsp" %>
    </head>
    <body class="hold-transition sidebar-mini skin-blue">
        <%  
            if (session.getAttribute("user") == null) 
                response.sendRedirect("./authentication.jsp");
            else {
                if (session.getAttribute("check") == null)
                    response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/NewsController");

                session.removeAttribute("check");
            }
        %>
        <div class="wrapper">
            <%@include file="component/header.jsp" %>
            <%@include file="component/main_sidebar.jsp" %>
            <%@include file="component/content_admin_news.jsp" %>
            <%@include file="component/footer.jsp" %>
            <%@include file="component/control_sidebar.jsp" %>
        </div>
        
        <%@include file="script.jsp" %>
    </body>
</html>
