package kr.ac.kopo.helpus.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.CoKey;

@Repository
public class CokeyDaoImpl implements CokeyDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(CoKey coKey) {
		sql.insert("cokey.add",coKey);
	}

}
