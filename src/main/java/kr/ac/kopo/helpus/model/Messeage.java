package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Messeage {
	private int messeageCode;
	private int roomId;
	private int adminCode;
	private int userCode;
	private int coCode;
	private String messeageContents;
	private Date messeageDate;
	private char messeageRead;

	public int getMesseageCode() {
		return messeageCode;
	}

	public void setMesseageCode(int messeageCode) {
		this.messeageCode = messeageCode;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getAdminCode() {
		return adminCode;
	}

	public void setAdminCode(int adminCode) {
		this.adminCode = adminCode;
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

	public String getMesseageContents() {
		return messeageContents;
	}

	public void setMesseageContents(String messeageContents) {
		this.messeageContents = messeageContents;
	}

	public Date getMesseageDate() {
		return messeageDate;
	}

	public void setMesseageDate(Date messeageDate) {
		this.messeageDate = messeageDate;
	}

	public char getMesseageRead() {
		return messeageRead;
	}

	public void setMesseageRead(char messeageRead) {
		this.messeageRead = messeageRead;
	}

}
