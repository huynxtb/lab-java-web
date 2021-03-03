<%-- 
    Document   : About
    Created on : Oct 10, 2020, 10:31:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/3746044.design.v25490.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>About my Cakes</title>
    </head>
    <body>
    <body data-pid="118937148" data-iid="" style="line-height: normal;" class="stefan-asafti">

        <div class="container-fluid site-wrapper">
            <!-- this is the Sheet -->
            <jsp:include page="Components/header.jsp" />
            <!-- this is the Header content -->
            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <div class="row-fluid layout5-row  margins-topbottom padding-all ">
                                        <div class="sections-wrapper">
                                            <div class="span12 ">
                                                <div class="outer-margin-on first last">
                                                    <div class="section article margins-on">
                                                        <style>    .wordwrapfix {
                                                                word-wrap:break-word;
                                                            }
                                                        </style>
                                                        <div class="heading wordwrapfix">
                                                            <h3><s:property value="about.name" /></h3>
                                                        </div>

                                                        <div class="content">
                                                            <div class="img-simple span6 pull-right">
                                                                <div class="image">
                                                                    <a data-ss="imagemodal" data-href="//cdn.simplesite.com/i/63/0a/282319406567983715/i282319414620354444._szw1280h1280_.jpg" rel="group" has-arrows="False"><img src="<s:property value='about.imageDescription' />"></a>
                                                                </div>
                                                            </div>
                                                            <p style="font-family: georgia, palatino; font-size: 20px;"><s:property value="about.content" /></p>   
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <jsp:include page="Components/rightBar.jsp" />
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->
            <jsp:include page="Components/footer.jsp" />
    </body>
</html>
