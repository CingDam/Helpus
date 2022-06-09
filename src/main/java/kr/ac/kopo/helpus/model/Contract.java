package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Contract {
	private int contractCode;
	private int userCode;
	private int coCode;
	private int keyCode;
	private String contractContents;
	private String contractAddress;
	private Date contractDay;
	private Date contractSdate;
	private Date contractEdate;
	private Date contractPayday;
	private int contractPay;
	private char contractState;
	
	private String userName;
	private String userPhone;
	
	private String coName;
	private String coPhone;
	private String coAddress;
	
	private String keyName;

	public int getContractCode() {
		return contractCode;
	}

	public void setContractCode(int contractCode) {
		this.contractCode = contractCode;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public int getCoCode() {
		return coCode;
	}

	public void setCoCode(int coCode) {
		this.coCode = coCode;
	}

	public int getKeyCode() {
		return keyCode;
	}

	public void setKeyCode(int keyCode) {
		this.keyCode = keyCode;
	}

	public String getContractContents() {
		return contractContents;
	}

	public void setContractContents(String contractContents) {
		this.contractContents = contractContents;
	}

	public String getContractAddress() {
		return contractAddress;
	}

	public void setContractAddress(String contractAddress) {
		this.contractAddress = contractAddress;
	}

	public Date getContractSdate() {
		return contractSdate;
	}

	public void setContractSdate(Date contractSdate) {
		this.contractSdate = contractSdate;
	}

	public Date getContractEdate() {
		return contractEdate;
	}

	public void setContractEdate(Date contractEdate) {
		this.contractEdate = contractEdate;
	}

	public char getContractState() {
		return contractState;
	}

	public void setContractState(char contractState) {
		this.contractState = contractState;
	}

	public int getContractPay() {
		return contractPay;
	}

	public void setContractPay(int contractPay) {
		this.contractPay = contractPay;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	public Date getContractDay() {
		return contractDay;
	}

	public void setContractDay(Date contractDay) {
		this.contractDay = contractDay;
	}

	public Date getContractPayday() {
		return contractPayday;
	}

	public void setContractPayday(Date contractPayday) {
		this.contractPayday = contractPayday;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getCoPhone() {
		return coPhone;
	}

	public void setCoPhone(String coPhone) {
		this.coPhone = coPhone;
	}

	public String getCoAddress() {
		return coAddress;
	}

	public void setCoAddress(String coAddress) {
		this.coAddress = coAddress;
	}
	
	
	
	

}
