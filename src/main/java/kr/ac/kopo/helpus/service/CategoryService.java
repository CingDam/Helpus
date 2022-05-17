package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Category;

public interface CategoryService {

	List<Category> list();

	Category item(int cateCode);

	void add(Category category);

}