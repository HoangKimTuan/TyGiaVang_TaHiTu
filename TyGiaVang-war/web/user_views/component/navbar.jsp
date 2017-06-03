<%-- 
    Document   : navbar
    Created on : Apr 9, 2017, 9:44:27 PM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="navbar">
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a class="active" href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/" title="Trang chủ"><span class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
            <li class="dropdown">
                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Giá vàng trong nước<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/user_views/sjc.jsp">Giá vàng SJC</a></li>
                    <li><a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/user_views/doji.jsp">Giá vàng DOJI</a></li>
                </ul>
            </li>
            
            <li><a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/user_views/buy_gold_online.jsp">Mua vàng online</a></li>

            <li><a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/user_views/world_gold_price.jsp">Giá vàng thế giới</a></li>

            <li><a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/user_views/currency_conversion.jsp">Tỷ giá ngoại tệ</a></li>

            <li><a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/user_views/news.jsp">Tin tức</a></li>

            <li><a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/user_views/contact.jsp">Liên hệ</a></li>
        </ul>

        <div class="pull-right current-time">
            <span class="glyphicon glyphicon-time currentTime"></span><span id="currentTime" class="currentTime"></span>
        </div>
    </div>
</div>

<br/>
