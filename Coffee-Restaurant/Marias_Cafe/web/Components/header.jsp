<%-- 
    Document   : header
    Created on : Oct 7, 2020, 9:00:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid header-wrapper " id="header"> <!-- this is the Header Wrapper -->
    <div class="container">
        <div class="title-wrapper">
            <div class="title-wrapper-inner">
                <div class="title ">
                    Miyama Café
                </div>
                <div class="subtitle">
                    Welcome to my website
                </div>
            </div>
        </div>  <!-- these are the titles -->
        <div class="navbar navbar-compact">
            <div class="navbar-inner">
                <div class="container">
                    <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                    <a rel="nofollow" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" title="Toggle menu">
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
                                <a rel="nofollow" href="home">Home</a>
                            </li><li class="  " style="">
                                <a rel="nofollow" href="about">About my Cakes</a>
                            </li><li class="  " style="">
                                <a rel="nofollow" href="findMyCafe">Find Miyama Café</a>
                            </li><li class="  " style="">
                                <a rel="nofollow" href="createNewProduct">Create new Product</a>
                            </li>                
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- this is the Menu content -->
    </div>
</div>  <!-- this is the Header content -->
