<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">
    <title>Detail</title>

</head>

<body>
<!--================Portfolio Details Area =================-->
<form action="<c:url value='/detail'/>" id="formSubmit" method="get">
<section class="portfolio_details_area p_120">
    <div class="container">
        <div class="portfolio_details_inner">
            <div class="row">
                <div class="col-md-6">
                    <div class="left_img">
                        <img class="img-fluid" src="${NEW_DTO.image}" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio_right_text">
                        <h4>${NEW_DTO.title}</h4>
                        <p>${NEW_DTO.shortDescription}</p>
                        <ul class="list">
                            <li><span>Rating</span>: <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></li>
                            <li><span>Created By</span>:  ${NEW_DTO.createdBy}</li>
                            <li><span>Created Date</span>:  ${NEW_DTO.createdDate}</li>
                            <li><span>Modified Date</span>:  ${NEW_DTO.modifiedDate}</li>
                        </ul>
                        <ul class="list social_details">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
          <p>${NEW_DTO.content}</p>
        </div>
    </div>
</section>
<!--================End Portfolio Details Area =================-->
</form>
</body>

</html>