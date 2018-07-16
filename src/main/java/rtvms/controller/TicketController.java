package rtvms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rtvms.model.Ticket;

@Controller
@RequestMapping("/tickets")
public class TicketController {
	
	@RequestMapping(value="/lookupticket", method = RequestMethod.GET)
	public String lookupTicket(Model model) {
		model.addAttribute("content","LookUpTicket.jsp");
		return "home";
	}
	
	@RequestMapping(value="/payticket", method = RequestMethod.GET)
	public String payTicket(Model model) {
		model.addAttribute("content","LookUpTicket.jsp");
		return "home";
	}
	
}
;