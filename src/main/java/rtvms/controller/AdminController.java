package rtvms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String showLogin() {
		return "loginPage";
	}
	@RequestMapping(value="/admin/home", method = RequestMethod.GET)
	public String showHome() {
		return "adminHomepage";
	}
	@RequestMapping(value="/admin/lookupuser", method = RequestMethod.GET)
	public String showUser(Model model) {
		model.addAttribute("content", "lookupUser.jsp");
		return "adminHomepage";
	}
}