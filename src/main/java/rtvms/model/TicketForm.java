package rtvms.model;

import java.util.List;

public class TicketForm {
private String firstName;
private String lastName;
private String dateOfBirth;
private String licenseNumber;
private List<Integer> violationList;
public List<Integer> getViolationList() {
	return violationList;
}
public void setViolationList(List<Integer> violationList) {
	this.violationList = violationList;
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
public String getLicenseNumber() {
	return licenseNumber;
}
public void setLicenseNumber(String licenseNumber) {
	this.licenseNumber = licenseNumber;
}
@Override
public String toString() {
	return "TicketForm [firstName=" + firstName + ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth
			+ ", licenseNumber=" + licenseNumber + ", violationList=" + violationList + "]";
}
}
