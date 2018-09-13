package rtvms.dao;


import java.util.List;

import rtvms.model.Ticket;
import rtvms.model.TicketForm;
import rtvms.model.Violations;

public interface TicketDao {
	public List<Ticket> getTicket(String licenceNumber);
	public List<Violations> getAllViolation();
	public boolean issueTicket(TicketForm ticketForm);
}
