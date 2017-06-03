<%-- 
    Document   : admin_currency
    Created on : May 24, 2017, 1:57:38 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Currency</title>
        <%@include file="link.jsp" %>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <%  
            if (session.getAttribute("user") == null) 
                response.sendRedirect("./authentication.jsp");
            else {
                if (session.getAttribute("check") == null)
                    response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/CurrencyController");

                session.removeAttribute("check");
            }
        %>
        <div class="wrapper">
            <%@include file="component/header.jsp" %>
            <%@include file="component/main_sidebar.jsp" %>
            <%@include file="component/content_admin_currency.jsp" %>
            <%@include file="component/footer.jsp" %>
            <%@include file="component/control_sidebar.jsp" %>
        </div>
        <%@include file="script.jsp" %>
    </body>
</html>
