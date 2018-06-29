package rtvms.model;

public class Address {

	private int id;
	private String country;
	private String district;
	private String wardNumber;
	private String city;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getWardNumber() {
		return wardNumber;
	}
	public void setWardNumber(String wardNumber) {
		this.wardNumber = wardNumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	} 
	
}