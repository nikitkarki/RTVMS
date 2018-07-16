package rtvms.model;

public class Violations {
	private int violationId;
	private String violationCharge;
	private String violationDescription;
	
	public int getViolationId() {
		return violationId;
	}
	public void setViolationId(int violationId) {
		this.violationId = violationId;
	}
	public String getViolationCharge() {
		return violationCharge;
	}
	public void setViolationCharge(String violationCharge) {
		this.violationCharge = violationCharge;
	}
	public String getViolationDescription() {
		return violationDescription;
	}
	public void setViolationDescription(String violationDescription) {
		this.violationDescription = violationDescription;
	}
}
