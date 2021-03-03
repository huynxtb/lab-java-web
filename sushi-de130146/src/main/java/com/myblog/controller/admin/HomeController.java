package com.myblog.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "controllerOfAdmin")
public class HomeController {

    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public ModelAndView homePageAdmin() {
        return new ModelAndView("admin/home");
    }

    @RequestMapping(value = "/admin/menu/list", method = RequestMethod.GET)
    public ModelAndView pageMenuList() {
        return new ModelAndView("admin/menu/list");
    }

    @RequestMapping(value = "/admin/menu/edit", method = RequestMethod.GET)
    public ModelAndView pageMenuEdit() {
        return new ModelAndView("admin/menu/edit");
    }

    @RequestMapping(value = "/admin/new/list", method = RequestMethod.GET)
    public ModelAndView pageNewList() {
        return new ModelAndView("admin/new/list");
    }

    @RequestMapping(value = "/admin/new/edit", method = RequestMethod.GET)
    public ModelAndView pageNewEdit() {
        return new ModelAndView("admin/new/edit");
    }
}