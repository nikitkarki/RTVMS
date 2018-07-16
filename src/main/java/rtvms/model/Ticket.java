package rtvms.model;

public class Ticket {
	
	private int ticketId;
	private String ticketNumber;
	private String firstName;
	private String lastName;
	private String dateOfBirth;
	private String issueDate;
	private String licenseNumber;
	private Violations violations;
	
	public Ticket() {
		super();
	}
	public int getTicketId() {
		return ticketId;
	}
	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}
	public String getTicketNumber() {
		return ticketNumber;
	}
	public void setTicketNumber(String ticketNumber) {
		this.ticketNumber = ticketNumber;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public String getLicenseNumber() {
		return licenseNumber;
	}
	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}
	public Violations getViolations() {
		return violations;
	}
	public void setViolations(Violations violations) {
		this.violations = violations;
	}
	@Override
	public String toString() {
		return "Ticket [ticketId=" + ticketId + ", ticketNumber=" + ticketNumber + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth + ", issueDate=" + issueDate
				+ ", licenseNumber=" + licenseNumber + ", violation=" + violations + "]";
	}
}
