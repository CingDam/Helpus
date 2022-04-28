package kr.ac.kopo.helpus.model;

import java.util.Date;

public class User {
	private int userCode;
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private String userAddress;
	private String userPhone;
	private char userAuth;
	private Date userSignup;
	private Date userLogin;
	private String userProfile;
	private int loginCode;

	public int getLoginCode() {
		return loginCode;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public char getUserAuth() {
		return userAuth;
	}

	public void setUserAuth(char userAuth) {
		this.userAuth = userAuth;
	}

	public Date getUserSignup() {
		return userSignup;
	}

	public void setUserSignup(Date userSignup) {
		this.userSignup = userSignup;
	}

	public Date getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(Date userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}
}
