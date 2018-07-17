package rtvms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@RequestMapping(value="/user", method = RequestMethod.GET)
	public String showLogin() {
		return "trafficLogin";
	}
	@RequestMapping(value="/user/home", method = RequestMethod.GET)
	public String showHome() {
		return "userHome";
	}
	
	
}
