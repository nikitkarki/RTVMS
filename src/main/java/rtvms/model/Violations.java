package rtvms.model;

public class Violations {
	private int violationId;
	private String violation_type;
	private String violationCharge;
	private String violationDescription;
	
	public int getViolationId() {
		return violationId;
	}
	public void setViolationId(int violationId) {
		this.violationId = violationId;
	}
	public String getViolation_type() {
		return violation_type;
	}
	public void setViolation_type(String violation_type) {
		this.violation_type = violation_type;
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
