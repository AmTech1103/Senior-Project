package com.springapp.mvc;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping(value = "addRelease", method = RequestMethod.GET)
    public ModelAndView release() {
        return new ModelAndView("addRelease", "command", new Release());
    }

    @RequestMapping(value = "addReport", method = RequestMethod.GET)
    public ModelAndView report() {
        return new ModelAndView("addReport", "command", new Report());
    }

    @RequestMapping(value = "showReports", method = RequestMethod.POST)
    public String addReport(@ModelAttribute("report")Report report,
                            ModelMap model) {
        model.addAttribute("issueid", report.getIssueid());
        model.addAttribute("release", report.getRelease());//NEEDS TO BE CHANGED TO ACCEPT AN OBJECT OF A RELEASE CLASS
        model.addAttribute("title", report.getTitle());
        model.addAttribute("description", report.getDescription());
        model.addAttribute("type", report.getType());

        return "showReports";
    }

    @RequestMapping(value = "showReports", method = RequestMethod.GET)
    public String showReports(@ModelAttribute("report")Report report,
                              ModelMap model) {
        report.setIssueid("Issue #10");
        report.setRelease("Juno");
        report.setTitle("Minimize button is broken");
        report.setDescription("Minimize button does not ....");
        report.setType("Bug");

        model.addAttribute("issueid", report.getIssueid());
        model.addAttribute("release", report.getRelease());//NEEDS TO BE CHANGED TO ACCEPT AN OBJECT OF A RELEASE CLASS
        model.addAttribute("title", report.getTitle());
        model.addAttribute("description", report.getDescription());
        model.addAttribute("type", report.getType());

        return "showReports";
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

    @RequestMapping(value = "showSystems", method = RequestMethod.GET)
    public String showSystems(@ModelAttribute("system")System system,
                              ModelMap model) {
        //EXAMPLE SYSTEM OBJECT STRICTLY FOR THE GET METHOD, PROVIDES DUMMY DATA FOR THE TABLE
        system.setId(10);
        system.setIssueTrackerUrl("http://bugs.openmpt.org/view.php?id=401");
        system.setName("OpenMPT");
        system.setProgrammingLang("C++");
        //system.setversionControlUrl("http://bugs.openmpt.org/changelog_page.php");
        //------------------------------------------------------------------------------------

        model.addAttribute("id", system.getId());
        model.addAttribute("name", system.getName());
        model.addAttribute("issueTrackerUrl", system.getIssueTrackerUrl());
        model.addAttribute("programmingLang", system.getProgrammingLang());
        //model.addAttribute("versionControlUrl", system.getversionControlUrl());

        return "showSystems";
    }

}
