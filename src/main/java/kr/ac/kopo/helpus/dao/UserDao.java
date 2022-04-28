package kr.ac.kopo.helpus.dao;

import kr.ac.kopo.helpus.model.User;

public interface UserDao {

	int login(User user);

	int checkId(String userId);

	void signup(User user);

}
