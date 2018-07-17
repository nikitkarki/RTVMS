package rtvms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import rtvms.model.Ticket;
import rtvms.model.Violations;
@Repository
public class TicketDaoImpl implements TicketDao{
	private JdbcTemplate jdbcTemplate;
	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public Ticket getTicket(String ticketNumber) {
		Ticket ticket = new Ticket();
		String sql= "select * from user_ticket where ticketNumber = ?";
		try {
			ticket = jdbcTemplate.queryForObject(sql, new Object[] {ticketNumber}, new RowMapper<Ticket>() {
				public Ticket mapRow(ResultSet rs, int rowNum) throws SQLException {
					Ticket tempTicket = new Ticket();
					tempTicket.setTicketId(rs.getInt(1));
					tempTicket.setTicketNumber(rs.getString(2));
					tempTicket.setFirstName(rs.getString(3));
					tempTicket.setLastName(rs.getString(4));
					tempTicket.setDateOfBirth(rs.getString(5));
					tempTicket.setIssueDate(rs.getString(6));
					tempTicket.setLicenseNumber(rs.getString(7));
					tempTicket.setViolations(new Violations());
					return tempTicket;
				}
			});
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ticket;

	}

}
