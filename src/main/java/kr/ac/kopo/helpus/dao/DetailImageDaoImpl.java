package kr.ac.kopo.helpus.dao;

import java.util.List;

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

	@Override
	public List<DetailImage> list(int coCode) {
		return sql.selectList("detail_image.list", coCode);
	}

	@Override
	public void delete(int image_code) {
		sql.delete("detail_image.delete", image_code);
	}

}
