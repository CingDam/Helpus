package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.CoKey;

public interface CoKeywordDao {

	List<CoKey> list(int coCode);

	

}
