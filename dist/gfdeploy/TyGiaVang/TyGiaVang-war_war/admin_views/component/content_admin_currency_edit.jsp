<%-- 
    Document   : content_admin_currency_edit
    Created on : May 29, 2017, 11:20:23 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Edit Currency
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Currency</li>
            <li class="active">Edit Currency</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <br/>
                    <form action="EditCurrencyServlet" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-2">Id: </label>
                            <div class="col-sm-6">
                                <input readonly="true" class="form-control" placeholder="Id" name="id" value="<%= request.getParameter("id") %>"/>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-sm-2">CodeNT: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="CodeNT" name="code_nt" value="<%= request.getParameter("code_nt") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Name: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Name" name="name" value="<%= request.getParameter("name") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Buy: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="number" placeholder="Buy" name="buy" step="0.01" value="<%= request.getParameter("buy") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Transfer: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="number" placeholder="Transfer" step="0.01" name="transfer" value="<%= request.getParameter("transfer") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Sell: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="number" placeholder="Sell" step="0.01" name="sell" value="<%= request.getParameter("sell") %>" required/>
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
