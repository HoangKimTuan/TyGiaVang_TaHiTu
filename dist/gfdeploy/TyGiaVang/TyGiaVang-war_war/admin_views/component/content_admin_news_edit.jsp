<%-- 
    Document   : content_admin_news_edit
    Created on : May 25, 2017, 11:53:07 AM
    Author     : HoangKimTuan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Edit News
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">News</li>
            <li class="active">Edit News</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <br/>
                    <form action="EditNewsServlet" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label col-sm-2">Id: </label>
                            <div class="col-sm-6">
                                <input class="form-control" name="id" value="<%=request.getParameter("id") %>" readonly="true" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">Select image news: </label>
                            <div class="col-sm-6">
                                <input name="file" type="file" class="form-control" placeholder="Image"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">Title: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Title" name="title" value="<%=request.getParameter("title") %>" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">Content: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Content" name="content" value="<%=request.getParameter("content") %>" required/>
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