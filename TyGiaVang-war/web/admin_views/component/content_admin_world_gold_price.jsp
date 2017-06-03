<%-- 
    Document   : content_admin_world_gold_price
    Created on : May 31, 2017, 11:44:02 AM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Admin World Gold Price
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">World Gold Price</li>
            <li class="active">World Gold Price Admin</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <a href="admin_world_gold_price_edit.jsp">Edit World Gold Price</a>
                        <br/>
                        <br/>
                        <img src="<%=session.getAttribute("world_gold_price_image_admin")%>" class="img-responsive" alt="World Gold Price Admin" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
