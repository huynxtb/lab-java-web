<%-- 
    Document   : About
    Created on : Oct 10, 2020, 10:22:07 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/3746044.design.v25490.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Find my Cafe</title>
    </head>
    <body>
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <jsp:include page="Components/header.jsp" />

            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper map-page">
                                <div class="heading">
                                    <h1 class="page-title"><b>Find Miyama Café</b></h1>
                                </div>

                                <div class="content">
                                    <div class="section">
                                        <div class="content">

                                            <div class="row-fluid map-page-info">
                                                <div class="span6">
                                                    <div class="item">
                                                        <div class="heading">
                                                            <h4 class="item-title map-page-title"><b>Address and contact:</b></h4>
                                                        </div>
                                                        <div class="content">
                                                            <div class="country">
                                                                <p><s:property value="contact.address" /></p>
                                                            </div>

                                                            <div class="row-fluid">
                                                                <div class="span2">
                                                                    <b>Tel:</b>
                                                                </div>    
                                                                <div class="span10">
                                                                    <a href="tel:<s:property value='contact.phoneNumber' />"><s:property value='contact.phoneNumber' /></a>
                                                                </div>    
                                                            </div>
                                                            <div class="row-fluid">
                                                                <div class="span2">
                                                                    <b>Email:</b>
                                                                </div>    
                                                                <div class="span10">
                                                                    <a href="mailto:<s:property value='contact.email' />"><s:property value='contact.email' /></a>
                                                                </div>    
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span6">
                                                    <div class="item">
                                                        <div class="heading">
                                                            <h4 class="item-title map-page-title"><b>Opening hours:</b></h4>
                                                        </div>
                                                        <pre><s:property value='contact.openingHours' /></pre>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="section">
                                        <div class="content">
                                            <div class="map-container">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15677.988356268977!2d106.7009194!3d10.7731883!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfa566f5dff74f32b!2sMiyama%20Cafe!5e0!3m2!1svi!2s!4v1602394312452!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>                                      
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>      
                        <jsp:include page="Components/rightBar.jsp" />
                    </div>
                </div>  <!-- the controller has determined which view to be shown in the content -->

                <jsp:include page="Components/footer.jsp" />
                <!-- this is the Footer content -->
            </div>
    </body>
</html>
