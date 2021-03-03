<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header-->
<header>
	<div class="header-area ">
		<div id="sticky-header" class="main-header-area">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-xl-3 col-lg-3">
						<div class="logo-img">
							<a href="<c:url value='/home'/>">
								<img src="<c:url value='/template/web/img/logo.png'/> " alt="">
							</a>
						</div>
					</div>
					<div class="col-xl-9 col-lg-9">
						<div class="main-menu  d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li id ="home-page"><a class="active" href="<c:url value='/home'/>">Home</a></li>
									<li id ="photo-page"><a href="<c:url value='/photo-album'/>">Photo Album</a></li>
									<li id ="party-address"><a href="<c:url value='/party-address'/>">Party Address</a></li>
								</ul>
							</nav>
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
<!--/ header-->