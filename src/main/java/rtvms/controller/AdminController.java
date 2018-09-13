package rtvms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rtvms.model.User;
import rtvms.model.UserCredential;
import rtvms.service.UserService;

@Controller
public class AdminController {
	
	private UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String showLogin(Model model) {
		UserCredential userCredential = new UserCredential();
//		model.addAttribute("loginMessage","");
		model.addAttribute("userCredential",userCredential);
		return "loginpage";
	}
	@RequestMapping(value="/admin", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute("userCredential") UserCredential userCredential, Model model) {
		int userLogin = userService.loginUser(userCredential);
		if(userLogin>0) {
			return "adminhomepage";
		} else {
			model.addAttribute("loginMessage","Invalid Username or Password");
			return "loginpage";
		}
	}
	@RequestMapping(value="/admin/home", method = RequestMethod.GET)
	public String showHome() {
		return "adminhomepage";
	}
	@RequestMapping(value="/admin/lookupuser", method = RequestMethod.GET)
	public String showUser(Model model) {
		model.addAttribute("content", "lookupuser.jsp");
		return "adminhomepage";
	}
	@RequestMapping(value="/admin/registeruser", method = RequestMethod.GET)
	public String showRegister(Model model) {
		User user = new User();
		model.addAttribute("content", "registeruser.jsp");
		model.addAttribute("registrationForm", user);
		return "adminhomepage";
	}
	@RequestMapping(value="/admin/lookupuser", method = RequestMethod.POST)
	public String getUsers(Model model, HttpServletRequest request) {
		String searchString = request.getParameter("username");
		List<User> userList = userService.getUser(searchString);
		model.addAttribute("searchedUser",userList);
		model.addAttribute("content", "lookupuser.jsp");
		return "adminhomepage";
	}
	@RequestMapping(value="/admin/registeruser", method = RequestMethod.POST)
	public String doRegister(@ModelAttribute("registrationForm") User user, Model model) {
		Boolean registerUser = userService.registerUser(user);
		System.out.println("Add user result:" + registerUser);
		return "adminhomepage";
	}
}