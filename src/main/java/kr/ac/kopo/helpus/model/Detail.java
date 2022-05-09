package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Detail {
	private int coCode;
	private int cateCode;
	private int keyCode;
	private String detailContents;
	private Date detailRegDate;


	public int getCoCode() {
		return coCode;
	}

	public void setCoCode(int coCode) {
		this.coCode = coCode;
	}

	public int getCateCode() {
		return cateCode;
	}

	public void setCateCode(int cateCode) {
		this.cateCode = cateCode;
	}

	public int getKeyCode() {
		return keyCode;
	}

	public void setKeyCode(int keyCode) {
		this.keyCode = keyCode;
	}

	public String getDetailContents() {
		return detailContents;
	}

	public void setDetailContents(String detailContents) {
		this.detailContents = detailContents;
	}

	public Date getDetailRegDate() {
		return detailRegDate;
	}

	public void setDetailRegDate(Date detailRegDate) {
		this.detailRegDate = detailRegDate;
	}

}
