<%-- 
    Document   : content_admin_buy_gold
    Created on : Jun 1, 2017, 9:33:37 AM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Buy Gold
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Buy Gold</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">List Buy Gold</h3>
                    </div>
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Phone Number</th>
                                    <th>Code</th>
                                    <th>Price</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${buy_gold_admin}" var="buy">
                                    <tr>
                                        <td>${buy.firstName}</td>
                                        <td>${buy.lastName}</td>
                                        <td>${buy.email}</td>
                                        <td>${buy.phoneNumber}</td>
                                        <td>${buy.code}</td>
                                        <td>${buy.price}</td>
                                        <td>
                                            <a href="DeleteBuyGoldServlet?id=${buy.id}&first_name=${buy.firstName}&last_name=${buy.lastName}&email=${buy.email}&phone_number=${buy.phoneNumber}&code=${buy.code}&price=${buy.price}">Delete</a>
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
