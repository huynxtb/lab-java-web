<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- attend_area -->
<div class="attending_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1">
                <div class="main_attending_area">
                    <div class="flower_1 d-none d-lg-block">
                        <img src="<c:url value='/template/web/img/appointment/flower-top.png'/> " alt="">
                    </div>
                    <div class="flower_2 d-none d-lg-block">
                        <img src="<c:url value='/template/web/img/appointment/flower-bottom.png'/> " alt="">
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-xl-7 col-lg-8">
                            <div class="popup_box ">
                                <div class="popup_inner">
                                    <div class="form_heading text-center">
                                        <h3>Are You Attending?</h3>
                                        <p>Kindly respond before 30 August</p>
                                    </div>
                                    <form action="#">
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <input type="text" placeholder="Your Name">
                                            </div>
                                            <div class="col-xl-12">
                                                <input type="text" placeholder="Email">
                                            </div>
                                            <div class="col-xl-12">
                                                <select class="form-select wide" id="default-select" class="">
                                                    <option data-display="1 Guest">1 Guest</option>
                                                    <option value="1">2 Guest</option>
                                                    <option value="2">3 Guest</option>
                                                    <option value="3">4 Guest</option>
                                                </select>
                                            </div>
                                            <div class="col-xl-12">
                                                <textarea placeholder="Additional Message"></textarea>
                                            </div>
                                            <div class="col-xl-12">
                                                <button type="submit" class="boxed_btn3">R.S.V.P</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- / attend_area -->