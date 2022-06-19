package kr.ac.kopo.helpus.model;

public class Coinqury {
	private int coInquryCode;
	private int coCode;
	private int userCode;
	private String inquryRegDate;

	
	private String userId;
	private String userName;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getCoInquryCode() {
		return coInquryCode;
	}

	public void setCoInquryCode(int coInquryCode) {
		this.coInquryCode = coInquryCode;
	}

	public int getCoCode() {
		return coCode;
	}

	public void setCoCode(int coCode) {
		this.coCode = coCode;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public String getInquryRegDate() {
		return inquryRegDate;
	}

	public void setInquryRegDate(String inquryRegDate) {
		this.inquryRegDate = inquryRegDate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
