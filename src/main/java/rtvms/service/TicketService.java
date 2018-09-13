package rtvms.service;

import java.util.List;

import rtvms.model.Ticket;
import rtvms.model.TicketForm;
import rtvms.model.Violations;

public interface TicketService {
	public List<Ticket> getTicket(String licenceNumber);
	public List<Violations> getViolationList();
	public boolean issueTicket(TicketForm ticketForm);
}
