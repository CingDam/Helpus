package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Detail;

public interface DetailDao {

	List<Detail> search(String keyword);

}