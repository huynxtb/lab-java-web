<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header-start -->
<header>
	<div class="header-area ">
		<div id="sticky-header" class="main-header-area">
			<div class="container-fluid p-0">
				<div class="row align-items-center no-gutters">
					<div class="col-xl-5 col-lg-5">
						<div class="main-menu  d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a class="active" href="<c:url value='/home'/> ">home</a></li>
									<li><a href="<c:url value='/menu?page=1&limit=4'/>">Menu</a></li>
									<li><a href="<c:url value='/list-restaurant?page=1&limit=4'/>">Top Restaurant</a></li>
									<li><a href="#">blog <i class="ti-angle-down"></i></a>
										<ul class="submenu">
											<li><a href="blog.html">blog</a></li>
											<li><a href="single-blog.html">single-blog</a></li>
										</ul>
									</li>
									<li><a href="contact.html">Admin</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-xl-2 col-lg-2">
						<div class="logo-img">
							<a href="index.html">
								<img src="img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-xl-5 col-lg-5 d-none d-lg-block">
						<div class="book_room">
							<div class="socail_links">
								<ul>
									<li>
										<a href="#">
											<i class="fa fa-instagram"></i>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-twitter"></i>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-facebook"></i>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-google-plus"></i>
										</a>
									</li>
								</ul>
							</div>
							<div class="book_btn d-none d-xl-block">
								<a class="#" href="#">+10 367 453 7382</a>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- header-end -->
