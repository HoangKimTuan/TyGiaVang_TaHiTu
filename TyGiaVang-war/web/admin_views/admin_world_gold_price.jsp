<%-- 
    Document   : admin_world_gold_price
    Created on : May 31, 2017, 11:38:57 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin World Gold Price</title>
        <%@include file="link.jsp" %>
    </head>
    <body class="hold-transition sidebar-mini skin-blue">
        <%  
            if (session.getAttribute("user") == null) 
                response.sendRedirect("./authentication.jsp");
            else {
                if (session.getAttribute("check") == null)
                    response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/admin_views/WorldGoldPriceController");

                session.removeAttribute("check");
            }
        %>
        <div class="wrapper">
            <%@include file="component/header.jsp" %>
            <%@include file="component/main_sidebar.jsp" %>
            <%@include file="component/content_admin_world_gold_price.jsp" %>
            <%@include file="component/footer.jsp" %>
            <%@include file="component/control_sidebar.jsp" %>
        </div>
        
        <%@include file="script.jsp" %>
    </body>
</html>