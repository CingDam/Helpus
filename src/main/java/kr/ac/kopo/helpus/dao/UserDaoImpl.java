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
	public int checkId(String id) {
		return sql.selectOne("user.checkId", id);
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

	@Override
	public User findUser(User user) {
		
		return sql.selectOne("user.findid_user", user);
	}

	@Override
	public User findpwUser(User user) {

		return sql.selectOne("user.findpw_user",user);

	}

	@Override
	public void updatePw(User user) {
		sql.update("user.update_pw",user);
		
	}

	@Override
	public User item(String userId) {
		
		return sql.selectOne("user.item", userId);
	}

	@Override
	public void login_log(int userCode) {
		sql.update("user.login_log", userCode);
	}

}
