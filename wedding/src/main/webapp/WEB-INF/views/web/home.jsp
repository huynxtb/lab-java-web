<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>

<meta charset="UTF-8">
<title>Home Page</title>

</head>

<body>

<!-- slider_area -->
<div class="slider_area ">
	<div class="slider_area_inner slider_bg_1 overlay2">
		<div class="slider_text text-center">
			<div class="text_inner">
				<img src="<c:url value='/template/web/img/banner/ornaments.png'/> " alt="">
				<h4>17 Oct 2020</h4>
				<h3>Anjelina & Jack <br> Wedding Ceremony</h3>
				<span>Get Married</span>
			</div>
		</div>
	</div>
</div>
<!--/ slider_area -->
<div class="love_story_area">
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="section_title text-center">
					<img src="<c:url value='/template/web/img/banner/flowers.png'/> " alt="">
					<h3>Our. Love. Story</h3>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-4 col-md-6 col-lg-4">
				<div class="single_lover_story text-center">
					<div class="story_thumb">

<%--						<img width="100" height="100" alt="Image" src="data:image/jpg;base64, ${COUPLE_DTO.imageMale}" style="cursor: grab" onclick="swal({imageUrl: 'data:image/png;base64, ${COUPLE_DTO.imageMale}'});">--%>
					</div>
					<span>Groom</span>

					<div class="social_links">
						<ul>
							<li>
								<a href="#"> <i class="fa fa-facebook"></i> </a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-twitter"></i> </a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-instagram"></i> </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-xl-4 col-md-6 col-lg-4">
				<div class="weding_time_line text-center">
					<div class="single_time_line">
						<h3>Love Story</h3>

					</div>
					<div class="single_time_line">
						<h3>Wedding Day</h3>
					</div>
				</div>
			</div>
			<div class="col-xl-4 col-lg-4">
				<div class="single_lover_story text-center">
					<div class="story_thumb">

					</div>
					<span>Bride</span>

					<div class="social_links">
						<ul>
							<li>
								<a href="#"> <i class="fa fa-facebook"></i> </a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-twitter"></i> </a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-instagram"></i> </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>

</html>