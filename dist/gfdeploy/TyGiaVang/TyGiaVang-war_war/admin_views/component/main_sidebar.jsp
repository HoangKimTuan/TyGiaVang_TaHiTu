<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${user.avatar}" class="user-image" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${user.getFirstName()} ${user.getLastName()}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
                <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/admin_views/dashboard.jsp">
                    <i class="fa fa-dashboard"></i> 
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="treeview">
                <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/admin_views/admin_news.jsp">
                    <i class="fa fa-dashboard"></i> 
                    <span>News</span>
                </a>
            </li>
            <li class="treeview" id="member">
                    <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/admin_views/admin_member.jsp">
                        <i class="fa fa-dashboard"></i> 
                        <span>Member</span>
                    </a>
                </li>
            <li class="treeview">
                <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/admin_views/admin_contact.jsp">
                    <i class="fa fa-dashboard"></i> 
                    <span>Contact</span>
                </a>
            </li>
            <li class="treeview">
                <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/admin_views/admin_currency.jsp">
                    <i class="fa fa-dashboard"></i> 
                    <span>Currency</span>
                </a>
            </li>
            <li class="treeview">
                <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/admin_views/admin_world_gold_price.jsp">
                    <i class="fa fa-dashboard"></i> 
                    <span>World Gold Price</span>
                </a>
            </li>
            <li class="treeview">
                <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/admin_views/admin_buy_gold_online.jsp">
                    <i class="fa fa-dashboard"></i> 
                    <span>Buy Gold Online</span>
                </a>
            </li>
            <li class="treeview">
                <a href="admin_buy_gold.jsp">
                    <i class="fa fa-dashboard"></i> 
                    <span>Buy Gold</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>