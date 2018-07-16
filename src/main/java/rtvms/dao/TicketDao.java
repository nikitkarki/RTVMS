package rtvms.dao;


import rtvms.model.Ticket;

public interface TicketDao {
	public Ticket getTicket(String ticketNumber);
}
