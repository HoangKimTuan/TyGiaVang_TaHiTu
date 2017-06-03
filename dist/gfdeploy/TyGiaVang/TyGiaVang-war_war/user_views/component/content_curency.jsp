<%-- 
    Document   : content_curency
    Created on : May 19, 2017, 2:22:53 AM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1 class="h-head">Chuyển đổi tỷ giá ngoại tệ</h1>
<div class="row">
    <div class="col-xs-3">
        <label>Ngoại tệ muốn đổi tiền: </label>
    </div>
    <div class=" col-xs-4">
        <select class="form-control" id="currency">
            <c:forEach items="${currency}" var="currency">
                <option value="${currency.codeNt}">${currency.name}</option>
            </c:forEach>
        </select>
    </div>
</div>
<div class="row">
    <div class="col-xs-3">
        <label>Số tiền cần chuyển đổi: </label>
    </div>
    <div class="col-xs-4">
        <input type="number" class="form-control" id="input" required />
    </div>
</div>
<div class="row">
    <div class="col-xs-3">
        <label>Kết quả chuyển đổi tiền: </label>
    </div>
    <div class="col-xs-4">
        <input readonly="true" type="text" class="form-control" value="{{result}}" required />
    </div>
</div>
    
<a href ng-click="getResult()"><button class="btn btn-primary">Chuyển đổi</button></a>

<h1 class="h-head">Bảng chuyển đổi tỷ giá ngoại tệ</h1>
<table class="table table-bordered table-hover">
    <thead class="table-head">
        <tr>
            <th>Mã ngoại tệ</th>
            <th>Tên ngoại tệ</th>
            <th>Mua tiền mặt</th>
            <th>Chuyển khoản</th>
            <th>Bán ra</th>
        </tr>
    </thead>

    <tbody>
        <c:forEach items="${currency}" var="currency">
            <tr>
                <td><strong>${currency.codeNt}</strong></td>
                <td><strong>${currency.name}</strong></td>
                <td>${currency.buy}đ</td>
                <td>${currency.transfer}đ</td>
                <td>${currency.sell}đ</td>
            </tr>
        </c:forEach>
    </tbody>
</table>