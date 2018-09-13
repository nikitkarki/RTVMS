package rtvms.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.mapping.Array;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rtvms.model.LookUpForm;
import rtvms.model.TicketForm;
import rtvms.model.UserCredential;
import rtvms.model.Violations;
import rtvms.service.TicketService;
import rtvms.service.UserService;

@Controller
public class UserController {
	private UserService userService;
	private TicketService ticketService;
	@Autowired
	public void setTicketService(TicketService ticketService) {
		this.ticketService = ticketService;
	}
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
	@RequestMapping(value="/user/issueticket", method = RequestMethod.GET)
	public String showTicket(Model model) {
		TicketForm myTicketForm= new TicketForm();
		model.addAttribute("myTicketForm",myTicketForm);
		model.addAttribute("content","issueticket.jsp");
		List<Violations> vList = new ArrayList<Violations>();
		vList = ticketService.getViolationList();
		for(Violations v: vList) {
			System.out.println(v.toString());
		}
		model.addAttribute("violationList", vList);
		
		return "userhome";
	}
	@RequestMapping(value="/user/issueticket", method = RequestMethod.POST)
	public String issueTicket(Model model, HttpServletRequest request, @ModelAttribute("myTicketForm") TicketForm ticketForm) {
		TicketForm myTicketForm= new TicketForm();
		model.addAttribute("myTicketForm",myTicketForm);
		myTicketForm = ticketForm;
		String intlist[] = request.getParameterValues("violation");
		List<Integer> violationList = new ArrayList<Integer>();
		for(int i=0; i<intlist.length; i++) {
			violationList.add(Integer.parseInt(intlist[i]));
		}
		myTicketForm.setViolationList(violationList);
		
		//TODO ticket issue logic here
		boolean ticketIssued = ticketService.issueTicket(myTicketForm);
		if(ticketIssued) {
			model.addAttribute("lookupmessage","Ticket has been issued");
		} else {
			model.addAttribute("lookupmessage","There was a problem issuing the ticket, please try again");
		}
		model.addAttribute("content","issueticket.jsp");
		return "userhome";
	}

}