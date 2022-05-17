package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CategoryDao;
import kr.ac.kopo.helpus.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryDao dao;

	@Override
	public List<Category> list() {
		return dao.list();
	}

	@Override
	public Category item(int cateCode) {
		return dao.item(cateCode);
	}

	@Override
	public void add(Category category) {
		dao.add(category);
	}

}
