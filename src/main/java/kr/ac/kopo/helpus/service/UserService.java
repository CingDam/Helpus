package kr.ac.kopo.helpus.service;

import java.util.HashMap;

import kr.ac.kopo.helpus.model.User;

public interface UserService {

	boolean login(User user);

	boolean checkId(String userId);

	void signup(User user);

	void userUpdate(User user);

	boolean pwCheck(User user);

	void setAuthKey(HashMap<String, String> map);

	void emailCheck(HashMap<String, String> map);

	User findUser(User user);

	boolean findPwUser(User user);

	void updatePwUser(User user);


}
