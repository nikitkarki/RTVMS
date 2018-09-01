package rtvms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rtvms.model.LookUpForm;
import rtvms.model.UserCredential;
import rtvms.service.UserService;

@Controller
public class UserController {
	private UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@RequestMapping(value="/user", method = RequestMethod.GET)
	public String showLogin(Model model) {
		UserCredential userCredential = new UserCredential();
		model.addAttribute("userCredential",userCredential);
		return "trafficlogin";
	}
	@RequestMapping(value="/user/home", method = RequestMethod.GET)
	public String showHome() {
		return "userhome";
	}
	
	@RequestMapping(value="/user", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("userCredential") UserCredential userCredential, Model model) {
		int userLogin = userService.loginUser(userCredential);
		if(userLogin>0) {
			model.addAttribute("content", "");
			return "userhome";
		} else {
			model.addAttribute("loginMessage","Invalid Username or Password");
			return "trafficlogin";
		}
	}
	@RequestMapping(value="/user/lookuplicense", method = RequestMethod.GET)
	public String showLicense(Model model) {
		LookUpForm myLookUpForm= new LookUpForm();
		model.addAttribute("content","lookuplicense.jsp");
		model.addAttribute("myLookUpForm",myLookUpForm);
		return "userhome";
	}
	@RequestMapping(value="/user/lookuplicense", method = RequestMethod.POST)
	public String license(Model model) {
		model.addAttribute("lookupmessage","A valid license found");
		LookUpForm myLookUpForm= new LookUpForm();
		model.addAttribute("myLookUpForm",myLookUpForm);
		model.addAttribute("content","lookuplicense.jsp");
		return "userhome";
	}
	
}
