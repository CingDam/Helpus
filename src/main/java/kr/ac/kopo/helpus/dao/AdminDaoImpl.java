package kr.ac.kopo.helpus.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	SqlSession sql;


}
