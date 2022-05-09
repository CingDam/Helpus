package kr.ac.kopo.helpus.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public int login(User user) {
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

}
