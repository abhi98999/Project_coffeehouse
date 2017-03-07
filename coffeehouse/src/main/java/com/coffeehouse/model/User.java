package com.coffeehouse.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;
	
	//@Column(unique=true)
	@NotEmpty(message="please enter a diffrent username")
	private String userName;
	
	@NotEmpty(message="enter the first name")
	private String firstName;
	
	@NotEmpty(message="enter the last name")
	private String lastName;
	
	
	@NotEmpty(message="enter your email address")
	private String email;

	

	@NotEmpty(message="enter your gender")
	private String gender;
	
	
	@NotEmpty(message="enter the date of birth(DD/MM/YYYY)")
	private String dateOfBirth;
	
	@NotEmpty(message="enter the first name")
	@Size(max=10)
	private String phnNumber;
	
	//@NotEmpty(message="enter the date of birth(DD/MM/YYYY)")
	private String password;
	
//	@NotEmpty(message="enter the date of birth(DD/MM/YYYY)")
	private String confirmPassword;

	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPhnNumber() {
		return phnNumber;
	}

	public void setPhnNumber(String phnNumber) {
		this.phnNumber = phnNumber;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

		
}
