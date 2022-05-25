package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Company {
	private int coCode;
	private String coId;
	private String coPw;
	private String coName;
	private String coEmail;
	private String coPhone;
	private int coRegNum;
	private String coAddress;
	private char coAuth;
	private Date coSignup;
	private Date coLogin;
	private String coProfile;

	public String getCoProfile() {
		return coProfile;
	}

	public void setCoProfile(String coProfile) {
		this.coProfile = coProfile;
	}

	public int getCoCode() {
		return coCode;
	}

	public void setCoCode(int coCode) {
		this.coCode = coCode;
	}

	public String getCoId() {
		return coId;
	}

	public void setCoId(String coId) {
		this.coId = coId;
	}

	public String getCoPw() {
		return coPw;
	}

	public void setCoPw(String coPw) {
		this.coPw = coPw;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getCoEmail() {
		return coEmail;
	}

	public void setCoEmail(String coEmail) {
		this.coEmail = coEmail;
	}

	public String getCoPhone() {
		return coPhone;
	}

	public void setCoPhone(String coPhone) {
		this.coPhone = coPhone;
	}

	public int getCoRegNum() {
		return coRegNum;
	}

	public void setCoRegNum(int coRegNum) {
		this.coRegNum = coRegNum;
	}

	public String getCoAddress() {
		return coAddress;
	}

	public void setCoAddress(String coAddress) {
		this.coAddress = coAddress;
	}

	public char getCoAuth() {
		return coAuth;
	}

	public void setCoAuth(char coAuth) {
		this.coAuth = coAuth;
	}

	public Date getCoSignup() {
		return coSignup;
	}

	public void setCoSignup(Date coSignup) {
		this.coSignup = coSignup;
	}

	public Date getCoLogin() {
		return coLogin;
	}

	public void setCoLogin(Date coLogin) {
		this.coLogin = coLogin;
	}

}
