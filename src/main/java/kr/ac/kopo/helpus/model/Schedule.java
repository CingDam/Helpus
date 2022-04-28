package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Schedule {
	private int contractCode;
	private String userName;
	private Date contractSdate;

	public int getContractCode() {
		return contractCode;
	}

	public void setContractCode(int contractCode) {
		this.contractCode = contractCode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	private Date contractEdate;
}
