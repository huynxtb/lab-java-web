<%--
  Created by IntelliJ IDEA.
  User: Xuan Huy
  Date: 11/4/2020
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
    <div class="wrapper contact">
        <div class="heading">
            <h1 class="page-title">How to Help</h1>
        </div>

        <div class="content">
            <div class="section">
                <div class="content">
                    <div class="span12 contact-text">
                        <h4>Thank you for your interest in helping our school</h4>
                        <p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span></p> <p><span>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit
 lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat</span></p>
                    </div>
                    <div class="img-simple span6 ">
                        <div class="image">
                            <a rel="nofollow" data-ss="imagemodal" data-href="http://cdn.simplesite.com/i/d2/f3/285415634679428050/i285415639381953180._szw1280h1280_.jpg"><img src="./How to Help_files/i285415639381953180._szw480h1280_.jpg"></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section contact-form"><div class="content"><div class="alert alert-success hide">
                Thank you for your message.
            </div>
                <div class="alert alert-error hide">
                    <button type="button" class="close">×</button>
                </div>
                <p>Write your message here. Fill out the form:</p>
                <form>

                    <fieldset>

                        <div class="row-fluid">
                            <div class="span6">
                                <input type="text" name="author[name]" placeholder="Write your name here" style="margin-bottom:11px!important">
                                <span class="_help-block"></span>
                            </div>

                            <div class="span6">
                                <input type="text" name="author[email]" placeholder="Write your email here" style="margin-bottom:11px!important">
                                <span class="_help-block"></span>
                            </div>
                        </div>

                        <div class="row-fluid">
                            <div class="span12">
                                <textarea id="contactFormMessageText" name="text" placeholder="Write your message here" style="margin-bottom:11px!important"></textarea>
                                <span class="_help-block"></span>
                            </div>
                        </div>

                        <div id="recaptcha" class="row-fluid"></div>

                        <div class="row-fluid">
                            <div class="span12">
                                <button class="btn btn-primary pull-right" type="submit" data-default="Send - Click here" data-progress="&lt;i class=&#39;icon-spin icon-spinner&#39;&gt;&lt;/i&gt; Sending" data-error="Send - Click here" data-success="&lt;i class=&#39;icon-ok&#39;&gt;&lt;/i&gt; Sent">Send - Click here
                                </button>
                            </div>
                        </div>

                    </fieldset>

                </form>
                <script type="text/javascript">

                    $('#contactFormMessageText').blur(function () {
                        var text = $('#contactFormMessageText').val().trim();
                        $('#contactFormMessageText').val(text);
                    });

                </script></div></div>
        </div>


    </div>
</div>
</body>
</html>
