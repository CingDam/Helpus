package kr.ac.kopo.helpus.model;

import java.util.Date;
import java.util.List;

public class Detail {
	private int coCode;
	private int	cateCode;
	private int keyCode;
	private String detailContents;
	private Date detailRegDate;
	
	private String coName;
	private float reviewScore;
	private String keyName;
	
	private List<CoKey> coKey;
	
	
	public List<CoKey> getCoKey() {
		return coKey;
	}
	public void setCoKey(List<CoKey> coKey) {
		this.coKey = coKey;
	}
	public String getCoName() {
		return coName;
	}
	public void setCoName(String coName) {
		this.coName = coName;
	}
	public float getReviewScore() {
		return reviewScore;
	}
	public void setReviewScore(float reviewScore) {
		this.reviewScore = reviewScore;
	}
	public String getKeyName() {
		return keyName;
	}
	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}
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
