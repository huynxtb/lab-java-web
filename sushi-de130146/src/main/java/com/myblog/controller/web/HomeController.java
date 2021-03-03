package com.myblog.controller.web;

import com.myblog.dto.MenuDTO;
import com.myblog.dto.NewDTO;
import com.myblog.service.IMenuService;
import com.myblog.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "controlerOfWeb")
public class HomeController {

	@Autowired
	private IMenuService menuService;

	@Autowired
	private INewService newService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}

	@RequestMapping(value = "/list-restaurant", method = RequestMethod.GET)
	public ModelAndView restaurantPage(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		ModelAndView mav = new ModelAndView("web/list_restaurant");
		NewDTO dto = new NewDTO();
		dto.setPage(page);
		dto.setLimit(limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		dto.setListDTO(newService.findAll(pageable));
		dto.setTotalItem(newService.getTotalItem());
		dto.setTotalPage((int) Math.ceil((double) dto.getTotalItem() / dto.getLimit()));
		mav.addObject("RESTAURANT_DTO", dto);
		return mav;
	}

	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public ModelAndView menuPage(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		ModelAndView mav = new ModelAndView("web/menu");
		MenuDTO dto = new MenuDTO();
		dto.setPage(page);
		dto.setLimit(limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		dto.setListDTO(menuService.findAll(pageable));
		dto.setTotalItem(menuService.getTotalItem());
		dto.setTotalPage((int) Math.ceil((double) dto.getTotalItem() / dto.getLimit()));
		mav.addObject("MENU_DTO", dto);
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
}
