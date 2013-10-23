package com.springapp.mvc;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
public class System {
	
	private String name;
	private Integer id;
	private String issueTrackerUrl;
	private String programmingLang;
	private String versionControlUrl;
	   
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setIssueTrackerUrl(String issueTrackerUrl) {
		this.issueTrackerUrl = issueTrackerUrl;
	}
	
	public String getIssueTrackerUrl() {
		return issueTrackerUrl;
	}
	
	public void setProgrammingLang(String programmingLang) {
		this.programmingLang = programmingLang;
	}
	
	public String getProgrammingLang() {
		return programmingLang;
	}
	
	public void setVersionControlUrl(String versionControlUrl) {
		this.versionControlUrl = versionControlUrl;
	}
	
	public String getVersionControlUrl() {
		return versionControlUrl;
	}

}
