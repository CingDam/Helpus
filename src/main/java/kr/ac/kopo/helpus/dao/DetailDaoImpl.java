package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.util.Pager;

@Repository
public class DetailDaoImpl implements DetailDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Detail> search(Pager pager) {
		

		return sql.selectList("detail.search", pager);
	}

	@Override
	public void add(Detail item) {
		sql.insert("detail.add", item);		
	}

	@Override
	public Detail item(int coCode) {
		return sql.selectOne("detail.item", coCode);
	}

	@Override
	public void update(Detail item) {
		sql.update("detail.update",item);
		
	}

}
