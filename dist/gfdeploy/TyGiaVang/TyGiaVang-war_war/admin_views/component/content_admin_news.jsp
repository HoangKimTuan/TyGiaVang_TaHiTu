<%-- 
    Document   : content_admin_news
    Created on : May 22, 2017, 1:53:39 AM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            News
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">News</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">List News</h3>
                        <a href="admin_news_add.jsp" class="col-xs-offset-10">Add news</a>
                    </div>
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Title</th>
                                    <th>Content</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${news_admin}" var="n">
                                    <tr>
                                        <td><img src="${n.image}" class="img-responsive"/></td>
                                        <td>${n.title}</td>
                                        <td>${n.content}</td>
                                        <td><a href="DeleteNewsServlet?id=${n.id}&image=${n.image}&title=${n.title}&content=${n.content}">Delete</a><br/><a href="admin_news_edit.jsp?id=${n.id}&image=${n.image}&title=${n.title}&content=${n.content}">Edit</a></td>
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