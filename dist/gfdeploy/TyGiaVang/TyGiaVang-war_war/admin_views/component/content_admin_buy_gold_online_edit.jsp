<%-- 
    Document   : content_admin_buy_gold_online_edit
    Created on : Jun 1, 2017, 10:55:37 AM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Edit Buy Gold Online
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Buy Gold Online</li>
            <li class="active">Edit Buy Gold Online</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <br/>
                     <form action="EditBuyGoldOnlineServlet" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label col-sm-2">Id:</label>
                            <div class="col-sm-6">
                                <input readonly="true" name="file" type="file" class="form-control" placeholder="Id" value="<%= request.getParameter("id")%>"/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Select image gold:</label>
                            <div class="col-sm-6">
                                <input name="file" type="file" class="form-control" placeholder="Image" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">Code: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Code" name="code" value="<%= request.getParameter("code")%>" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">Price: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Price" name="price" value="<%= request.getParameter("price")%>" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </form>
                    <br/>
                </div>
            </div>
        </div>
    </section>
</div>