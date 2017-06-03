<%-- 
    Document   : admin_member_add
    Created on : May 25, 2017, 7:07:18 PM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Add Member</title>
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
            <%@include file="component/content_admin_member_add.jsp" %>
            <%@include file="component/footer.jsp" %>
            <%@include file="component/control_sidebar.jsp" %>
        </div>
        
        <%@include file="script.jsp" %>
    </body>
</html>
