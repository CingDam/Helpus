package kr.ac.kopo.helpus.model;

public class Calendar {
	private int calendarCode;
	private int contractCode;
	private int coCode;
	private int userCode;
	private String borderColor;
	private String backgroundColor;
	private String textColor;

	private String start;
	private String end;
	private String title;
	private String userName;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public int getCalendarCode() {
		return calendarCode;
	}

	public void setCalendarCode(int calendarCode) {
		this.calendarCode = calendarCode;
	}

	public int getContractCode() {
		return contractCode;
	}

	public void setContractCode(int contractCode) {
		this.contractCode = contractCode;
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

	public String getBorderColor() {
		return borderColor;
	}

	public void setBorderColor(String borderColor) {
		this.borderColor = borderColor;
	}

	public String getBackgroundColor() {
		return backgroundColor;
	}

	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}

	public String getTextColor() {
		return textColor;
	}

	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
