<%-- 
    Document   : content_buy_gold_online
    Created on : May 31, 2017, 2:22:49 PM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>NHẪN TRANG SỨC</h1>
<section>
    <div class="news">
        <c:forEach items="${buy_gold_online}" var="buy">
            <article id="featured" class="col-md-4" >
                <a href><img src="${buy.image}" alt="Ring"></a>
                <center>
                    <h4>${buy.code}</h4>
                    <p style="color: red;">${buy.price}</p>
                    <a onclick="return checkBuy();" href="BuyGoldServlet?first_name=${user_client.firstName}&last_name=${user_client.lastName}&email=${user_client.email}&phone_number=${user_client.phoneNumber}&code=${buy.code}&price=${buy.price}"><button class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Mua ngay</button></a>
                </center>
            </article>
        </c:forEach>
    </div>
</section>

<script>
    function checkBuy() {
        if ("${user_client.firstName}" != "")
            return true;
        else {
            alert("Bạn phải đăng nhập mới có thể mua hàng");
            return false;
        }
    }
</script>
