package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.CoKey;

@Repository
public class CoKeywordDaoImpl implements CoKeywordDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<CoKey> list(int coCode) {
		return sql.selectList("cokeyword.list", coCode);
	}

	

}
