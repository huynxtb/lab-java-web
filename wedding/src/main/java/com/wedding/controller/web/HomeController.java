package com.wedding.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "controlerOfWeb")
public class HomeController {


	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}

	@RequestMapping(value = "/photo-album", method = RequestMethod.GET)
	public ModelAndView restaurantPage() {
		ModelAndView mav = new ModelAndView("web/gallery");
		return mav;
	}

	@RequestMapping(value = "/party-address", method = RequestMethod.GET)
	public ModelAndView menuPage() {
		ModelAndView mav = new ModelAndView("web/party_address");
		return mav;
	}

}
