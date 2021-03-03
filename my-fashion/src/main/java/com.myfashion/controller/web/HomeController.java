package com.myfashion.controller.web;


import com.myfashion.dto.ContactDTO;
import com.myfashion.dto.NewDTO;
import com.myfashion.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "controlerOfWeb")
public class HomeController {

	@Autowired
	private INewService newService;

	@GetMapping(value = "/home")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		NewDTO dto = new NewDTO();
		dto.setListDTO(newService.findAll());
		mav.addObject("model", dto);
		return mav;
	}

	@GetMapping(value = "/about-me")
	public ModelAndView restaurantPage() {
		ModelAndView mav = new ModelAndView("web/About me");
		NewDTO dto = new NewDTO();

		mav.addObject("ABOUT_ME", dto);
		return mav;
	}

	@GetMapping(value = "/contract")
	public ModelAndView menuPage() {
		ModelAndView mav = new ModelAndView("web/Contact");
		ContactDTO dto = new ContactDTO();
		return mav;
	}


}
