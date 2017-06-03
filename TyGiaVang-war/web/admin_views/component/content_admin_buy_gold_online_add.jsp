<%-- 
    Document   : content_admin_buy_gold_online_add
    Created on : May 31, 2017, 3:10:52 PM
    Author     : NguyenMinhHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Add Buy Gold Online
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Buy Gold Online</li>
            <li class="active">Add Buy Gold Online</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <br/>
                     <form action="AddBuyGoldOnlineServlet" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label col-sm-2">Select image gold:</label>
                            <div class="col-sm-6">
                                <input name="file" type="file" class="form-control" placeholder="Image" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">Code: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Code" name="code" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">Price: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Price" name="price" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">Add</button>
                            </div>
                        </div>
                    </form>
                    <br/>
                </div>
            </div>
        </div>
    </section>
</div>
