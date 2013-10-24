package com.springapp.mvc;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
public class Release {
	
	System system;
	String releasename;
	
	public System getSystem() {
		return system;
	}
	public void setSystem(System system) {
		this.system = system;
	}
	public String getReleasename() {
		return releasename;
	}
	public void setReleasename(String releasename) {
		this.releasename = releasename;
	}

}
