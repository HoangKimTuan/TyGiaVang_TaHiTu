<%-- 
    Document   : sjc
    Created on : Apr 9, 2017, 9:49:03 PM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giá vàng SJC</title>
        <%@include file="link.jsp" %>
    </head>
    <body>
        <%@include file="script.jsp" %>
        <%@include file="data.jsp" %>
        
        <div class="container" ng-app="goldRate" ng-controller="goldRateController">
            <%@include file="component/header.jsp" %>
            <div id="content">
                <%@include file="component/navbar.jsp" %>
                <div class="row">
                    <div class="col-md-9">
                        <%@include file="component/content_sjc.html" %>
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
