package rtvms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rtvms.dao.TicketDao;
import rtvms.model.Ticket;


public class TicketServiceImpl implements TicketService{
		
	private TicketDao ticketDao;
		
	@Autowired
	public void setTicketDao(TicketDao ticketDao) {
		this.ticketDao = ticketDao;
	}

	public Ticket getTicket(String ticketNumber) {
		Ticket ticket = new Ticket();
		ticket = ticketDao.getTicket(ticketNumber);
		return ticket;
	}
}