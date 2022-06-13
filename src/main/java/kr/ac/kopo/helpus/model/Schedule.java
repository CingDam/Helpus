package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Schedule {
	private int contractCode;
	private String userName;
	private Date contractSdate;
	private int userCode;
	private int coCode;
	private String start;
	private String end;
	private String keyName;

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

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

	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public int getCoCode() {
		return coCode;
	}

	public void setCoCode(int coCode) {
		this.coCode = coCode;
	}

	private Date contractEdate;
}
