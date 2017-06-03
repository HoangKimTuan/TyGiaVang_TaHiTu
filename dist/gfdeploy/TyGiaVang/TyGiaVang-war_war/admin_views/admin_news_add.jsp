<%-- 
    Document   : admin_news_add
    Created on : May 25, 2017, 8:11:52 AM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Add News</title>
        <%@include file="link.jsp" %>
    </head>
    <body class="hold-transition sidebar-mini skin-black">
        <%  
            if (session.getAttribute("user") == null) 
                response.sendRedirect("./authentication.jsp");
        %>
        <div class="wrapper">
            <%@include file="component/header.jsp" %>
            <%@include file="component/main_sidebar.jsp" %>
            <%@include file="component/content_admin_news_add.jsp" %>
            <%@include file="component/footer.jsp" %>
            <%@include file="component/control_sidebar.jsp" %>
        </div>
        
        <%@include file="script.jsp" %>
    </body>
</html>
