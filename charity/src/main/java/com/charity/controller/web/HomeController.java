package com.charity.controller.web;

import com.charity.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "controlerOfWeb")
public class HomeController {


	@Autowired
	private INewService newService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}

	@RequestMapping(value = "/about-our-school", method = RequestMethod.GET)
	public ModelAndView aboutOurSchool() {
		ModelAndView mav = new ModelAndView("web/about-our-school");
		return mav;
	}

	@RequestMapping(value = "/contract", method = RequestMethod.GET)
	public ModelAndView contract() {
		ModelAndView mav = new ModelAndView("web/contract");
		return mav;
	}

	@RequestMapping(value = "/how-to-help", method = RequestMethod.GET)
	public ModelAndView howToHelp() {
		ModelAndView mav = new ModelAndView("web/how-to-help");
		return mav;
	}

	@RequestMapping(value = "/photo-album", method = RequestMethod.GET)
	public ModelAndView photoAlbum() {
		ModelAndView mav = new ModelAndView("web/photo-album");
		return mav;
	}
}
