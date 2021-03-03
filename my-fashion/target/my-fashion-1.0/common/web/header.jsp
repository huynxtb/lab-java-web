<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid header-wrapper " id="header"> <!-- this is the Header Wrapper -->
    <div class="container">
        <div class="title-wrapper">
            <div class="title-wrapper-inner">
                <a rel="nofollow" class="logo " href="http://us-123fashion.simplesite.com/">
                </a>
                <div class="title ">
                    My Fashion Blog
                </div>
                <div class="subtitle">
                    Welcome to this website
                </div>
            </div>
        </div>  <!-- these are the titles -->
        <div class="navbar navbar-compact">
            <div class="navbar-inner">
                <div class="container">
                    <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                    <a rel="nofollow" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"
                       title="Toggle menu">
                        <span class="menu-name">Menu</span>
                        <span class="menu-bars">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </span>
                    </a>


                    <!-- Everything you want hidden at 940px or less, place within here -->
                    <div class="nav-collapse collapse">
                        <ul class="nav" id="topMenu" data-submenu="horizontal">
                            <li class=" active " style="">
                                <a rel="nofollow" href="<c:url value='/home'/> ">My Fashion
                                    Blog</a>
                            </li>
                            <li class="  " style="">
                                <a rel="nofollow" href="<c:url value='/about-me'/>">About me</a>
                            </li>
                            <li class="  " style="">
                                <a rel="nofollow" href="<c:url value='/contract'/>">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- this is the Menu content -->
    </div>
</div>  <!-- this is the Header content -->