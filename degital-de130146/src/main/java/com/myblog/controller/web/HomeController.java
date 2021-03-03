package com.myblog.controller.web;

import com.myblog.dto.NewDTO;
import com.myblog.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "controlerOfWeb")
public class HomeController {

	@Autowired
	private INewService newService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		NewDTO dto = new NewDTO();
		dto.setListDTO(newService.findAll());
		mav.addObject("NEW_DTO", dto);
		return mav;
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detailNews(@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("web/detail");
		NewDTO dto = new NewDTO();
		if (id != null) {
			dto = newService.findById(id);
		}
		mav.addObject("NEW_DTO", dto);
		return mav;
	}

	@RequestMapping(value = "/about-me", method = RequestMethod.GET)
	public ModelAndView aboutMe() {
		ModelAndView mav = new ModelAndView("web/about-me");
		NewDTO dto = new NewDTO();
		dto = newService.findById(4);
		mav.addObject("NEW_DTO", dto);
		return mav;
	}
}
