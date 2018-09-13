package rtvms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import rtvms.model.Ticket;
import rtvms.model.TicketForm;
import rtvms.model.Violations;
@Repository
public class TicketDaoImpl implements TicketDao{
	private JdbcTemplate jdbcTemplate;
	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public List<Ticket> getTicket(String licenceNumber) {
		List<Ticket> ticketList = new ArrayList<Ticket>();
		String sql= "select * from user_ticket where licenseNumber = ?";
		try {
			ticketList = jdbcTemplate.query(sql, new Object[] {licenceNumber}, new RowMapper<Ticket>() {
				public Ticket mapRow(ResultSet rs, int rowNum) throws SQLException {
					Ticket tempTicket = new Ticket();
					tempTicket.setTicketId(rs.getInt(1));
					tempTicket.setFirstName(rs.getString(2));
					tempTicket.setLastName(rs.getString(3));
					tempTicket.setDateOfBirth(rs.getString(4));
					tempTicket.setIssueDate(rs.getString(5));
					tempTicket.setLicenseNumber(rs.getString(6));
					tempTicket.setViolation(rs.getInt(7));
					return tempTicket;
				}
			});
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ticketList;

	}
	public List<Violations> getAllViolation() {
		List<Violations> violationList = new ArrayList<Violations>();
		String sql = "select * from rtvms.user_violations";
		try {
			violationList = jdbcTemplate.query(sql, new Object[] {}, new RowMapper<Violations>() {
				public Violations mapRow(ResultSet rs, int rowNum) throws SQLException {
					Violations tempViol = new Violations();
					tempViol.setViolationId(rs.getInt(1));
					tempViol.setViolation_type(rs.getString(2));
					tempViol.setViolationCharge(rs.getString(3));
					tempViol.setViolationDescription(rs.getString(4));
					return tempViol;
				}
			});
		} catch(Exception e) {
			e.printStackTrace();
		}
		return violationList;
	}
	public boolean issueTicket(TicketForm ticketForm) {
		String insertSql = "INSERT INTO user_ticket (`firstName`, `lastName`, `dateOfBirth`, `issueDate`, `licenseNumber`, `violation`) VALUES (?,?,?,?,?,?)";
		try {
			System.out.println(ticketForm.toString());
			List<Integer> violationIds = ticketForm.getViolationList();
			for(Integer v_id: violationIds) {
				jdbcTemplate.update(insertSql, new Object[] { ticketForm.getFirstName(), ticketForm.getLastName(), ticketForm.getDateOfBirth(),	LocalDate.now(), ticketForm.getLicenseNumber(), v_id});
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
