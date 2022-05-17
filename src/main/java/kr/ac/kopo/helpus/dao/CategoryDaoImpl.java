package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Category> list() {
	
		return sql.selectList("category.list");
	}

	@Override
	public Category item(int cateCode) {
		return sql.selectOne("category.item", cateCode);
	}

	@Override
	public void add(Category category) {
		sql.insert("category.add", category);
	}

}
