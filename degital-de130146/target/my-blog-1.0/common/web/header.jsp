<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!--================Header Menu Area =================-->
    <header class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="<c:url value='/home'/> "><img src="<c:url value='/template/web/img/logo.jpg'/> " alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="<c:url value='/home'/> ">Trang Chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/about-me'/> ">About me</a></li>
                            <li class="nav-item"><a class="nav-link" href="404.html">404</a></li>
                            <li class="nav-item"><a class="nav-link" href="https://www.facebook.com/huynx.dev.dn/">Facebook</a></li>
                            <li class="nav-item"><a class="nav-link" href="https://www.instagram.com/huynx98/?hl=vi">Instagram</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="box_1620">
            <div class="banner_inner d-flex align-items-center">
                <div class="container">
                    <div class="banner_content text-center">
                        <div class="welcome_text">
                            <h2>Welcome To My Blog</h2>
                            <h2>Xuan Huy</h2>
                        </div>
                        <div class="hero__search">
                            <div class="hero__search__form">
							
                                <form action="#">
                                    <input type="text" class="input_search" placeholder="Tìm kiếm trong blog">
                                    <button type="submit" class="main_btn">SEARCH</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->