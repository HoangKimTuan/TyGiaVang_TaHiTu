<%-- 
    Document   : get_data
    Created on : May 15, 2017, 2:56:19 PM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="network.HttpURLConnectionGoldRate"%>
<% if (request.getParameter("url") != null) { %>
    <%= HttpURLConnectionGoldRate.sendGet(request.getParameter("url")) %>
<% } %>
