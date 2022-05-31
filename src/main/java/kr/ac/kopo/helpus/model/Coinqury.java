package kr.ac.kopo.helpus.model;

public class Coinqury {
	private int coInquryCode;
	private int coCode;
	private int userCode;
	private String inquryName;
	private String inquryContents;
	private String inquryRegDate;
	
	private String userId;
	private String keyName;
	

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
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

	public String getInquryName() {
		return inquryName;
	}

	public void setInquryName(String inquryName) {
		this.inquryName = inquryName;
	}

	public String getInquryContents() {
		return inquryContents;
	}

	public void setInquryContents(String inquryContents) {
		this.inquryContents = inquryContents;
	}

	public String getInquryRegDate() {
		return inquryRegDate;
	}

	public void setInquryRegDate(String inquryRegDate) {
		this.inquryRegDate = inquryRegDate;
	}
}
