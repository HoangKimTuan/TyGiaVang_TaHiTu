<%-- 
    Document   : newjsf
    Created on : May 19, 2017, 12:15:59 AM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<div class="container" id="content_contact">
    <h1>Liên hệ TaHiTu</h1>
    <div class="col-md-6">
        <p> Chúng tôi rất trân trọng mọi ý kiến đóng góp gửi về cho chúng tôi. <br>
            Ý kiến đóng góp có thể bày tỏ mong muốn một chức năng, một loại tỷ giá... nào đó mà bạn cho rằng bạn cần.
            Chân thành cảm ơn bạn đã sử dụng.
        </p>

        <h:form>
            <h:panelGrid columns="2">
                <h:outputLabel value="Name:" for="name" />
                <h:inputText id="name" value="#{contactController.contact.name}" title="Name" required="true" requiredMessage="The Name field is required."/>
                <h:outputLabel value="Email:" for="email" />
                <h:inputText id="email" value="#{contactController.contact.email}" title="Email" required="true" requiredMessage="The Email field is required."/>
                <h:outputLabel value="Content:" for="content" />
                <h:inputText id="content" value="#{contactController.contact.content}" title="Content" required="true" requiredMessage="The Content field is required."/>
                <h:commandButton value="Gửi phản hồi" action="#{contactController.add()}"></h:commandButton>
            </h:panelGrid>
        </h:form>
    </div>
    
    <div class="col-md-3">
        <address>
            <p>Địa chỉ: Trường ĐH Công Nghệ Thông Tin, Thủ Đức, TP.HCM</p>
            <p>Email: tahitu@gmail.com</p>
        </address>
    </div>
</div>
