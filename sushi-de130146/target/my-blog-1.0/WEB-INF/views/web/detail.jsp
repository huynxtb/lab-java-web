<%--
  Created by IntelliJ IDEA.
  User: Xuan Huy
  Date: 9/23/2020
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
</head>
<body>
<form action="<c:url value='/detail'/>" id="formSubmit" method="get">
<section class="blog_area single-post-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <div class="single-post">
                    <div class="feature-img">
                        <img class="img-fluid" src="${NEW_DTO.image}" alt="">
                    </div>
                    <div class="blog_details">
                        <h2>${NEW_DTO.title}</h2>
                        <ul class="blog-info-link mt-3 mb-4">
                            <li><a href="#"><i class="fa fa-user"></i>${NEW_DTO.createdBy}</a></li>
                            <li><a href="#"><i class="fa fa-times"></i>${NEW_DTO.createdDate}</a></li>
                        </ul>
                        <p class="excert">
                            ${NEW_DTO.content}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</form>
<!--================ Blog Area end =================-->
</body>
</html>
