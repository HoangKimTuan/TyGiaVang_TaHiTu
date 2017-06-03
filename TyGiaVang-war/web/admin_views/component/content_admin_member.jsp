<%-- 
    Document   : content_admin_member
    Created on : May 24, 2017, 1:39:28 AM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Member
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Member</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">List Member</h3>
                        <a href="admin_member_add.jsp" class="col-xs-offset-9">Add new member</a>
                    </div>
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Job</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Birthday</th>
                                    <th>Gender</th>
                                    <th>Address</th>
                                    <th>Phone Number</th>
                                    <th>Avatar</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${user_admin}" var="u">
                                    <tr>
                                        <td>${u.username}</td>
                                        <td>${u.password}</td>
                                        <td>${u.job}</td>
                                        <td>${u.firstName}</td>
                                        <td>${u.lastName}</td>
                                        <td>${u.birthday}</td>
                                        <td>${u.gender}</td>
                                        <td>${u.address}</td>
                                        <td>${u.phoneNumber}</td>
                                        <td><img src="${u.avatar}" class="img-responsive" /></td>
                                        <td>
                                            <a href="DeleteMemberServlet?id=${u.id}&username=${u.username}&password=${u.password}&job=${u.job}&first_name=${u.firstName}&last_name=${u.lastName}&birthday=${u.birthday}&gender=${u.gender}&address=${u.address}&phone_number=${u.phoneNumber}&avatar=${u.avatar}">Delete</a>
                                            <br/>
                                            <a href="admin_member_edit.jsp?id=${u.id}&username=${u.username}&password=${u.password}&job=${u.job}&first_name=${u.firstName}&last_name=${u.lastName}&birthday=${u.birthday}&gender=${u.gender}&address=${u.address}&phone_number=${u.phoneNumber}">Edit</a></td>
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
