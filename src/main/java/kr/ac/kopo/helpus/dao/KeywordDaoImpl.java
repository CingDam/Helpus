package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Keyword;

@Repository
public class KeywordDaoImpl implements KeywordDao {
	@Autowired
	SqlSession sql;

	@Override
	public List<Keyword> list(int cateCode) {
		return sql.selectList("keyword.list",cateCode);
	}

	@Override
	public List<Integer> keyList(int coCode) {
		// TODO Auto-generated method stub
		return sql.selectList("keyword.keyList",coCode);
	}
	
	
}
