package com.springapp.mvc;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * Created with IntelliJ IDEA.
 * User: User
 * Date: 10/19/13
 * Time: 6:03 PM
 * To change this template use File | Settings | File Templates.
 */

@Controller
@RequestMapping("/")
public class index {
    private System system;
    private ModelMap model;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String home() {
        return "index";
    }

    @RequestMapping(value = "addSystem", method = RequestMethod.GET)
    public ModelAndView system() {
        return new ModelAndView("addSystems", "command", new System());
    }

    @RequestMapping(value = "showSystems", method = RequestMethod.POST)
    public String addStudent(System system,
                             ModelMap model) {
        //this.system = system;
        //this.model = model;
        model.addAttribute("id", system.getId());
        model.addAttribute("name", system.getName());
        model.addAttribute("issueTrackerUrl", system.getIssueTrackerUrl());
        model.addAttribute("programmingLang", system.getProgrammingLang());
        //model.addAttribute("versionControlUrl", system.getversionControlUrl());

        return "showSystems";
    }

}
