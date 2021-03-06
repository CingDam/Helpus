package kr.ac.kopo.helpus.dao;

import java.util.HashMap;

import kr.ac.kopo.helpus.model.User;

public interface UserDao {

	User login(User user);

	int checkId(String userId);

	void signup(User user);

	void userUpdate(User user);

	int pwCheck(User user);

	void setAuthKey(HashMap<String, String> map);

	void emailCheck(HashMap<String, String> map);

	User findUser(User user);

	User findpwUser(User user);

	void updatePw(User user);

	User item(String userId);

	void login_log(int userCode);

}
