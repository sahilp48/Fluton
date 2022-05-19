package com.model;

import java.io.File;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class Addresident {
	private String title;
	private String firstName;
	private String lastName;
	private String middleName;
	private String maidenName;
	private String namepreference;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate dateOfBirth;
	private MultipartFile picture;
	private String maritialStatus;
	private String residentStatus;
	private String residentId;
	private String gender;
	private String telephone;
	private String mobile;
	private String addressLine1;
	private String addressLine2;
	private String town;
	private String postcode;
	public String getFirstName() {
		return firstName;
	}
	public String getTitle() {
		return title;
	}
	public String getLastName() {
		return lastName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public String getMaidenName() {
		return maidenName;
	}
	public String getNamepreference() {
		return namepreference;
	}
	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public MultipartFile getPicture() {
		return picture;
	}
	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}
	public String getMaritialStatus() {
		return maritialStatus;
	}
	public String getResidentStatus() {
		return residentStatus;
	}
	public String getResidentId() {
		return residentId;
	}
	public String getGender() {
		return gender;
	}
	public String getTelephone() {
		return telephone;
	}
	public String getMobile() {
		return mobile;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public String getTown() {
		return town;
	}
	public String getPostcode() {
		return postcode;
	}
	public String getCountry() {
		return country;
	}
	public String getNhsNumber() {
		return nhsNumber;
	}
	public LocalDate getServiceStartDate() {
		return serviceStartDate;
	}
	public LocalDate getServiceEndDate() {
		return serviceEndDate;
	}
	public String getReligion() {
		return religion;
	}
	public String getEthinicity() {
		return ethinicity;
	}
	public LocalDate getDateOfDeath() {
		return dateOfDeath;
	}
	public String getFundingRoute() {
		return fundingRoute;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public void setMaidenName(String maidenName) {
		this.maidenName = maidenName;
	}
	public void setNamepreference(String namepreference) {
		this.namepreference = namepreference;
	}
	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}
	public void setResidentStatus(String residentStatus) {
		this.residentStatus = residentStatus;
	}
	public void setResidentId(String residentId) {
		this.residentId = residentId;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public void setNhsNumber(String nhsNumber) {
		this.nhsNumber = nhsNumber;
	}
	public void setServiceStartDate(LocalDate serviceStartDate) {
		this.serviceStartDate = serviceStartDate;
	}
	public void setServiceEndDate(LocalDate serviceEndDate) {
		this.serviceEndDate = serviceEndDate;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public void setEthinicity(String ethinicity) {
		this.ethinicity = ethinicity;
	}
	public void setDateOfDeath(LocalDate dateOfDeath) {
		this.dateOfDeath = dateOfDeath;
	}
	public void setFundingRoute(String fundingRoute) {
		this.fundingRoute = fundingRoute;
	}
	public String country;
	public String nhsNumber;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	public LocalDate serviceStartDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	public LocalDate serviceEndDate;
	public String religion;
	public String ethinicity;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	public LocalDate dateOfDeath;
	
	public Addresident(String title, String firstName, String lastName, String middleName, String maidenName,
			String namepreference, LocalDate dateOfBirth, MultipartFile picture, String maritialStatus, String residentStatus,
			String residentId, String gender, String telephone, String mobile, String addressLine1, String addressLine2,
			String town, String postcode, String country, String nhsNumber, LocalDate serviceStartDate,
			LocalDate serviceEndDate, String religion, String ethinicity, LocalDate dateOfDeath, String fundingRoute) {
		super();
		this.title = title;
		this.firstName = firstName;
		this.lastName = lastName;
		this.middleName = middleName;
		this.maidenName = maidenName;
		this.namepreference = namepreference;
		this.dateOfBirth = dateOfBirth;
		this.picture = picture;
		this.maritialStatus = maritialStatus;
		this.residentStatus = residentStatus;
		this.residentId = residentId;
		this.gender = gender;
		this.telephone = telephone;
		this.mobile = mobile;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.town = town;
		this.postcode = postcode;
		this.country = country;
		this.nhsNumber = nhsNumber;
		this.serviceStartDate = serviceStartDate;
		this.serviceEndDate = serviceEndDate;
		this.religion = religion;
		this.ethinicity = ethinicity;
		this.dateOfDeath = dateOfDeath;
		this.fundingRoute = fundingRoute;
	}
	public String fundingRoute;
	public Addresident() {
		
	}
}
