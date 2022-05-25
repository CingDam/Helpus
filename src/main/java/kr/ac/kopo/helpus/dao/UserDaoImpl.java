package kr.ac.kopo.helpus.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public User login(User user) {
		return sql.selectOne("user.login", user);
	}

	@Override
	public int checkId(String userId) {
		System.out.println(userId);
		return sql.selectOne("user.checkId", userId);
	}

	@Override
	public void signup(User user) {
		sql.insert("user.signup", user);
	}

	@Override
	public void userUpdate(User user) {
		sql.update("user.userUpdate", user);
	}

	@Override
	public int pwCheck(User user) {
		return sql.selectOne("user.pwCheck", user);
	}

	@Override
	public void setAuthKey(HashMap<String, String> map) {
		sql.update("user.setAuthKey", map);
	}

	@Override
	public void emailCheck(HashMap<String, String> map) {
		sql.update("user.emailCheck", map);
	}

}
