package com.km.model;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotBlank;

public class RegistrationForm implements Serializable{
	private static final long serialVersionUID = 1L;
	@NotBlank
	private String userName;
	
	@NotBlank
	private String userPassword;
	
	@NotBlank
	private String email;
	
	@NotBlank
	private String userPasswordagain;

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the userPassword
	 */
	public String getUserPassword() {
		return userPassword;
	}

	/**
	 * @param userPassword the userPassword to set
	 */
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the userPasswordagain
	 */
	public String getUserPasswordagain() {
		return userPasswordagain;
	}

	/**
	 * @param userPasswordagain the userPasswordagain to set
	 */
	public void setUserPasswordagain(String userPasswordagain) {
		this.userPasswordagain = userPasswordagain;
	}
}
