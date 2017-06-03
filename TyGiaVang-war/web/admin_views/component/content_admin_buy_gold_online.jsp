<%-- 
    Document   : content_admin_buy_gold_online
    Created on : May 31, 2017, 2:55:47 PM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Buy Gold Online
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Buy Gold Online</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">List Buy Gold Online</h3>
                        <a href="admin_buy_gold_online_add.jsp" class="col-xs-offset-9">Add gold</a>
                    </div>
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Code</th>
                                    <th>Price</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${buy_gold_online_admin}" var="buy">
                                    <tr>
                                        <td><img src="${buy.image}" class="img-responsive"/></td>
                                        <td>${buy.code}</td>
                                        <td>${buy.price}</td>
                                        <td>
                                            <a href="DeleteBuyGoldOnlineServlet?id=${buy.id}&image=${buy.image}&code=${buy.code}&price=${buy.price}">Delete</a>
                                            <br/>
                                            <a href="admin_buy_gold_online_edit.jsp?id=${buy.id}&image=${buy.image}&code=${buy.code}&price=${buy.price}">Edit</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>