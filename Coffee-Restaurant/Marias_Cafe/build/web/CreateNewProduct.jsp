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
        <link rel="stylesheet" type="text/css" href="css/style.css">   
        <link rel="stylesheet" type="text/css" href="css/utils.css">   
    </head>
    <body>
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <jsp:include page="Components/header.jsp" />
            <div class="wrap-contact100">                
                <form class="contact100-form" action="addNewProduct" method="post">
                    <span class="contact100-form-title">
                        New Product
                    </span>
                    
                    <div class="wrap-input100 rs1-wrap-input100">
                        <span class="label-input100">Name of Product *</span>
                        <input class="input100" type="text" name="name" placeholder="Enter Product's Name">
                        <s:fielderror fieldName="nameError" cssClass="errorMessage"/>
                    </div>

                    <div class="wrap-input100 rs1-wrap-input100">
                        <span class="label-input100">Enter Price *</span>
                        <input class="input100" type="text" name="price" placeholder="Enter Product's Price">
                        <s:fielderror fieldName="priceError" cssClass="errorMessage"/>
                    </div>

                    <div class="wrap-input100">
                        <span class="label-input100">Image URL</span>
                        <input class="input100" type="text" name="descriptionImage" placeholder="http://">
                    </div>

                    <div class="wrap-input100">
                        <span class="label-input100">Description *</span>
                        <textarea class="input100" name="content" placeholder="Product's description here..."></textarea>
                        <s:fielderror fieldName="contentError" cssClass="errorMessage"/>
                    </div>

                    <div class="container-contact100-form-btn">
                        <div class="wrap-contact100-form-btn">
                            <div class="contact100-form-bgbtn"></div>
                            <button class="contact100-form-btn">
                                Submit
                            </button>
                        </div>
                    </div>
                </form>
            </div>

            <jsp:include page="Components/footer.jsp" />


            <script src="js/main.js"></script>
        </div>
    </body>
</html>
