package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Contract {
	private int contractCode;
	private int userCode;
	private int coCode;
	private int keyCode;
	private String contractContents;
	private Date contractSdate;
	private Date contractEdate;
	private Date contractDay;
	private char contractState;
	private int contractPay;

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

	public Date getContractDay() {
		return contractDay;
	}

	public void setContractDay(Date contractDay) {
		this.contractDay = contractDay;
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

}
