<%-- 
    Document   : Home
    Created on : Oct 7, 2020, 8:49:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>All Products</title>
        <link rel="stylesheet" type="text/css" href="css/3746044.design.v25490.css">        
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script type="text/javascript" src="js/frontendApp.min.js.download"></script>
    </head>
    <body>
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <jsp:include page="Components/header.jsp" />
            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <s:iterator value="products">
                                        <div class="section">
                                            <div class="content">
                                                <div class="thumbnails column-article-section">
                                                    <div class="img-simple span12 " class="content">
                                                        <div class="img-simple span6 pull-left">
                                                            <a href="cake?id=<s:property value='id' />" style="text-decoration:none"><h4><b><s:property value="name" /></b></h4></a>
                                                            <div class="image">
                                                                <a rel="nofollow" data-ss="imagemodal" data-href="<s:property value='descriptionImage'/>"><img src="<s:property value='descriptionImage'/>" alt="<s:property value='name' />"></a>
                                                            </div>
                                                        </div>
                                                        <br/><br/>
                                                        <p class="shorten"><s:property value="content" /></p>
                                                        <p style="text-align:left;">
                                                            <a href="cake?id=<s:property value='id' />">Đọc tiếp</a>
                                                            <span style="float:right;">
                                                                <i class='far fa-eye'></i><s:property value="pageCount" />
                                                            </span>                                                          
                                                        </p>
                                                    </div>                                               
                                                </div>
                                            </div>
                                        </div>
                                    </s:iterator>
                                </div>
                            </div>
                        </div>
                        <jsp:include page="Components/rightBar.jsp" />
                    </div>   
                    
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->

            <jsp:include page="Components/footer.jsp" />

            <script>
                function ellipsify(str) {
                    if (str.length > 10) {
                        return (str.substring(0, 250) + "...");
                    } else {
                        return str;
                    }
                }
                var ar = document.getElementsByClassName("shorten");

                for (var i = 0; i < ar.length; i++) {
                    div = ar[i];
                    div.innerHTML = ellipsify(div.innerHTML);
                }

            </script>

        </div>
    </body>
</html>
