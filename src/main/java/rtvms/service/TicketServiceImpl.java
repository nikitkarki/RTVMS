package rtvms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import rtvms.dao.TicketDao;
import rtvms.model.Ticket;
import rtvms.model.TicketForm;
import rtvms.model.Violations;


public class TicketServiceImpl implements TicketService{
		
	private TicketDao ticketDao;
		
	@Autowired
	public void setTicketDao(TicketDao ticketDao) {
		this.ticketDao = ticketDao;
	}

	public List<Ticket> getTicket(String licenceNumber) {
		return ticketDao.getTicket(licenceNumber);
	}

	public List<Violations> getViolationList() {
		return ticketDao.getAllViolation();
	}

	public boolean issueTicket(TicketForm ticketForm) {
		return ticketDao.issueTicket(ticketForm);
	}

}