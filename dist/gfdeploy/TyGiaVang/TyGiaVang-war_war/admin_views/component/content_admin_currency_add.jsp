<%-- 
    Document   : content_admin_currency_add
    Created on : May 26, 2017, 9:43:05 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Add Currency
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Currency</li>
            <li class="active">Add Currency</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <br/>
                    <form action="AddCurrencyServlet" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-2">CodeNT: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="CodeNT" name="code_nt" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Name: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Name" name="name" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Buy: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="number" placeholder="Buy" name="buy" step="0.01" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Transfer: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="number" placeholder="Transfer" name="transfer" step="0.01" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Sell: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="number" placeholder="Sell" name="sell" step="0.01" required/>
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
