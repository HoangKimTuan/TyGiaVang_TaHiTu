<%-- 
    Document   : content_admin_member_edit
    Created on : May 25, 2017, 7:41:40 PM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Edit Member
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Member</li>
            <li class="active">Edit Member</li>
        </ol>
    </section> 
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <br/>
                    <form action="EditMemberServlet" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label col-sm-2">Id: </label>
                            <div class="col-sm-6">
                                <input class="form-control" readonly="true" value="<%=request.getParameter("id") %>" name="id" />
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-sm-2">Username: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="email" value="<%=request.getParameter("username") %>" placeholder="Username" name="username" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Password: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="password" placeholder="Password" name="password" value="<%=request.getParameter("password") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Job: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Job" name="job" value="<%=request.getParameter("job") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">First Name: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="First Name" name="first_name" value="<%=request.getParameter("first_name") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Last Name: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Last Name" name="last_name" value="<%=request.getParameter("last_name") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Birthday: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="date" placeholder="Birthday" name="birthday" value="<%=request.getParameter("birthday") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Gender: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Gender" name="gender" value="<%=request.getParameter("gender") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Address: </label>
                            <div class="col-sm-6">
                                <input class="form-control" placeholder="Address" name="address" value="<%=request.getParameter("address") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Phone Number: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="tel" placeholder="Phone Number" name="phone_number" value="<%=request.getParameter("phone_number") %>" required/>
                            </div>
                        </div>
                         
                        <div class="form-group">
                            <label class="control-label col-sm-2">Select avatar:</label>
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
