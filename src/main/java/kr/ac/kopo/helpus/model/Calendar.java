package kr.ac.kopo.helpus.model;

public class Calendar {
	private int calendarCode;
	private int contractCode;
	private int coCode;
	private int userCode;
	private String bgColor;
	private String bdColor;

	private String start;
	private String end;
	
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

	public String getBgColor() {
		return bgColor;
	}

	public void setBgColor(String bgColor) {
		this.bgColor = bgColor;
	}

	public String getBdColor() {
		return bdColor;
	}

	public void setBdColor(String bdColor) {
		this.bdColor = bdColor;
	}

}
