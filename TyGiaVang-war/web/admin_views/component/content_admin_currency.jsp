<%-- 
    Document   : content_admin_currency
    Created on : May 24, 2017, 2:00:21 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Currency
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Currency</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">List Currency</h3>
                        <a href="admin_currency_add.jsp" class="col-xs-offset-9">Add new currency</a>
                    </div>
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>CodeNT</th>
                                    <th>Name</th>
                                    <th>Buy</th>
                                    <th>Transfer</th>
                                    <th>Sell</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${currency_admin}" var="c">
                                    <tr>
                                        <td>${c.codeNt}</td>
                                        <td>${c.name}</td>
                                        <td>${c.buy}đ</td>
                                        <td>${c.transfer}đ</td>
                                        <td>${c.sell}đ</td>
                                        <td>
                                            <a href="DeleteCurrencyServlet?id=${c.id}&code_nt=${c.codeNt}&name=${c.name}&buy=${c.buy}&transfer=${c.transfer}&sell=${c.sell}">Delete</a>
                                            <br/>
                                            <a href="admin_currency_edit.jsp?id=${c.id}&code_nt=${c.codeNt}&name=${c.name}&buy=${c.buy}&transfer=${c.transfer}&sell=${c.sell}">Edit</a>
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