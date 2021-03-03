<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Home Page</title>

</head>

<body>
<form action="<c:url value='/home'/>" id="formSubmit" method="get">
    <section class="home_blog_area pad_top">
        <div class="container">
            <div class="home_blog_inner">

                <c:forEach var="newDTO" items="${NEW_DTO.listDTO}">

                    <c:if test = "${newDTO.id %2 == 0}">
                        <div class="row h_blog_item">
                            <div class="col-lg-6">
                                <div class="h_blog_img">
                                    <img class="img-fluid" src="${newDTO.image}" alt="">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="h_blog_text">
                                    <div class="h_blog_text_inner left">
                                        <h4>${newDTO.title}</h4>
                                        <p>${newDTO.shortDescription}</p>
                                        <c:url var="detailNews" value="/detail">
                                            <c:param name="id" value="${newDTO.id}"/>
                                        </c:url>
                                        <a class="main_btn2" href="${detailNews}">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>

                    <c:if test = "${newDTO.id %2 != 0}">
                        <div class="row h_blog_item">
                            <div class="col-lg-6">
                                <div class="h_blog_text">
                                    <div class="h_blog_text_inner right">
                                        <h4>${newDTO.title}</h4>
                                        <p>${newDTO.shortDescription}</p>
                                        <c:url var="detailNews" value="/detail">
                                            <c:param name="id" value="${newDTO.id}"/>
                                        </c:url>
                                        <a class="main_btn2" href="${detailNews}">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="h_blog_img">
                                    <img class="img-fluid" src="${newDTO.image}" alt="">
                                </div>
                            </div>
                        </div>
                    </c:if>

                </c:forEach>

            </div>
        </div>
    </section>

    <ul class="pagination" id="pagination"></ul>
</form>
</body>

</html>