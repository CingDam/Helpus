package kr.ac.kopo.helpus.model;

import java.util.Date;

public class Message {
	private int messageCode;
	private int roomCode;
	private int adminCode;
	private int userCode;
	private int coCode;
	private String messageContents;
	private Date messageDate;
	private char messageRead;
	private char sendVal;

	private String userName;
	private String coName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public int getMessageCode() {
		return messageCode;
	}

	public void setMessageCode(int messageCode) {
		this.messageCode = messageCode;
	}

	public int getRoomCode() {
		return roomCode;
	}

	public void setRoomCode(int roomCode) {
		this.roomCode = roomCode;
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

	public String getMessageContents() {
		return messageContents;
	}

	public void setMessageContents(String messageContents) {
		this.messageContents = messageContents;
	}

	public Date getMessageDate() {
		return messageDate;
	}

	public void setMessageDate(Date messageDate) {
		this.messageDate = messageDate;
	}

	public char getMessageRead() {
		return messageRead;
	}

	public void setMessageRead(char messageRead) {
		this.messageRead = messageRead;
	}

	public char getSendVal() {
		return sendVal;
	}

	public void setSendVal(char sendVal) {
		this.sendVal = sendVal;
	}

}
