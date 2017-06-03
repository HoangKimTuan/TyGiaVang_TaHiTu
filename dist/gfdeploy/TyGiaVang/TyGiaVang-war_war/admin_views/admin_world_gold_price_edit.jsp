<%-- 
    Document   : admin_world_gold_price_edit
    Created on : May 31, 2017, 11:49:01 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Edit Site Map</title>
        <%@include file="link.jsp" %>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
         <%  
            if (session.getAttribute("user") == null) 
                response.sendRedirect("./authentication.jsp");
        %>
        <div class="wrapper">
            <%@include file="component/header.jsp" %>
            <%@include file="component/main_sidebar.jsp" %>
            <%@include file="component/content_admin_world_gold_price_edit.jsp" %>
            <%@include file="component/footer.jsp" %>
            <%@include file="component/control_sidebar.jsp" %>
        </div>
        <%@include file="script.jsp" %>
    </body>
</html>