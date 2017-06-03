<%-- 
    Document   : content_news
    Created on : May 19, 2017, 3:36:03 AM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>LATEST NEWS</h1>
<section>
    <div class="news">
        <c:forEach items="${news}" var="news">
            <article id="featured" class="col-md-4" >
                <a href="#"><img src="${news.image}" alt=""></a>
                <img src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/img/featured.png" alt="" id="featuredico">
                <h1>${news.title}</h1>
                <p>${news.content}</p>
                <a href="#" class="readmore">Read more</a>
            </article>
        </c:forEach>
    </div>
</section>