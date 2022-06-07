package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Keyword;

public interface KeywordDao {

	List<Keyword> list(int cateCode);

	List<Integer> keyList(int coCode);

	List<Keyword> mostList();
	
}
