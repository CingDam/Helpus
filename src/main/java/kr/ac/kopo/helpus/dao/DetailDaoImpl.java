package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Detail;

@Repository
public class DetailDaoImpl implements DetailDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Detail> search(String keyword) {

		return sql.selectList("detail.search", keyword);
	}

}
