<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Home Page</title>

</head>

<body>

	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container">

	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3835.8592773574464!2d108.2606104420244!3d15.968723587644957!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1600849454360!5m2!1svi!2s" width="1200" height="800" frameborder="0" style="border:1px;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">Get in Touch</h2>
				</div>
				<div class="col-lg-8">
					<form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message"></textarea>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">
								</div>
							</div>
						</div>
						<div class="form-group mt-3">
							<button type="submit" class="button button-contactForm boxed-btn">Send</button>
						</div>
					</form>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-home"></i></span>
						<div class="media-body">
							<h3>Buttonwood, California.</h3>
							<p>Rosemead, CA 91770</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-tablet"></i></span>
						<div class="media-body">
							<h3>+1 253 565 2365</h3>
							<p>Mon to Fri 9am to 6pm</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-email"></i></span>
						<div class="media-body">
							<h3>support@colorlib.com</h3>
							<p>Send us your query anytime!</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ contact section end ================= -->


</body>

</html>