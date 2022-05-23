package kr.ac.kopo.helpus.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.DetailImage;

@Repository
public class DetailImageDaoImpl implements DetailImageDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(DetailImage image) {
		sql.insert("detail_image.add", image);
	}

}
