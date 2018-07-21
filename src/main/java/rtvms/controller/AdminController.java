package rtvms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rtvms.model.User;
import rtvms.service.UserService;

@Controller
public class AdminController {
	
	private UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String showLogin() {
		return "loginpage";
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
		model.addAttribute("content", "registeruser.jsp");
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
}