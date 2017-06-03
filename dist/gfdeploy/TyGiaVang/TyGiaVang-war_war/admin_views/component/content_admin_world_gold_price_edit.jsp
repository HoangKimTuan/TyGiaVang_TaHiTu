<%-- 
    Document   : content_admin_world_gold_price_edit
    Created on : May 31, 2017, 11:49:56 AM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Edit SiteMap Client
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">SiteMap</li>
            <li class="active">Edit SiteMap Client</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <br/>
                    <form action="EditWorldGoldPriceServlet" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label col-sm-2">Select new World Gold Price:</label>
                            <div class="col-sm-6">
                                <input name="file" type="file" class="form-control" placeholder="Image" />
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
