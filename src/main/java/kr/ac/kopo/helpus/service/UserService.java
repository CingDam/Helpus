package kr.ac.kopo.helpus.service;

import kr.ac.kopo.helpus.model.User;

public interface UserService {

	boolean login(User user);

	boolean checkId(String userId);

	void signup(User user);

}
