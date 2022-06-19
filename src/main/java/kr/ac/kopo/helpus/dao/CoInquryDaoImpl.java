package kr.ac.kopo.helpus.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Coinqury;

@Repository
public class CoInquryDaoImpl implements CoInquryDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Coinqury item) {
		sql.insert("co_inqury.add", item);
	}

}
