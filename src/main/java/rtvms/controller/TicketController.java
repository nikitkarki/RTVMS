package rtvms.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rtvms.model.Ticket;
import rtvms.service.TicketService;

@Controller
@RequestMapping("/tickets")
public class TicketController {
	private TicketService ticketService;
	@Autowired
	public void setTicketService(TicketService ticketService) {
		this.ticketService = ticketService;
	}

	@RequestMapping(value="/lookupticket", method = RequestMethod.GET)
	public String lookupTicket(Model model) {
		model.addAttribute("content","lookupticket.jsp");
		return "home";
	}
	
	@RequestMapping(value="/payticket", method = RequestMethod.GET)
	public String payTicket(Model model) {
		model.addAttribute("content","payticket.jsp");
		return "home";
	}
	@RequestMapping(value="/lookupticket", method = RequestMethod.POST)
	public String getTicket(Model model, HttpServletRequest request) {
		String licenceNumber = request.getParameter("licenceNumber");
		List<Ticket> tickets = ticketService.getTicket(licenceNumber);
		model.addAttribute("searchedTicket",tickets);
		model.addAttribute("content", "lookupticket.jsp");
		if(tickets.size() < 1) {
			model.addAttribute("ticketMessage", "Ticket Not Found");
		}
		return "home";
	}
	
	@RequestMapping(value="/payticket", method = RequestMethod.POST)
	public String getTickets(Model model, HttpServletRequest request) {
		String licenceNumber = request.getParameter("licenseNumber");
		List<Ticket> tickets = ticketService.getTicket(licenceNumber);
		model.addAttribute("searchedTicket",tickets);
		model.addAttribute("content", "payticket.jsp");
		if(tickets.size() < 1) {
			model.addAttribute("ticketMessage", "Ticket Not Found");
		}
		return "home";
	}
}
;