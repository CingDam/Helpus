package kr.ac.kopo.helpus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.UserDao;
import kr.ac.kopo.helpus.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	
	@Override
	public boolean login(User user) {
		User item = dao.login(user);
		
		if(item != null) { 
			user.setUserCode(item.getUserCode());
			user.setUserName(item.getUserName());
			user.setUserEmail(item.getUserEmail());
			user.setUserAddress(item.getUserAddress());
			user.setUserPhone(item.getUserPhone());
			user.setUserProfile(item.getUserProfile());
			
			return true;
		} else
			return false;
	}

	@Override
	public boolean checkId(String userId) {
		if(dao.checkId(userId) == 0)
			return true;
		else
			return false;
	}

	@Override
	public void signup(User user) {
		dao.signup(user);
	}

	@Override
	public void userUpdate(User user) {
		dao.userUpdate(user);
	}

	@Override
	public boolean pwCheck(User user) {
		if (dao.pwCheck(user) == 1)
			return true;
		else
			return false;
	}

}
